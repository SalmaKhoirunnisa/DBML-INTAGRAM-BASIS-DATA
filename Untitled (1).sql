CREATE TABLE `Instagram` (
  `Instagram` integer PRIMARY KEY,
  `akun` varchar(255),
  `Messege` varchar(255),
  `Setting` varchar(255)
);

CREATE TABLE `akun` (
  `akun` integer PRIMARY KEY,
  `id_User` varchar(255),
  `profile_user` varchar(255),
  `jumlah_like` varchar(255),
  `jumlah_Following` varchar(255),
  `jumlah_Followers` varchar(255),
  `photos` varchar(255),
  `reels` varchar(255),
  `Arsip` varchar(255),
  `Aktivitas_Anda` varchar(255)
);

CREATE TABLE `Messege` (
  `Messege` integer PRIMARY KEY,
  `Pesan_Masuk` varchar(255),
  `Pesan_Keluar` varchar(255),
  `Permintaan_Pesan` varchar(255)
);

CREATE TABLE `Setting` (
  `Setting` integer PRIMARY KEY,
  `Nama_Akun` varchar(255),
  `Password_user` varchar(255),
  `Akun_dibatasi` varchar(255),
  `Akun_diblokir` varchar(255),
  `Akun_Tertaut` varchar(255),
  `Sembunyikan_cerita` varchar(255),
  `Teman_Dekat` varchar(255)
);

ALTER TABLE `Messege` ADD FOREIGN KEY (`Messege`) REFERENCES `Setting` (`Setting`);

ALTER TABLE `akun` ADD FOREIGN KEY (`akun`) REFERENCES `Messege` (`Messege`);

ALTER TABLE `Instagram` ADD FOREIGN KEY (`Instagram`) REFERENCES `akun` (`akun`);
