/*
  Warnings:

  - Made the column `title` on table `Property` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Property" ALTER COLUMN "title" SET NOT NULL,
ALTER COLUMN "BuyerAgencyCompensation" DROP NOT NULL,
ALTER COLUMN "CarportSpaces" DROP NOT NULL,
ALTER COLUMN "CarportYN" DROP NOT NULL,
ALTER COLUMN "City" DROP NOT NULL,
ALTER COLUMN "ClosePrice" DROP NOT NULL,
ALTER COLUMN "CoListAgentDirectPhone" DROP NOT NULL,
ALTER COLUMN "CoListAgentFullName" DROP NOT NULL,
ALTER COLUMN "CountyOrParish" DROP NOT NULL,
ALTER COLUMN "CumulativeDaysOnMarket" DROP NOT NULL,
ALTER COLUMN "DaysOnMarket" DROP NOT NULL,
ALTER COLUMN "DirectionFaces" DROP NOT NULL,
ALTER COLUMN "ElementarySchool" DROP NOT NULL,
ALTER COLUMN "FireplaceYN" DROP NOT NULL,
ALTER COLUMN "Furnished" DROP NOT NULL,
ALTER COLUMN "HighSchool" DROP NOT NULL,
ALTER COLUMN "HomeWarrantyYN" DROP NOT NULL,
ALTER COLUMN "InternetAddressDisplayYN" DROP NOT NULL,
ALTER COLUMN "InternetAutomatedValuationDisplayYN" DROP NOT NULL,
ALTER COLUMN "InternetEntireListingDisplayYN" DROP NOT NULL,
ALTER COLUMN "Latitude" DROP NOT NULL,
ALTER COLUMN "ListAOR" DROP NOT NULL,
ALTER COLUMN "ListAgentAOR" DROP NOT NULL,
ALTER COLUMN "ListAgentDirectPhone" DROP NOT NULL,
ALTER COLUMN "ListAgentEmail" DROP NOT NULL,
ALTER COLUMN "ListAgentFax" DROP NOT NULL,
ALTER COLUMN "ListAgentFullName" DROP NOT NULL,
ALTER COLUMN "ListAgentKey" DROP NOT NULL,
ALTER COLUMN "ListAgentMlsId" DROP NOT NULL,
ALTER COLUMN "ListAgentOfficePhoneExt" DROP NOT NULL,
ALTER COLUMN "ListAgentPager" DROP NOT NULL,
ALTER COLUMN "ListAgentURL" DROP NOT NULL,
ALTER COLUMN "ListOfficeFax" DROP NOT NULL,
ALTER COLUMN "ListOfficeKey" DROP NOT NULL,
ALTER COLUMN "ListOfficeMlsId" DROP NOT NULL,
ALTER COLUMN "ListOfficeName" DROP NOT NULL,
ALTER COLUMN "ListOfficePhone" DROP NOT NULL,
ALTER COLUMN "ListPrice" DROP NOT NULL,
ALTER COLUMN "ListingAgreement" DROP NOT NULL,
ALTER COLUMN "ListingId" DROP NOT NULL,
ALTER COLUMN "ListingKey" DROP NOT NULL,
ALTER COLUMN "LivingArea" DROP NOT NULL,
ALTER COLUMN "LivingAreaSource" DROP NOT NULL,
ALTER COLUMN "LivingAreaUnits" DROP NOT NULL,
ALTER COLUMN "Longitude" DROP NOT NULL,
ALTER COLUMN "LotSizeAcres" DROP NOT NULL,
ALTER COLUMN "LotSizeSquareFeet" DROP NOT NULL,
ALTER COLUMN "MFR_CDDYN" DROP NOT NULL,
ALTER COLUMN "MFR_CalculatedListPriceByCalculatedSqFt" DROP NOT NULL,
ALTER COLUMN "MFR_ClosePriceByCalculatedListPriceRatio" DROP NOT NULL,
ALTER COLUMN "MFR_ClosePriceByCalculatedSqFt" DROP NOT NULL,
ALTER COLUMN "MFR_ContractStatus" DROP NOT NULL,
ALTER COLUMN "MFR_CurrentPrice" DROP NOT NULL,
ALTER COLUMN "MFR_DPRURL" DROP NOT NULL,
ALTER COLUMN "MFR_DPRURL2" DROP NOT NULL,
ALTER COLUMN "MFR_DPRYN" DROP NOT NULL,
ALTER COLUMN "MFR_DaysToClosed" DROP NOT NULL,
ALTER COLUMN "MFR_FloorNumber" DROP NOT NULL,
ALTER COLUMN "MFR_FutureLandUse" DROP NOT NULL,
ALTER COLUMN "MFR_HomesteadYN" DROP NOT NULL,
ALTER COLUMN "MFR_ListOfficeHeadOfficeKeyNumeric" DROP NOT NULL,
ALTER COLUMN "MFR_MaxPetWeight" DROP NOT NULL,
ALTER COLUMN "MFR_MillageRate" DROP NOT NULL,
ALTER COLUMN "MFR_MinimumLease" DROP NOT NULL,
ALTER COLUMN "MFR_MonthlyHOAAmount" DROP NOT NULL,
ALTER COLUMN "MFR_NonRepCompensation" DROP NOT NULL,
ALTER COLUMN "MFR_NumTimesperYear" DROP NOT NULL,
ALTER COLUMN "MFR_NumberOfPets" DROP NOT NULL,
ALTER COLUMN "MFR_OriginatingSystemName_" DROP NOT NULL,
ALTER COLUMN "MFR_OtherExemptionsYN" DROP NOT NULL,
ALTER COLUMN "MFR_PublicRemarksAgent" DROP NOT NULL,
ALTER COLUMN "MFR_RATIO_ClosePrice_By_ListPrice" DROP NOT NULL,
ALTER COLUMN "MFR_RATIO_ClosePrice_By_OriginalListPrice" DROP NOT NULL,
ALTER COLUMN "MFR_RATIO_CurrentPrice_By_CalculatedSqFt" DROP NOT NULL,
ALTER COLUMN "MFR_RoomCount" DROP NOT NULL,
ALTER COLUMN "MFR_SDEOYN" DROP NOT NULL,
ALTER COLUMN "MFR_TotalAcreage" DROP NOT NULL,
ALTER COLUMN "MFR_TotalAnnualFees" DROP NOT NULL,
ALTER COLUMN "MFR_TotalMonthlyFees" DROP NOT NULL,
ALTER COLUMN "MFR_WaterAccess" DROP NOT NULL,
ALTER COLUMN "MFR_WaterAccessYN" DROP NOT NULL,
ALTER COLUMN "MFR_WaterExtras" DROP NOT NULL,
ALTER COLUMN "MFR_WaterExtrasYN" DROP NOT NULL,
ALTER COLUMN "MFR_WaterView" DROP NOT NULL,
ALTER COLUMN "MFR_WaterViewYN" DROP NOT NULL,
ALTER COLUMN "MFR_ZoningCompatibleYN" DROP NOT NULL,
ALTER COLUMN "MLSAreaMajor" DROP NOT NULL,
ALTER COLUMN "MiddleOrJuniorSchool" DROP NOT NULL,
ALTER COLUMN "MlsStatus" DROP NOT NULL,
ALTER COLUMN "NewConstructionYN" DROP NOT NULL,
ALTER COLUMN "OriginalListPrice" DROP NOT NULL,
ALTER COLUMN "OriginatingSystemKey" DROP NOT NULL,
ALTER COLUMN "OriginatingSystemName" DROP NOT NULL,
ALTER COLUMN "PhotosCount" DROP NOT NULL,
ALTER COLUMN "PreviousListPrice" DROP NOT NULL,
ALTER COLUMN "PropertyType" DROP NOT NULL,
ALTER COLUMN "PublicRemarks" DROP NOT NULL,
ALTER COLUMN "PublicSurveyRange" DROP NOT NULL,
ALTER COLUMN "PublicSurveySection" DROP NOT NULL,
ALTER COLUMN "SpaYN" DROP NOT NULL,
ALTER COLUMN "StandardStatus" DROP NOT NULL,
ALTER COLUMN "StateOrProvince" DROP NOT NULL,
ALTER COLUMN "StoriesTotal" DROP NOT NULL,
ALTER COLUMN "SubdivisionName" DROP NOT NULL,
ALTER COLUMN "TaxAnnualAmount" DROP NOT NULL,
ALTER COLUMN "TaxBookNumber" DROP NOT NULL,
ALTER COLUMN "TaxLegalDescription" DROP NOT NULL,
ALTER COLUMN "TaxLot" DROP NOT NULL,
ALTER COLUMN "TaxYear" DROP NOT NULL,
ALTER COLUMN "Township" DROP NOT NULL,
ALTER COLUMN "TransactionBrokerCompensation" DROP NOT NULL,
ALTER COLUMN "WaterfrontYN" DROP NOT NULL,
ALTER COLUMN "YearBuilt" DROP NOT NULL;
