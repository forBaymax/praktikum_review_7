import 'dart:io';

class Doctor {
  String? name;
  String? specialty;
  double? biaya_bayar;
  Doctor(this.name, this.specialty, this.biaya_bayar);
  @override
  String keterangan(){
    return "Nama Dokter: $name\nSpesialis: $specialty\nBiaya: $biaya_bayar";
  }
}