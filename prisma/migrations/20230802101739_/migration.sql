/*
  Warnings:

  - The primary key for the `Property` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `propertyMedia` on the `Property` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[listing_id]` on the table `Property` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Property" DROP CONSTRAINT "Property_pkey",
DROP COLUMN "propertyMedia",
ADD COLUMN     "Media" TEXT[];

-- CreateIndex
CREATE UNIQUE INDEX "Property_listing_id_key" ON "Property"("listing_id");
