module Specs.Service.Organization.OrganizationValidationSpec where

import Data.Maybe
import Test.Hspec

import Service.Organization.OrganizationValidation

organizationValidationSpec =
  describe "Organization Service" $
  it "isValidOrganizationId" $ do
    isNothing (isValidOrganizationId "cz") `shouldBe` True
    isNothing (isValidOrganizationId "base.dsw") `shouldBe` True
    isNothing (isValidOrganizationId "base.dsw.e") `shouldBe` True
    isJust (isValidOrganizationId "a") `shouldBe` True
    isJust (isValidOrganizationId "a-b") `shouldBe` True
    isJust (isValidOrganizationId "a_bc") `shouldBe` True
    isJust (isValidOrganizationId ".cz") `shouldBe` True
    isJust (isValidOrganizationId "cz.") `shouldBe` True
    isJust (isValidOrganizationId "base.dsw.") `shouldBe` True
    isJust (isValidOrganizationId ".base.dsw") `shouldBe` True
    isJust (isValidOrganizationId "base.dsw-") `shouldBe` True
