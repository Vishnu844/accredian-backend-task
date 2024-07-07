/*
  Warnings:

  - Added the required column `Qualification` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `YoP` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `gender` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone` to the `User` table without a default value. This is not possible if the table is not empty.
  - Made the column `email` on table `user` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `user` ADD COLUMN `Qualification` VARCHAR(191) NOT NULL,
    ADD COLUMN `YoP` VARCHAR(191) NOT NULL,
    ADD COLUMN `gender` VARCHAR(191) NOT NULL,
    ADD COLUMN `phone` VARCHAR(191) NOT NULL,
    MODIFY `email` VARCHAR(191) NOT NULL;
