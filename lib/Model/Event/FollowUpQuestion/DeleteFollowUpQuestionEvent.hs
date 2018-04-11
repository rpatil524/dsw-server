module Model.Event.FollowUpQuestion.DeleteFollowUpQuestionEvent where

import Control.Lens
import Data.UUID
import GHC.Generics

import LensesConfig
import Model.Common
import Model.KnowledgeModel.KnowledgeModel

data DeleteFollowUpQuestionEvent = DeleteFollowUpQuestionEvent
  { _dfuqUuid :: UUID
  , _dfuqKmUuid :: UUID
  , _dfuqChapterUuid :: UUID
  , _dfuqAnswerUuid :: UUID
  , _dfuqQuestionUuid :: UUID
  } deriving (Show, Eq, Generic)

makeLenses ''DeleteFollowUpQuestionEvent

instance SameUuid DeleteFollowUpQuestionEvent Chapter where
  equalsUuid e ch = ch ^. uuid == e ^. dfuqChapterUuid

instance SameUuid DeleteFollowUpQuestionEvent Question where
  equalsUuid e q = q ^. uuid == e ^. dfuqQuestionUuid

instance SameUuid DeleteFollowUpQuestionEvent Answer where
  equalsUuid e ans = ans ^. uuid == e ^. dfuqAnswerUuid
