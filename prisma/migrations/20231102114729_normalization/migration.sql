-- CreateTable
CREATE TABLE `gnmstakunbank` (
    `no_bank` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_bank` VARCHAR(20) NOT NULL,
    `no_rekening` VARCHAR(25) NOT NULL,
    `alias` VARCHAR(10) NOT NULL,
    `kd_branch` INTEGER NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    PRIMARY KEY (`no_bank`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_inventarisperbaikan` (
    `kode_barang` VARCHAR(11) NOT NULL,
    `status_kondisi` ENUM('Baik', 'Sedang Diperbaiki', 'Rusak') NOT NULL,
    `tanggal_mulai` DATE NOT NULL,
    `dimulai_oleh` VARCHAR(30) NOT NULL,
    `tanggal_selesai` DATE NULL,
    `keterangan_perbaikan` VARCHAR(200) NULL,
    `diselesaikan_oleh` VARCHAR(30) NULL,

    PRIMARY KEY (`kode_barang`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_karyawancuti` (
    `no_cuti` VARCHAR(25) NOT NULL,
    `no_ktp` VARCHAR(17) NOT NULL,
    `jabatan_cuti` VARCHAR(70) NOT NULL,
    `hak_cutitahun` INTEGER NOT NULL,
    `hak_cuti` INTEGER NOT NULL,
    `lama_cuti` INTEGER NOT NULL,
    `tertanggal_cuti` VARCHAR(50) NOT NULL,
    `sisa_cutitahun` INTEGER NOT NULL,
    `sisa_cuti` INTEGER NOT NULL,
    `alasan_cuti` VARCHAR(50) NOT NULL,
    `alamat_cuti` VARCHAR(75) NOT NULL,
    `nama_pengganti` VARCHAR(40) NOT NULL,
    `jabatan_pengganti` VARCHAR(70) NOT NULL,
    `dikeluarkan` VARCHAR(40) NOT NULL,
    `jabatan_dikeluarkan` VARCHAR(70) NOT NULL,
    `tanggal_cuti` DATE NOT NULL,

    INDEX `no_ktp`(`no_ktp`),
    PRIMARY KEY (`no_cuti`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_karyawansp` (
    `no_sp` VARCHAR(25) NOT NULL,
    `no_ktp` VARCHAR(17) NOT NULL,
    `nama_divisi` VARCHAR(70) NOT NULL,
    `jabatan` VARCHAR(70) NOT NULL,
    `pelanggaran` TEXT NOT NULL,
    `jenis_sp` VARCHAR(75) NOT NULL,
    `dikeluarkan` VARCHAR(40) NOT NULL,
    `jabatan_dikeluarkan` VARCHAR(70) NOT NULL,
    `diketahui` VARCHAR(40) NOT NULL,
    `jabatan_diketahui` VARCHAR(70) NOT NULL,
    `disetujui` VARCHAR(40) NOT NULL,
    `jabatan_disetujui` VARCHAR(70) NOT NULL,
    `tanggalsp` DATE NOT NULL,

    INDEX `no_ktp`(`no_ktp`),
    PRIMARY KEY (`no_sp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstaccount` (
    `kode_account` CHAR(3) NOT NULL,
    `nama_account` VARCHAR(20) NOT NULL,
    `keterangan` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`kode_account`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstakunbank` (
    `kd_bank` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_bank` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`kd_bank`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstbaranginventaris` (
    `kode_barang` VARCHAR(11) NOT NULL,
    `id_kategori` INTEGER NOT NULL,
    `periode_beli` DATE NOT NULL,
    `keterangan` TEXT NOT NULL,
    `status_kondisi` ENUM('Baik', 'Sedang Diperbaiki', 'Rusak') NOT NULL,

    INDEX `id_kategori`(`id_kategori`),
    PRIMARY KEY (`kode_barang`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstbarangkategori` (
    `id_kategori` INTEGER NOT NULL AUTO_INCREMENT,
    `jenis_kategori` VARCHAR(30) NOT NULL,

    PRIMARY KEY (`id_kategori`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstbranch` (
    `kd_branch` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_branch` VARCHAR(70) NOT NULL,
    `npwp` VARCHAR(25) NOT NULL,

    PRIMARY KEY (`kd_branch`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstdivisi` (
    `kd_divisi` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_divisi` VARCHAR(70) NOT NULL,

    PRIMARY KEY (`kd_divisi`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstjabatan` (
    `kd_jabatan` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_jabatan` VARCHAR(70) NOT NULL,

    PRIMARY KEY (`kd_jabatan`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstkaryawan` (
    `no_ktp` VARCHAR(17) NOT NULL,
    `nama_karyawan` VARCHAR(40) NOT NULL,
    `tempat_lahir` VARCHAR(30) NOT NULL,
    `tanggal_lahir` DATE NOT NULL,
    `jenis_kelamin` ENUM('Laki-laki', 'Perempuan') NOT NULL,
    `alamat` VARCHAR(255) NOT NULL,
    `agama` ENUM('Islam', 'K. Protestan', 'K. Katholik', 'Hindu', 'Budha', 'Konghucu') NOT NULL,
    `status_kawin` ENUM('Kawin', 'Belum Kawin', 'Janda', 'Duda') NOT NULL,
    `no_telp` VARCHAR(17) NOT NULL,
    `pendidikan` ENUM('SD', 'SMP', 'SMA', 'D1', 'D3', 'S1', 'S2', 'S3') NOT NULL,
    `nama_ibu` VARCHAR(35) NOT NULL,
    `nama_pasangan` VARCHAR(35) NOT NULL,
    `jumlah_anak` CHAR(2) NOT NULL,
    `no_npwp` VARCHAR(17) NOT NULL,
    `tanggal_masuk` DATE NOT NULL,
    `status` ENUM('Aktif', 'Non Aktif') NOT NULL,
    `keterangan` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`no_ktp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstkaryawanfoto` (
    `no_ktp` VARCHAR(17) NOT NULL,
    `foto` BLOB NOT NULL,

    PRIMARY KEY (`no_ktp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstkaryawangaji` (
    `no_ktp` VARCHAR(17) NOT NULL,
    `nama_bank` VARCHAR(10) NOT NULL,
    `no_rekening` VARCHAR(13) NOT NULL,
    `gaji` BIGINT NOT NULL,

    PRIMARY KEY (`no_ktp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstkaryawanqrcode` (
    `no_ktp` VARCHAR(17) NOT NULL,
    `qrcode` BLOB NOT NULL,

    PRIMARY KEY (`no_ktp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstkonsumen` (
    `kd_konsumen` CHAR(10) NOT NULL,
    `nama_konsumen` VARCHAR(50) NOT NULL,
    `kode_account` CHAR(3) NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `status` ENUM('Aktif', 'NonAktif') NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    INDEX `kode_account`(`kode_account`),
    PRIMARY KEY (`kd_konsumen`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstoutlet` (
    `kd_branch` INTEGER NOT NULL,
    `kd_outlet` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_outlet` VARCHAR(50) NOT NULL,
    `alamat_outlet` VARCHAR(200) NOT NULL,
    `no_telp` VARCHAR(20) NOT NULL,
    `suboutlet` VARCHAR(15) NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    PRIMARY KEY (`kd_outlet`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstpenanggungjawab` (
    `id_penanggungjawab` INTEGER NOT NULL AUTO_INCREMENT,
    `kode_barang` VARCHAR(11) NOT NULL,
    `no_ktp` VARCHAR(17) NOT NULL,

    INDEX `kode_barang`(`kode_barang`),
    INDEX `no_ktp`(`no_ktp`),
    PRIMARY KEY (`id_penanggungjawab`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstsupplier` (
    `kd_supplier` CHAR(10) NOT NULL,
    `nama_supplier` VARCHAR(50) NOT NULL,
    `kode_account` CHAR(3) NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `status` ENUM('Aktif', 'NonAktif') NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    INDEX `kode_account`(`kode_account`),
    PRIMARY KEY (`kd_supplier`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_msttypeaccount` (
    `no_typeaccount` INTEGER NOT NULL AUTO_INCREMENT,
    `kode_typeaccount` CHAR(3) NOT NULL,
    `keterangan` VARCHAR(10) NOT NULL,

    PRIMARY KEY (`no_typeaccount`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_mstuser` (
    `id_user` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_user` VARCHAR(30) NOT NULL,
    `password_user` VARCHAR(100) NOT NULL,
    `role_user` ENUM('ADMIN', 'USER') NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `kd_divisi` INTEGER NOT NULL,
    `status_user` ENUM('AKTIF', 'NONAKTIF') NOT NULL,

    PRIMARY KEY (`id_user`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_payroll_detail` (
    `periode_payroll` VARCHAR(6) NOT NULL,
    `no_ktp` VARCHAR(17) NOT NULL,
    `nama_bank` VARCHAR(10) NOT NULL,
    `no_rekening` VARCHAR(13) NOT NULL,
    `gaji` BIGINT NOT NULL,

    INDEX `no_ktp`(`no_ktp`),
    PRIMARY KEY (`periode_payroll`, `no_ktp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_payroll_header` (
    `periode_payroll` VARCHAR(6) NOT NULL,
    `nama_branch` VARCHAR(70) NOT NULL,
    `tanggal_buat` DATE NOT NULL,

    PRIMARY KEY (`periode_payroll`, `nama_branch`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_periode` (
    `no_periode` INTEGER NOT NULL AUTO_INCREMENT,
    `tahun` CHAR(4) NOT NULL,
    `bulan` CHAR(2) NOT NULL,
    `periode` CHAR(6) NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `kode_dokumen` CHAR(3) NOT NULL,
    `keterangan` VARCHAR(15) NOT NULL,
    `no_urut` INTEGER NOT NULL,
    `status` ENUM('Aktif', 'NonAktif') NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    PRIMARY KEY (`no_periode`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_posisi` (
    `no_ktp` VARCHAR(17) NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `kd_outlet` INTEGER NOT NULL,
    `suboutlet` VARCHAR(15) NOT NULL,
    `kd_divisi` INTEGER NOT NULL,
    `kd_jabatan` INTEGER NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    INDEX `kd_divisi`(`kd_divisi`),
    INDEX `kd_jabatan`(`kd_jabatan`),
    INDEX `kd_outlet`(`kd_outlet`),
    PRIMARY KEY (`no_ktp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_posisihistory` (
    `id_posisihistory` INTEGER NOT NULL AUTO_INCREMENT,
    `no_ktp` VARCHAR(17) NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `kd_outlet` INTEGER NOT NULL,
    `suboutlet` VARCHAR(15) NOT NULL,
    `kd_divisi` INTEGER NOT NULL,
    `kd_jabatan` INTEGER NOT NULL,
    `no_sk` VARCHAR(20) NOT NULL,
    `tanggal_sk` DATE NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    INDEX `kd_divisi`(`kd_divisi`),
    INDEX `kd_jabatan`(`kd_jabatan`),
    INDEX `kd_outlet`(`kd_outlet`),
    INDEX `no_ktp`(`no_ktp`),
    PRIMARY KEY (`id_posisihistory`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_posisihistoryall` (
    `id_posisihistoryall` INTEGER NOT NULL AUTO_INCREMENT,
    `no_ktp` VARCHAR(17) NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `kd_outlet` INTEGER NOT NULL,
    `suboutlet` VARCHAR(15) NOT NULL,
    `kd_divisi` INTEGER NOT NULL,
    `kd_jabatan` INTEGER NOT NULL,
    `keterangan` ENUM('Percobaan', 'Kontrak', 'Fix') NOT NULL,
    `dari_tanggal` DATE NOT NULL,
    `sampai_tanggal` DATE NOT NULL,
    `notes` VARCHAR(30) NOT NULL,
    `no_sk` VARCHAR(20) NOT NULL,
    `tanggal_sk` DATE NOT NULL,
    `id_posisihistorykontrak` INTEGER NOT NULL,
    `id_posisihistory` INTEGER NOT NULL,

    PRIMARY KEY (`id_posisihistoryall`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_posisihistorykontrak` (
    `id_posisihistorykontrak` INTEGER NOT NULL AUTO_INCREMENT,
    `no_ktp` VARCHAR(17) NOT NULL,
    `kd_branch` INTEGER NOT NULL,
    `kd_outlet` INTEGER NOT NULL,
    `suboutlet` VARCHAR(15) NOT NULL,
    `kd_divisi` INTEGER NOT NULL,
    `kd_jabatan` INTEGER NOT NULL,
    `keterangan` ENUM('Percobaan', 'Kontrak', 'Fix') NOT NULL,
    `dari_tanggal` DATE NOT NULL,
    `sampai_tanggal` DATE NOT NULL,
    `notes` VARCHAR(30) NOT NULL,

    INDEX `kd_branch`(`kd_branch`),
    INDEX `kd_divisi`(`kd_divisi`),
    INDEX `kd_jabatan`(`kd_jabatan`),
    INDEX `kd_outlet`(`kd_outlet`),
    INDEX `no_ktp`(`no_ktp`),
    PRIMARY KEY (`id_posisihistorykontrak`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_realisasiinvestasi` (
    `id_realisasiinvestasi` INTEGER NOT NULL AUTO_INCREMENT,
    `periode` CHAR(4) NOT NULL,
    `modal_tetap` BIGINT NOT NULL,
    `pembelian_tanah` BIGINT NOT NULL,
    `bangunan` BIGINT NOT NULL,
    `peralatan` BIGINT NOT NULL,
    `lainlain` BIGINT NOT NULL,
    `subjumlah` BIGINT NOT NULL,
    `modalkerja` BIGINT NOT NULL,
    `keterangan` VARCHAR(150) NOT NULL,

    PRIMARY KEY (`id_realisasiinvestasi`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_referensi` (
    `kode_ref` CHAR(3) NOT NULL,
    `nama_ref` VARCHAR(40) NOT NULL,
    `urut_ref` INTEGER NOT NULL,
    `ket` VARCHAR(15) NOT NULL,
    `format` VARCHAR(20) NOT NULL,
    `syarat` INTEGER NOT NULL,

    PRIMARY KEY (`kode_ref`, `ket`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_release` (
    `id_release` INTEGER NOT NULL,
    `release_version` VARCHAR(5) NOT NULL,
    `role_status` ENUM('AKTIF', 'NONAKTIF') NOT NULL,

    PRIMARY KEY (`id_release`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `gnmstakunbank` ADD CONSTRAINT `gnmstakunbank_ibfk_1` FOREIGN KEY (`kd_branch`) REFERENCES `tb_mstbranch`(`kd_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_inventarisperbaikan` ADD CONSTRAINT `tb_inventarisperbaikan_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `tb_mstbaranginventaris`(`kode_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_karyawancuti` ADD CONSTRAINT `tb_karyawancuti_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_karyawansp` ADD CONSTRAINT `tb_karyawansp_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstbaranginventaris` ADD CONSTRAINT `tb_mstbaranginventaris_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_mstbarangkategori`(`id_kategori`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstkaryawanfoto` ADD CONSTRAINT `tb_mstkaryawanfoto_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstkaryawangaji` ADD CONSTRAINT `tb_mstkaryawangaji_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstkonsumen` ADD CONSTRAINT `tb_mstbranch_tbmstkonsumen` FOREIGN KEY (`kd_branch`) REFERENCES `tb_mstbranch`(`kd_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstkonsumen` ADD CONSTRAINT `tb_mstaccount_tbmstkonsumen` FOREIGN KEY (`kode_account`) REFERENCES `tb_mstaccount`(`kode_account`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstoutlet` ADD CONSTRAINT `tb_mstoutlet_ibfk_1` FOREIGN KEY (`kd_branch`) REFERENCES `tb_mstbranch`(`kd_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstpenanggungjawab` ADD CONSTRAINT `tb_mstpenanggungjawab_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `tb_mstbaranginventaris`(`kode_barang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstpenanggungjawab` ADD CONSTRAINT `tb_mstpenanggungjawab_ibfk_2` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_mstsupplier` ADD CONSTRAINT `tb_mstbranch_tomstsupplier` FOREIGN KEY (`kd_branch`) REFERENCES `tb_mstbranch`(`kd_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_payroll_detail` ADD CONSTRAINT `tb_payroll_detail_ibfk_2` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_periode` ADD CONSTRAINT `tb_periode_ibfk_1` FOREIGN KEY (`kd_branch`) REFERENCES `tb_mstbranch`(`kd_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisi` ADD CONSTRAINT `tb_posisi_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisi` ADD CONSTRAINT `tb_posisi_ibfk_2` FOREIGN KEY (`kd_branch`) REFERENCES `tb_mstbranch`(`kd_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisi` ADD CONSTRAINT `tb_posisi_ibfk_3` FOREIGN KEY (`kd_outlet`) REFERENCES `tb_mstoutlet`(`kd_outlet`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisi` ADD CONSTRAINT `tb_posisi_ibfk_4` FOREIGN KEY (`kd_divisi`) REFERENCES `tb_mstdivisi`(`kd_divisi`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisi` ADD CONSTRAINT `tb_posisi_ibfk_5` FOREIGN KEY (`kd_jabatan`) REFERENCES `tb_mstjabatan`(`kd_jabatan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisihistory` ADD CONSTRAINT `tb_posisihistory_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `tb_posisi`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisihistory` ADD CONSTRAINT `tb_posisihistory_ibfk_2` FOREIGN KEY (`kd_branch`) REFERENCES `tb_mstbranch`(`kd_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisihistory` ADD CONSTRAINT `tb_posisihistory_ibfk_3` FOREIGN KEY (`kd_outlet`) REFERENCES `tb_mstoutlet`(`kd_outlet`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisihistory` ADD CONSTRAINT `tb_posisihistory_ibfk_4` FOREIGN KEY (`kd_divisi`) REFERENCES `tb_mstdivisi`(`kd_divisi`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisihistory` ADD CONSTRAINT `tb_posisihistory_ibfk_5` FOREIGN KEY (`kd_jabatan`) REFERENCES `tb_mstjabatan`(`kd_jabatan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisihistorykontrak` ADD CONSTRAINT `tb_posisihistorykontrak_ibfk_1` FOREIGN KEY (`no_ktp`) REFERENCES `tb_mstkaryawan`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `tb_posisihistorykontrak` ADD CONSTRAINT `tb_posisihistorykontrak_ibfk_2` FOREIGN KEY (`no_ktp`) REFERENCES `tb_posisi`(`no_ktp`) ON DELETE NO ACTION ON UPDATE NO ACTION;
