-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_recordID_fkey";

-- AlterTable
ALTER TABLE "Post" ALTER COLUMN "recordID" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_recordID_fkey" FOREIGN KEY ("recordID") REFERENCES "WildfireRecords"("id") ON DELETE SET NULL ON UPDATE CASCADE;
