/*
  Warnings:

  - Added the required column `BuyerAgencyCompensation` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CarportSpaces` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CarportYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `City` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CloseDate` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ClosePrice` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CoListAgentDirectPhone` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CoListAgentFullName` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CountyOrParish` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `CumulativeDaysOnMarket` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `DaysOnMarket` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `DirectionFaces` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ElementarySchool` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `FireplaceYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Furnished` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `HighSchool` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `HomeWarrantyYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `InternetAddressDisplayYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `InternetAutomatedValuationDisplayYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `InternetEntireListingDisplayYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAOR` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentAOR` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentDirectPhone` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentEmail` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentFax` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentFullName` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentKey` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentMlsId` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentOfficePhoneExt` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentPager` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListAgentURL` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListOfficeFax` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListOfficeKey` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListOfficeMlsId` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListOfficeName` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListOfficePhone` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListPrice` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListingAgreement` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListingContractDate` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListingId` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ListingKey` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LivingArea` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LivingAreaSource` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LivingAreaUnits` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LotSizeAcres` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `LotSizeSquareFeet` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_CDDYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_CalculatedListPriceByCalculatedSqFt` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_ClosePriceByCalculatedListPriceRatio` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_ClosePriceByCalculatedSqFt` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_ContractStatus` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_CurrentPrice` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_DPRURL` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_DPRURL2` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_DPRYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_DaysToClosed` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_ExpectedClosingDate` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_FloorNumber` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_FutureLandUse` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_HomesteadYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_ListOfficeHeadOfficeKeyNumeric` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_MaxPetWeight` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_MillageRate` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_MinimumLease` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_MonthlyHOAAmount` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_NonRepCompensation` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_NumTimesperYear` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_NumberOfPets` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_OriginatingSystemName_` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_OriginatingSystemTimestamp` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_OtherExemptionsYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_PublicRemarksAgent` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_RATIO_ClosePrice_By_ListPrice` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_RATIO_ClosePrice_By_OriginalListPrice` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_RATIO_CurrentPrice_By_CalculatedSqFt` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_RoomCount` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_SDEOYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_TotalAcreage` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_TotalAnnualFees` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_TotalMonthlyFees` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_WaterAccess` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_WaterAccessYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_WaterExtras` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_WaterExtrasYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_WaterView` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_WaterViewYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MFR_ZoningCompatibleYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MLSAreaMajor` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MiddleOrJuniorSchool` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `MlsStatus` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ModificationTimestamp` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `NewConstructionYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `OffMarketDate` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `OriginalEntryTimestamp` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `OriginalListPrice` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `OriginatingSystemKey` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `OriginatingSystemName` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PropertyType` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PublicRemarks` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PublicSurveyRange` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PublicSurveySection` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PurchaseContractDate` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SpaYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StandardStatus` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StateOrProvince` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StatusChangeTimestamp` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StoriesTotal` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SubdivisionName` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TaxAnnualAmount` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TaxBookNumber` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TaxLegalDescription` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TaxLot` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TaxYear` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Township` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `TransactionBrokerCompensation` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `WaterfrontYN` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `YearBuilt` to the `Property` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Property" ADD COLUMN     "AdditionalParcelsYN" BOOLEAN,
ADD COLUMN     "Appliances" TEXT[],
ADD COLUMN     "ArchitecturalStyle" TEXT[],
ADD COLUMN     "AssociationAmenities" TEXT[],
ADD COLUMN     "AssociationFee" INTEGER,
ADD COLUMN     "AssociationFeeFrequency" TEXT,
ADD COLUMN     "AssociationFeeIncludes" TEXT[],
ADD COLUMN     "AssociationName" TEXT,
ADD COLUMN     "AssociationYN" BOOLEAN,
ADD COLUMN     "BathroomsFull" INTEGER,
ADD COLUMN     "BathroomsTotalInteger" INTEGER,
ADD COLUMN     "BedroomsTotal" INTEGER,
ADD COLUMN     "BuildingAreaSource" TEXT,
ADD COLUMN     "BuildingAreaTotal" INTEGER,
ADD COLUMN     "BuildingAreaUnits" TEXT,
ADD COLUMN     "BuyerAgencyCompensation" TEXT NOT NULL,
ADD COLUMN     "BuyerAgentAOR" TEXT,
ADD COLUMN     "BuyerAgentFullName" TEXT,
ADD COLUMN     "BuyerAgentKey" TEXT,
ADD COLUMN     "BuyerAgentMlsId" TEXT,
ADD COLUMN     "BuyerOfficeKey" TEXT,
ADD COLUMN     "BuyerOfficeMlsId" TEXT,
ADD COLUMN     "BuyerOfficeName" TEXT,
ADD COLUMN     "CarportSpaces" INTEGER NOT NULL,
ADD COLUMN     "CarportYN" BOOLEAN NOT NULL,
ADD COLUMN     "City" TEXT NOT NULL,
ADD COLUMN     "CloseDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "ClosePrice" INTEGER NOT NULL,
ADD COLUMN     "CoListAgentDirectPhone" TEXT NOT NULL,
ADD COLUMN     "CoListAgentFullName" TEXT NOT NULL,
ADD COLUMN     "CommunityFeatures" TEXT[],
ADD COLUMN     "Cooling" TEXT[],
ADD COLUMN     "CountyOrParish" TEXT NOT NULL,
ADD COLUMN     "CumulativeDaysOnMarket" INTEGER NOT NULL,
ADD COLUMN     "DaysOnMarket" INTEGER NOT NULL,
ADD COLUMN     "DirectionFaces" TEXT NOT NULL,
ADD COLUMN     "Directions" TEXT,
ADD COLUMN     "ElementarySchool" TEXT NOT NULL,
ADD COLUMN     "FireplaceYN" BOOLEAN NOT NULL,
ADD COLUMN     "Furnished" TEXT NOT NULL,
ADD COLUMN     "HighSchool" TEXT NOT NULL,
ADD COLUMN     "HomeWarrantyYN" BOOLEAN NOT NULL,
ADD COLUMN     "InteriorFeatures" TEXT[],
ADD COLUMN     "InternetAddressDisplayYN" BOOLEAN NOT NULL,
ADD COLUMN     "InternetAutomatedValuationDisplayYN" BOOLEAN NOT NULL,
ADD COLUMN     "InternetEntireListingDisplayYN" BOOLEAN NOT NULL,
ADD COLUMN     "Latitude" DOUBLE PRECISION,
ADD COLUMN     "ListAOR" TEXT NOT NULL,
ADD COLUMN     "ListAgentAOR" TEXT NOT NULL,
ADD COLUMN     "ListAgentDirectPhone" TEXT NOT NULL,
ADD COLUMN     "ListAgentEmail" TEXT NOT NULL,
ADD COLUMN     "ListAgentFax" TEXT NOT NULL,
ADD COLUMN     "ListAgentFullName" TEXT NOT NULL,
ADD COLUMN     "ListAgentKey" TEXT NOT NULL,
ADD COLUMN     "ListAgentMlsId" TEXT NOT NULL,
ADD COLUMN     "ListAgentOfficePhoneExt" TEXT NOT NULL,
ADD COLUMN     "ListAgentPager" TEXT NOT NULL,
ADD COLUMN     "ListAgentURL" TEXT NOT NULL,
ADD COLUMN     "ListOfficeFax" TEXT NOT NULL,
ADD COLUMN     "ListOfficeKey" TEXT NOT NULL,
ADD COLUMN     "ListOfficeMlsId" TEXT NOT NULL,
ADD COLUMN     "ListOfficeName" TEXT NOT NULL,
ADD COLUMN     "ListOfficePhone" TEXT NOT NULL,
ADD COLUMN     "ListPrice" INTEGER NOT NULL,
ADD COLUMN     "ListingAgreement" TEXT NOT NULL,
ADD COLUMN     "ListingContractDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "ListingId" TEXT NOT NULL,
ADD COLUMN     "ListingKey" TEXT NOT NULL,
ADD COLUMN     "LivingArea" INTEGER NOT NULL,
ADD COLUMN     "LivingAreaSource" TEXT NOT NULL,
ADD COLUMN     "LivingAreaUnits" TEXT NOT NULL,
ADD COLUMN     "Longitude" DOUBLE PRECISION,
ADD COLUMN     "LotFeatures" TEXT[],
ADD COLUMN     "LotSizeAcres" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "LotSizeSquareFeet" INTEGER NOT NULL,
ADD COLUMN     "MFR_AdditionalRooms" TEXT,
ADD COLUMN     "MFR_AssociationFeeRequirement" TEXT,
ADD COLUMN     "MFR_AvailableForLeaseYN" TEXT,
ADD COLUMN     "MFR_BackupsRequestedYN" TEXT,
ADD COLUMN     "MFR_BuildingElevatorYN" TEXT,
ADD COLUMN     "MFR_BuildingNameNumber" TEXT,
ADD COLUMN     "MFR_CDDYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_CalculatedListPriceByCalculatedSqFt" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_ClosePriceByCalculatedListPriceRatio" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_ClosePriceByCalculatedSqFt" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_ContractStatus" TEXT NOT NULL,
ADD COLUMN     "MFR_CurrentPrice" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_DPRURL" TEXT NOT NULL,
ADD COLUMN     "MFR_DPRURL2" TEXT NOT NULL,
ADD COLUMN     "MFR_DPRYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_DaysToClosed" INTEGER NOT NULL,
ADD COLUMN     "MFR_ExpectedClosingDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "MFR_FloorNumber" INTEGER NOT NULL,
ADD COLUMN     "MFR_FutureLandUse" TEXT NOT NULL,
ADD COLUMN     "MFR_HomesteadYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_ListOfficeHeadOfficeKeyNumeric" INTEGER NOT NULL,
ADD COLUMN     "MFR_MaxPetWeight" INTEGER NOT NULL,
ADD COLUMN     "MFR_MillageRate" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_MinimumLease" TEXT NOT NULL,
ADD COLUMN     "MFR_MonthlyHOAAmount" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_NonRepCompensation" TEXT NOT NULL,
ADD COLUMN     "MFR_NumTimesperYear" INTEGER NOT NULL,
ADD COLUMN     "MFR_NumberOfPets" INTEGER NOT NULL,
ADD COLUMN     "MFR_NumberOfPhotos" INTEGER,
ADD COLUMN     "MFR_OriginatingSystemName_" TEXT NOT NULL,
ADD COLUMN     "MFR_OriginatingSystemTimestamp" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "MFR_OtherExemptionsYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_PetRestrictions" TEXT,
ADD COLUMN     "MFR_PetSize" TEXT,
ADD COLUMN     "MFR_PreviousStatus" TEXT,
ADD COLUMN     "MFR_PropertyDescription" TEXT,
ADD COLUMN     "MFR_PublicRemarksAgent" TEXT NOT NULL,
ADD COLUMN     "MFR_RATIO_ClosePrice_By_ListPrice" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_RATIO_ClosePrice_By_OriginalListPrice" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_RATIO_CurrentPrice_By_CalculatedSqFt" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_RoomCount" INTEGER NOT NULL,
ADD COLUMN     "MFR_SDEOYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_SWSubdivCommunityName" TEXT,
ADD COLUMN     "MFR_SubdivisionNum" TEXT,
ADD COLUMN     "MFR_TotalAcreage" TEXT NOT NULL,
ADD COLUMN     "MFR_TotalAnnualFees" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_TotalMonthlyFees" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "MFR_WaterAccess" TEXT NOT NULL,
ADD COLUMN     "MFR_WaterAccessYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_WaterExtras" TEXT NOT NULL,
ADD COLUMN     "MFR_WaterExtrasYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_WaterView" TEXT NOT NULL,
ADD COLUMN     "MFR_WaterViewYN" INTEGER NOT NULL,
ADD COLUMN     "MFR_ZoningCompatibleYN" INTEGER NOT NULL,
ADD COLUMN     "MLSAreaMajor" TEXT NOT NULL,
ADD COLUMN     "Media" TEXT[],
ADD COLUMN     "MiddleOrJuniorSchool" TEXT NOT NULL,
ADD COLUMN     "MlgCanUse" TEXT[],
ADD COLUMN     "MlgCanView" BOOLEAN,
ADD COLUMN     "MlsStatus" TEXT NOT NULL,
ADD COLUMN     "ModificationTimestamp" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "NewConstructionYN" BOOLEAN NOT NULL,
ADD COLUMN     "OffMarketDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "OriginalEntryTimestamp" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "OriginalListPrice" INTEGER NOT NULL,
ADD COLUMN     "OriginatingSystemKey" TEXT NOT NULL,
ADD COLUMN     "OriginatingSystemName" TEXT NOT NULL,
ADD COLUMN     "OtherStructures" TEXT[],
ADD COLUMN     "Ownership" TEXT,
ADD COLUMN     "ParcelNumber" TEXT,
ADD COLUMN     "ParkingFeatures" TEXT[],
ADD COLUMN     "PetsAllowed" TEXT[],
ADD COLUMN     "PhotosChangeTimestamp" TIMESTAMP(3),
ADD COLUMN     "PhotosCount" INTEGER,
ADD COLUMN     "PoolPrivateYN" BOOLEAN,
ADD COLUMN     "PostalCode" TEXT,
ADD COLUMN     "PostalCodePlus4" TEXT,
ADD COLUMN     "PreviousListPrice" INTEGER,
ADD COLUMN     "PriceChangeTimestamp" TIMESTAMP(3),
ADD COLUMN     "PropertySubType" TEXT,
ADD COLUMN     "PropertyType" TEXT NOT NULL,
ADD COLUMN     "PublicRemarks" TEXT NOT NULL,
ADD COLUMN     "PublicSurveyRange" INTEGER NOT NULL,
ADD COLUMN     "PublicSurveySection" INTEGER NOT NULL,
ADD COLUMN     "PurchaseContractDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "RoadFrontageType" TEXT[],
ADD COLUMN     "Rooms" TEXT[],
ADD COLUMN     "SecurityFeatures" TEXT[],
ADD COLUMN     "ShowingRequirements" TEXT[],
ADD COLUMN     "SpaYN" BOOLEAN NOT NULL,
ADD COLUMN     "SpecialListingConditions" TEXT[],
ADD COLUMN     "StandardStatus" TEXT NOT NULL,
ADD COLUMN     "StateOrProvince" TEXT NOT NULL,
ADD COLUMN     "StatusChangeTimestamp" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "StoriesTotal" INTEGER NOT NULL,
ADD COLUMN     "StreetName" TEXT,
ADD COLUMN     "StreetNumber" TEXT,
ADD COLUMN     "StreetSuffix" TEXT,
ADD COLUMN     "SubdivisionName" TEXT NOT NULL,
ADD COLUMN     "TaxAnnualAmount" INTEGER NOT NULL,
ADD COLUMN     "TaxBookNumber" TEXT NOT NULL,
ADD COLUMN     "TaxLegalDescription" TEXT NOT NULL,
ADD COLUMN     "TaxLot" TEXT NOT NULL,
ADD COLUMN     "TaxYear" INTEGER NOT NULL,
ADD COLUMN     "Township" INTEGER NOT NULL,
ADD COLUMN     "TransactionBrokerCompensation" TEXT NOT NULL,
ADD COLUMN     "UnitNumber" TEXT,
ADD COLUMN     "UnparsedAddress" TEXT,
ADD COLUMN     "Utilities" TEXT[],
ADD COLUMN     "View" TEXT[],
ADD COLUMN     "WaterSource" TEXT[],
ADD COLUMN     "WaterfrontFeatures" TEXT[],
ADD COLUMN     "WaterfrontYN" BOOLEAN NOT NULL,
ADD COLUMN     "WindowFeatures" TEXT[],
ADD COLUMN     "YearBuilt" INTEGER NOT NULL;
