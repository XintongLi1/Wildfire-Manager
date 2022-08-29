-- CreateEnum
CREATE TYPE "Role" AS ENUM ('OrdinaryUser', 'Firefighter');

-- CreateTable
CREATE TABLE "User" (
    "id" STRING NOT NULL,
    "name" STRING NOT NULL,
    "type" "Role" NOT NULL DEFAULT 'OrdinaryUser',
    "contact" STRING NOT NULL,
    "address" STRING,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Post" (
    "id" INT8 NOT NULL DEFAULT unique_rowid(),
    "authorId" STRING NOT NULL,
    "time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "description" STRING NOT NULL DEFAULT '',
    "recordID" INT8 NOT NULL,

    CONSTRAINT "Post_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "WildfireRecords" (
    "id" INT8 NOT NULL DEFAULT unique_rowid(),
    "coordinateID" INT8 NOT NULL,
    "time" TIMESTAMP(3) NOT NULL,
    "windspeed" FLOAT8 NOT NULL,
    "propertyLoss" STRING NOT NULL,
    "casualties" INT4 NOT NULL,

    CONSTRAINT "WildfireRecords_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Image" (
    "id" INT8 NOT NULL DEFAULT unique_rowid(),
    "url" STRING NOT NULL,
    "postID" INT8 NOT NULL,

    CONSTRAINT "Image_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Coordinate" (
    "id" INT8 NOT NULL DEFAULT unique_rowid(),
    "x" FLOAT8 NOT NULL,
    "y" FLOAT8 NOT NULL,
    "areaID" INT8 NOT NULL,

    CONSTRAINT "Coordinate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Area" (
    "id" INT8 NOT NULL DEFAULT unique_rowid(),
    "region" STRING,
    "country" STRING NOT NULL,
    "continent" STRING NOT NULL,

    CONSTRAINT "Area_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_recordID_fkey" FOREIGN KEY ("recordID") REFERENCES "WildfireRecords"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "WildfireRecords" ADD CONSTRAINT "WildfireRecords_coordinateID_fkey" FOREIGN KEY ("coordinateID") REFERENCES "Coordinate"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_postID_fkey" FOREIGN KEY ("postID") REFERENCES "Post"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Coordinate" ADD CONSTRAINT "Coordinate_areaID_fkey" FOREIGN KEY ("areaID") REFERENCES "Area"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
