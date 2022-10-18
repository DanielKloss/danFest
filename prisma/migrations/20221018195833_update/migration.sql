-- CreateTable
CREATE TABLE "location" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "location_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "festival" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "year" INTEGER NOT NULL,
    "activities" TEXT NOT NULL,
    "location_id" INTEGER NOT NULL,

    CONSTRAINT "festival_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "attendee" (
    "id" SERIAL NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,

    CONSTRAINT "attendee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "festival_attendee" (
    "festival_id" INTEGER NOT NULL,
    "attendee_id" INTEGER NOT NULL,

    CONSTRAINT "festival_attendee_pkey" PRIMARY KEY ("festival_id","attendee_id")
);

-- CreateTable
CREATE TABLE "ticket2022" (
    "id" SERIAL NOT NULL,
    "reference" TEXT NOT NULL,
    "attendees" TEXT NOT NULL,
    "attending" BOOLEAN NOT NULL,

    CONSTRAINT "ticket2022_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "festival" ADD CONSTRAINT "festival_location_id_fkey" FOREIGN KEY ("location_id") REFERENCES "location"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "festival_attendee" ADD CONSTRAINT "festival_attendee_festival_id_fkey" FOREIGN KEY ("festival_id") REFERENCES "festival"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "festival_attendee" ADD CONSTRAINT "festival_attendee_attendee_id_fkey" FOREIGN KEY ("attendee_id") REFERENCES "attendee"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
