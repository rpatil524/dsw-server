module Service.Report.ReportGenerator where

import Control.Lens ((^.))
import Control.Monad.Reader (asks, liftIO)
import Data.Time

import LensesConfig
import Model.Context.AppContext
import Model.KnowledgeModel.KnowledgeModel
import Model.KnowledgeModel.KnowledgeModelAccessors
import Model.Questionnaire.QuestionnaireReply
import Model.Report.Report
import Service.Report.Evaluator.Indication
import Service.Report.Evaluator.Metric
import Util.Uuid

computeChapterReport :: Bool -> Int -> [Metric] -> KnowledgeModel -> [Reply] -> Chapter -> ChapterReport
computeChapterReport levelsEnabled requiredLevel metrics km replies ch =
  ChapterReport
  { _chapterReportChapterUuid = ch ^. uuid
  , _chapterReportIndications = computeIndications levelsEnabled requiredLevel km replies ch
  , _chapterReportMetrics = computeMetrics metrics km replies ch
  }

generateReport :: Int -> [Metric] -> KnowledgeModel -> [Reply] -> AppContextM Report
generateReport requiredLevel metrics km replies = do
  rUuid <- liftIO generateUuid
  now <- liftIO getCurrentTime
  dswConfig <- asks _appContextAppConfig
  let _levelsEnabled = dswConfig ^. general . levelsEnabled
  return
    Report
    { _reportUuid = rUuid
    , _reportChapterReports =
        (computeChapterReport _levelsEnabled requiredLevel metrics km replies) <$> (getChaptersForKmUuid km)
    , _reportCreatedAt = now
    , _reportUpdatedAt = now
    }
