CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
    );

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki','perempuan') NOT NULL,
    tempat_lahir varchar(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- input jurusan--
insert into jurusan(kode, nama) values ("APBL", "Administrasi Publik");
insert into jurusan(kode, nama) values ("PTIF", "Pendidikan Teknik Informatika");

-- input data mahasiswa--
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir,tanggal_lahir, alamat) value (1,"20220001", "Putri", "perempuan", "Surabaya", "2000-12-12", "Jl. Tunjungan 20");
 insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir,tanggal_lahir, alamat) value (2,"20220002", "Putra", "laki-laki", "Surabaya", "2000-05-15", "Jl.A Yani 75");

-- hapus tabel--
drop table mahasiswa;

-- deskripsi tabel--
desc mahasiswa;

