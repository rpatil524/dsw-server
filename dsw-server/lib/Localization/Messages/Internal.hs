module Localization.Messages.Internal where

-- --------------------------------------
-- DATABASE
-- --------------------------------------
_ERROR_DATABASE__DESERIALIZATION_FAILED = "Problem with deserialization of entity from database"

-- --------------------------------------
-- INTEGRATION
-- --------------------------------------
-- Common
_ERROR_INTEGRATION_COMMON__INT_SERVICE_RETURNED_ERROR statusCode =
  "Integration Service returned an error (statusCode: " ++ (show statusCode) ++ ")"

-- Response Mappers (Response deserialization problem = RDF)
_ERROR_INTEGRATION_COMMON__RDF_UNABLE_TO_DESERIALIZE_RESPONSE_BODY a =
  "Problem with a response deserialization (unable to deserialize a response body: " ++ a ++ ")"

_ERROR_INTEGRATION_COMMON__RDF_UNABLE_TO_GET_RESPONSE_BODY =
  "Problem with a response deserialization (unable to get a response body)"

_ERROR_INTEGRATION_COMMON__RDF_UNABLE_TO_EXTRACT_NESTED_FIELDS fieldNames =
  "Problem with a response deserialization (unable to extract nested field '" ++ show fieldNames ++ "')"

_ERROR_INTEGRATION_COMMON__RDF_UNABLE_TO_EXTRACT_STRING_FIELD fieldName =
  "Problem with a response deserialization (unable to extract string field: '" ++ fieldName ++ "')"

_ERROR_INTEGRATION_COMMON__RDF_FIELD_IS_NOT_ARRAY = "Problem with a response deserialization (field is not an array)"

-- --------------------------------------
-- SERVICE
-- --------------------------------------
-- Document
_ERROR_SERVICE_DOCUMENT__TRANSFORMATION_FAILED err = "Couldn't transform to desired document format: " ++ err

_ERROR_SERVICE_DOCUMENT__UKNOWN_FORMAT = "Unprocessable DMP format"

-- File
_ERROR_SERVICE_FILE__CANT_READ_JSON filename =
  "Server was unable to decode a file ('" ++ filename ++ "') to a JSON object"

-- Feedback
_ERROR_SERVICE_FEEDBACK__REQUEST_FAILED serviceName endpoint =
  "Request to external API failed (service: '" ++ serviceName ++ "', endpoint: '" ++ endpoint ++ "')"

-- Mail
_ERROR_SERVICE_MAIL__AUTH_ERROR_MESSAGE = "Could not authenticate with SMTP server"

_ERROR_SERVICE_MAIL__EMAIL_SENT_OK recipients = "Email has been sent to: " ++ unwords recipients

_ERROR_SERVICE_MAIL__EMAIL_SENT_FAIL errorMessage = "Failed to send email: " ++ errorMessage

_ERROR_SERVICE_MAIL__FILE_LOAD_FAIL errorMessage = "Error occured while loading file: " ++ errorMessage

_ERROR_SERVICE_MAIL__MISSING_HTML mailName = "Could not load HTML template for: " ++ mailName

_ERROR_SERVICE_MAIL__MISSING_PLAIN mailName = "Could not load plain text template for: " ++ mailName

_ERROR_SERVICE_MAIL__MISSING_HTML_PLAIN mailName = "Could not load HTML nor plain text template for: " ++ mailName

_ERROR_SERVICE_MAIL__TRIED_SEND_TO_NOONE = "Tried to send email to no recipients"

_MESSAGE_SERVICE_MAIL__APP_TITLE = "Data Stewardship Wizard"

-- Migration / Metamodel
_ERROR_SERVICE_MIGRATION_METAMODEL__FAILED_TO_MIGRATE_COLLECTION collection = "Failed to migrate '" ++ collection ++ "'"

_ERROR_SERVICE_MIGRATION_METAMODEL__FAILED_CONVERT_TO_BSON entityName =
  "Failed to convert entity ('" ++ entityName ++ "') to BSON"

-- Template
_ERROR_SERVICE_TEMPLATE__LOADING_TEMPLATE_FAILED reason = "Couldn't load a template from file (" ++ reason ++ ")"

_ERROR_SERVICE_TEMPLATE__NO_TEMPLATES_IN_SYSTEM = "There are no specified templates in the system."

-- Token
_ERROR_SERVICE_TOKEN__UNABLE_TO_GET_TOKEN = "Unable to get token"

_ERROR_SERVICE_TOKEN__UNABLE_TO_DECODE_AND_VERIFY_TOKEN = "Unable to decode and verify token"

_ERROR_SERVICE_TOKEN__UNABLE_TO_GET_TOKEN_VERSION = "Unable to get token version from token"

_ERROR_SERVICE_TOKEN__OBSOLETE_TOKEN_VERSION = "Obsolete token version"

_ERROR_SERVICE_TOKEN__UNABLE_TO_GET_TOKEN_EXPIRATION = "Unable to get token expiration from token"

_ERROR_SERVICE_TOKEN__TOKEN_IS_EXPIRED = "Token is expired"

_ERROR_SERVICE_TOKEN__UNKNOWN_TECHNICAL_DIFFICULTIES = "Unknown technical difficulties"

_ERROR_SERVICE_TOKEN__UNABLE_TO_GET_OR_VERIFY_SEVICE_TOKEN = "Unable to get or verify service token"

-- User
_ERROR_SERVICE_USER__ACTIVATION_EMAIL_NOT_SENT = "The activation email could not be sent. Please contact administrator."

_ERROR_SERVICE_USER__RECOVERY_EMAIL_NOT_SENT = "The recovery email could not be sent. Please contact administrator."
