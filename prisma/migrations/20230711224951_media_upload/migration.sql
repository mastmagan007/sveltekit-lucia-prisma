-- CreateTable
CREATE TABLE "Property" (
    "id" SERIAL NOT NULL,
    "listing_id" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "title" TEXT,
    "addRooms" TEXT,
    "area" INTEGER,
    "area_units" TEXT,
    "listPrice" INTEGER,
    "type" TEXT,
    "remarks" TEXT,
    "yearBuilt" INTEGER,
    "totalRooms" TEXT,
    "amenities" TEXT[],
    "utilities" TEXT[],
    "securityFeatures" TEXT[],
    "modification_timestamp" TIMESTAMP(3),

    CONSTRAINT "Property_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Media" (
    "id" SERIAL NOT NULL,
    "MediaURL" TEXT NOT NULL,
    "MediaKey" TEXT NOT NULL,
    "Order" INTEGER NOT NULL,
    "LongDescription" TEXT NOT NULL,
    "MediaType" TEXT NOT NULL,
    "ImageWidth" INTEGER NOT NULL,
    "ImageHeight" INTEGER NOT NULL,
    "ImageSizeDescription" TEXT NOT NULL,
    "MediaModificationTimestamp" TIMESTAMP(3) NOT NULL,
    "propertyId" INTEGER NOT NULL,

    CONSTRAINT "Media_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Media" ADD CONSTRAINT "Media_propertyId_fkey" FOREIGN KEY ("propertyId") REFERENCES "Property"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
