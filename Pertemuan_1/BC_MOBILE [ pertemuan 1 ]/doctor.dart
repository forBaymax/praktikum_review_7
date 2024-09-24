import 'dart:io';

class Doctor {
  String nama;
  String? no_telepon;
  int? gaji;
  Doctor({
    required this.nama,
    this.no_telepon,
    this.gaji
  });
  @override
  String keterangan(){
    return 'Nama : $nama\nNo Telepon : $no_telepon\nGaji : $gaji';
  }
}