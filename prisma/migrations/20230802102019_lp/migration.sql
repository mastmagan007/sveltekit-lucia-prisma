/*
  Warnings:

  - You are about to drop the column `Media` on the `Property` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Property" DROP COLUMN "Media",
ADD COLUMN     "propertyMedia" TEXT[];
