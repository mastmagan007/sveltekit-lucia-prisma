/*
  Warnings:

  - You are about to drop the `Media` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Media" DROP CONSTRAINT "Media_propertyId_fkey";

-- AlterTable
ALTER TABLE "Property" ADD COLUMN     "Media" TEXT[];

-- DropTable
DROP TABLE "Media";
