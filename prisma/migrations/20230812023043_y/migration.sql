/*
  Warnings:

  - The primary key for the `Property` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `ListingId` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `listing_id` on the `Property` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[Listing_id]` on the table `Property` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `Listing_id` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `listing_key` to the `Property` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Property_listing_id_key";

-- AlterTable
ALTER TABLE "Property" DROP CONSTRAINT "Property_pkey",
DROP COLUMN "ListingId",
DROP COLUMN "listing_id",
ADD COLUMN     "Listing_id" TEXT NOT NULL,
ADD COLUMN     "listing_key" TEXT NOT NULL,
ADD CONSTRAINT "Property_pkey" PRIMARY KEY ("Listing_id");

-- CreateIndex
CREATE UNIQUE INDEX "Property_Listing_id_key" ON "Property"("Listing_id");
