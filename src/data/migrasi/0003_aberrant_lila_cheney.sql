ALTER TABLE `jadwal` ADD CONSTRAINT `jadwal_email_user_email_fk` FOREIGN KEY (`email`) REFERENCES `user`(`email`) ON DELETE no action ON UPDATE no action;