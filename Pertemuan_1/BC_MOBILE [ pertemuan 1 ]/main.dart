import 'dart:io';

import 'appointment.dart';
import 'doctor.dart';

void main(){
  List<Doctor> data_dokter = [
    Doctor(nama: 'Dr. John Doe', no_telepon: '1111', gaji: 10000),
    Doctor(nama: 'Jamal', no_telepon: '1234', gaji: 50000),
    Doctor(nama: 'Dewa', no_telepon: '6969', gaji: 1000),
  ];
  List<Appointment> data_janji_temu = [];

  bool running = true;
  while (running) {
    print('1. Lihat data dokter');
    print('2. Buat janji temu');
    print('3. lihat janji temu');
    print('4.keluar');
    stdout.write('masukkan pilihan anda >> ');
    String? pilihan = stdin.readLineSync();
    if (pilihan == '1') { 
      print('\n Daftar dokter');
      (data_dokter.isEmpty) 
      ? print('belum ada data dokter!')
      :  data_dokter.asMap().forEach((index, doctor){
        print('${index + 1}. ${doctor.keterangan()}');
      });
    }
    else if(pilihan == '2'){
      print('\n Daftar dokter');
      (data_dokter.isEmpty) 
      ? print('belum ada data dokter!')
      :  data_dokter.asMap().forEach((index, doctor){
        print('${index + 1}. ${doctor.keterangan()}');
      });
      stdout.write('masukkan nomor dokter >> ');
      String? pilih_dokter = stdin.readLineSync();
      int? pilihan_dokter = int.tryParse(pilih_dokter ?? '');
      if(pilihan_dokter != null && pilihan_dokter > 0 && pilihan_dokter <= data_dokter.length){
        stdout.write('masukkan nama pasien : ');
        String? nama_pasien = stdin.readLineSync();
        stdout.write('masukkan tanggal janji temu (yyyy-mm-dd) : ');
        String? tanggal_janji_temu = stdin.readLineSync();
        stdout.write('masukkan jam janji temu (HH : mm) : ');
        String? jam_temu = stdin.readLineSync();
        if (nama_pasien != null && tanggal_janji_temu != null && jam_temu != null){
          data_janji_temu.add(
            Appointment(dokter: data_dokter[pilihan_dokter - 1], nama_pasien: nama_pasien, date: tanggal_janji_temu, time: jam_temu)
          );
          print('janji temu telah dibuat');
        }
      }
    }
  }
}