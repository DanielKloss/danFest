-- AlterTable
ALTER TABLE "attendee" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "attendee_id_seq";

-- AlterTable
ALTER TABLE "festival" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "festival_id_seq";

-- AlterTable
ALTER TABLE "location" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "location_id_seq";

-- AlterTable
ALTER TABLE "subLocation" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "subLocation_id_seq";
