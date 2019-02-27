module Api.Resource.Questionnaire.QuestionnaireJM where

import Control.Monad
import Data.Aeson

import Api.Resource.Questionnaire.QuestionnaireDTO

instance FromJSON QuestionnaireDTO where
  parseJSON (Object o) = do
    _questionnaireDTOUuid <- o .: "uuid"
    _questionnaireDTOName <- o .: "name"
    _questionnaireDTOLevel <- o .: "level"
    _questionnaireDTOPrivate <- o .: "private"
    _questionnaireDTOPackage <- o .: "package"
    _questionnaireDTOOwnerUuid <- o .: "ownerUuid"
    _questionnaireDTOCreatedAt <- o .: "createdAt"
    _questionnaireDTOUpdatedAt <- o .: "updatedAt"
    return QuestionnaireDTO {..}
  parseJSON _ = mzero

instance ToJSON QuestionnaireDTO where
  toJSON QuestionnaireDTO {..} =
    object
      [ "uuid" .= _questionnaireDTOUuid
      , "name" .= _questionnaireDTOName
      , "level" .= _questionnaireDTOLevel
      , "private" .= _questionnaireDTOPrivate
      , "package" .= _questionnaireDTOPackage
      , "ownerUuid" .= _questionnaireDTOOwnerUuid
      , "createdAt" .= _questionnaireDTOCreatedAt
      , "updatedAt" .= _questionnaireDTOUpdatedAt
      ]