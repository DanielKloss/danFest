-- CreateTable
CREATE TABLE "subLocation" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "subLocation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "festival_subLocation" (
    "festival_id" INTEGER NOT NULL,
    "subLocation_id" INTEGER NOT NULL,

    CONSTRAINT "festival_subLocation_pkey" PRIMARY KEY ("festival_id","subLocation_id")
);

-- AddForeignKey
ALTER TABLE "festival_subLocation" ADD CONSTRAINT "festival_subLocation_festival_id_fkey" FOREIGN KEY ("festival_id") REFERENCES "festival"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "festival_subLocation" ADD CONSTRAINT "festival_subLocation_subLocation_id_fkey" FOREIGN KEY ("subLocation_id") REFERENCES "subLocation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
