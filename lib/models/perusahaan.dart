part of 'models.dart';

class Perusahaan {
  final int id;
  final String nama;
  final String gambar;
  final String posisi;
  final int gaji;
  final String alamat;
  final String pendidikan;
  final String jamkerja;
  final String deadline;

  Perusahaan({
    this.id,
    this.nama,
    this.gambar,
    this.posisi,
    this.gaji,
    this.alamat,
    this.pendidikan,
    this.jamkerja,
    this.deadline,
  });
}

List<Perusahaan> mockPerusahaan = [
  Perusahaan(
    id: 1,
    nama: 'Seven Inc',
    gambar: 'assets/logo_tokped.png',
    posisi: 'Front-End Mobile',
    gaji: 5000000,
    alamat: 'Jalan Ring Road',
    pendidikan: 'S1',
    jamkerja: 'Full Time',
    deadline: '29-04-2021',
  ),
  Perusahaan(
    id: 2,
    nama: 'Twelve Inc',
    gambar: 'assets/logo_bni.png',
    posisi: 'Front-End Mobile',
    gaji: 5000000,
    alamat: 'Jalan Ring Road',
    pendidikan: 'S1',
    jamkerja: 'Part Time',
    deadline: '29-04-2021',
  ),
  Perusahaan(
    id: 3,
    nama: 'Four Inc',
    gambar: 'assets/logo_rg.png',
    posisi: 'Front-End Mobile',
    gaji: 5000000,
    alamat: 'Jalan Ring Road',
    pendidikan: 'S1',
    jamkerja: 'Part Time',
    deadline: '29-04-2021',
  ),
  Perusahaan(
    id: 4,
    nama: 'One Inc',
    gambar: 'assets/logo_bni.png',
    posisi: 'Front-End Mobile',
    gaji: 5000000,
    alamat: 'Jalan Ring Road',
    pendidikan: 'S1',
    jamkerja: 'Full Time',
    deadline: '29-04-2021',
  ),
];
