module Specs.API.Package.Common where

import Control.Lens ((^.))
import Test.Hspec
import Test.Hspec.Wai hiding (shouldRespondWith)

import Api.Resource.Error.ErrorDTO ()
import Database.DAO.Package.PackageDAO
import LensesConfig

import Specs.API.Common

-- --------------------------------
-- ASSERTS
-- --------------------------------
assertExistenceOfPackageInDB appContext package = do
  packageFromDb <- getFirstFromDB findPackages appContext
  comparePackageDtos packageFromDb package

-- --------------------------------
-- COMPARATORS
-- --------------------------------
comparePackageDtos resDto expDto = do
  liftIO $ (resDto ^. pId) `shouldBe` (expDto ^. pId)
  liftIO $ (resDto ^. name) `shouldBe` (expDto ^. name)
  liftIO $ (resDto ^. organizationId) `shouldBe` (expDto ^. organizationId)
  liftIO $ (resDto ^. kmId) `shouldBe` (expDto ^. kmId)
  liftIO $ (resDto ^. version) `shouldBe` (expDto ^. version)
  liftIO $ (resDto ^. description) `shouldBe` (expDto ^. description)
  liftIO $ (resDto ^. parentPackageId) `shouldBe` (expDto ^. parentPackageId)
