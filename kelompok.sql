create database rumahsakit;

use rumahsakit;

create table pasien(
    id_pasien char(5) PRIMARY KEY,
    nama_pasien varchar(25),
    alamat_pasien varchar(50),
    penyakit_pasien varchar(25)
);

create table dokter(
    id_dokter char(5) PRIMARY KEY,
    nama_dokter VARCHAR(25),
    spesialisasi VARCHAR(100),
    no_telepon VARCHAR(15),
    email VARCHAR(30)
);

create table rekam_medis(
    id_rekam_medis char(5) PRIMARY KEY,
    id_pasien char(5),
    id_dokter char(5),
    tanggal_pemeriksaan DATE,
    penyakit_diagnosis VARCHAR(100),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
);

create table obat (
    id_resep char(5) PRIMARY KEY,
    id_rekam_medis char(5),
    nama_obat VARCHAR(25),
    tanggal_resep DATE,
    FOREIGN KEY (id_rekam_medis) REFERENCES rekam_medis(id_rekam_medis)
);

INSERT INTO pasien VALUES(
    'D-001',
    "Alif",
    "Jalan sekarwangi jakarta barat",
    "Cacar air"
),(
    'D-002',
    "Budi",
    "Jalan Mawar putih Bali",
    "Influenza"
),(
    'D-003',
    "Caca",
    "Jalan Setia makmur kalimantan",
    "Pneumonia"
);

INSERT INTO dokter VALUES(
    'E-001',
    "Dokter Rama",
    "Spesialis penyakit kulit",
    "081523487234",
    "Rama10@gmail.com"
),(
    'E-002',
    "Dokter Anwar",
    "Spesialis penyakit menular",
    "087223783913",
    "Anwarhadi12@gmail.com"
),(
    'E-003',
    "Dokter Risma",
    "Spesialis penyakit Syaraf",
    "088927145912",
    "Rismawanti92@gmail.com"
);

INSERT INTO rekam_medis VALUES(
    'F-001',
    'D-002',
    'E-002',
    "2024-05-09",
    "Influenza"
),(
    'F-002',
    'D-003',
    'E-003',
    "2024-05-10",
    "Pneumonia"
),(
    'F-003',
    'D-001',
    'E-001',
    "2024-05-11",
    "Cacar air"
);

INSERT INTO obat VALUES(
    'G-001',
    'F-003',
    "Kalamin",
    "2024-05-11"
),(
    'G-002',
    'F-001',
    "Ultraflu",
    "2024-05-09"
),(
    'G-003',
    'F-002',
    "Aspirin",
    "2024-05-10"
);

select * from pasien;
select * from dokter;
select * from rekam_medis;
select * from obat;
