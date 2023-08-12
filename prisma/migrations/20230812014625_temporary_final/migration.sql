/*
  Warnings:

  - You are about to drop the column `MFR_NumberOfPhotos` on the `Property` table. All the data in the column will be lost.
  - Made the column `Latitude` on table `Property` required. This step will fail if there are existing NULL values in that column.
  - Made the column `Longitude` on table `Property` required. This step will fail if there are existing NULL values in that column.
  - Changed the type of `Media` on the `Property` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Made the column `PhotosCount` on table `Property` required. This step will fail if there are existing NULL values in that column.
  - Made the column `PreviousListPrice` on table `Property` required. This step will fail if there are existing NULL values in that column.
  - Changed the type of `Rooms` on the `Property` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Property" DROP COLUMN "MFR_NumberOfPhotos",
ALTER COLUMN "CloseDate" DROP NOT NULL,
ALTER COLUMN "Latitude" SET NOT NULL,
ALTER COLUMN "ListingContractDate" DROP NOT NULL,
ALTER COLUMN "Longitude" SET NOT NULL,
ALTER COLUMN "MFR_CDDYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_ClosePriceByCalculatedListPriceRatio" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_ClosePriceByCalculatedSqFt" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_CurrentPrice" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_DPRYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_DaysToClosed" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_ExpectedClosingDate" DROP NOT NULL,
ALTER COLUMN "MFR_FloorNumber" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_HomesteadYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_ListOfficeHeadOfficeKeyNumeric" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_MaxPetWeight" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_MillageRate" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_MonthlyHOAAmount" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_NumTimesperYear" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_NumberOfPets" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_OriginatingSystemTimestamp" DROP NOT NULL,
ALTER COLUMN "MFR_OtherExemptionsYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_RATIO_ClosePrice_By_ListPrice" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_RATIO_ClosePrice_By_OriginalListPrice" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_RATIO_CurrentPrice_By_CalculatedSqFt" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_RoomCount" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_SDEOYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_TotalAnnualFees" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_TotalMonthlyFees" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_WaterAccessYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_WaterExtrasYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_WaterViewYN" SET DATA TYPE TEXT,
ALTER COLUMN "MFR_ZoningCompatibleYN" SET DATA TYPE TEXT,
DROP COLUMN "Media",
ADD COLUMN     "Media" JSONB NOT NULL,
ALTER COLUMN "ModificationTimestamp" DROP NOT NULL,
ALTER COLUMN "OffMarketDate" DROP NOT NULL,
ALTER COLUMN "OriginalEntryTimestamp" DROP NOT NULL,
ALTER COLUMN "PhotosCount" SET NOT NULL,
ALTER COLUMN "PreviousListPrice" SET NOT NULL,
ALTER COLUMN "PublicSurveyRange" SET DATA TYPE TEXT,
ALTER COLUMN "PublicSurveySection" SET DATA TYPE TEXT,
ALTER COLUMN "PurchaseContractDate" DROP NOT NULL,
DROP COLUMN "Rooms",
ADD COLUMN     "Rooms" JSONB NOT NULL,
ALTER COLUMN "StatusChangeTimestamp" DROP NOT NULL,
ALTER COLUMN "Township" SET DATA TYPE TEXT;
