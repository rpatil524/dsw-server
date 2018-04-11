module Model.Event.Question.DeleteQuestionEvent where

import Control.Lens
import Data.UUID
import GHC.Generics

import LensesConfig
import Model.Common
import Model.KnowledgeModel.KnowledgeModel

data DeleteQuestionEvent = DeleteQuestionEvent
  { _dqUuid :: UUID
  , _dqKmUuid :: UUID
  , _dqChapterUuid :: UUID
  , _dqQuestionUuid :: UUID
  } deriving (Show, Eq, Generic)

makeLenses ''DeleteQuestionEvent

instance SameUuid DeleteQuestionEvent Chapter where
  equalsUuid e ch = ch ^. uuid == e ^. dqChapterUuid

instance SameUuid DeleteQuestionEvent Question where
  equalsUuid e q = q ^. uuid == e ^. dqQuestionUuid
