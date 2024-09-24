import 'dart:io';

import 'Appointment.dart';
import 'doctor.dart';

void main() {
  String? pilihan_doctor;
  int? index_dokter;
  String? nama_pasien;
  String? date;
  String? time;
  List<Doctor> doctors = [
    Doctor('Budi', 'Bedah jantung', 10000),
    Doctor('Ayu', 'Penyakit dalam', 5000),
    Doctor('Alif', 'kulit', 3000),
  ];
  List<Appointment> appointments = [];

  bool running = true;
  while (running) {
    print("Menu");
    print("1. Daftar doctor");
    print("2. Buat janji temu");
    print("3. Lihat janji temu");
    print("4. Keluar");
    stdout.write('Pilih opsi: ');
    String? pilihan = stdin.readLineSync();
    if (pilihan == '1') {
      print('\nDaftar Dokter');
      (doctors.isEmpty)
          ? print('Belum ada dokter yang tersedia.')
          : doctors.asMap().forEach((index, doctor) {
              print('${index + 1}. ${doctor.keterangan()}');
            });
    } else if (pilihan == '2') {
      print('\nDaftar DOkter');
      (doctors.isEmpty)
          ? print('Belum ada dokter yang tersedia.')
          : doctors.asMap().forEach((index, doctor) {
              print('${index + 1}. ${doctor.keterangan()}');
            });
      stdout.write('Masukkan nomor dokter ');
      pilihan_doctor = stdin.readLineSync();
      index_dokter = int.tryParse(pilihan_doctor ?? '');
      if (index_dokter != null &&
          index_dokter > 0 &&
          index_dokter <= doctors.length) {
        stdout.write('Masukkan nama pasien ');
        nama_pasien = stdin.readLineSync();
        stdout.write('Masukkan tanggal janji temu (dd/mm/yyyy) >> ');
        date = stdin.readLineSync();
        stdout.write('Masukkan waktu janji temu (hh:mm) >> ');
        time = stdin.readLineSync();
        if (nama_pasien != null && date != null && time != null) {
          appointments.add(Appointment(
              doctor: doctors[index_dokter - 1],
              nama_pasien: nama_pasien,
              date: date,
              time: time));
          print('Janji temu berhasil dibuat');
        } else {
          print('inputan tidak Valid');
        }
      } else {
        print('pilihan dokter tidak valid!');
      }
    } else if (pilihan == '3') {
      print('\nDaftar Janji Temu');
      (appointments.isEmpty)
          ? print('Belum ada janji temu')
          : appointments
              .forEach((appointment) => print(appointment.keterangan()));
    } else if (pilihan == '4') {
      running = false;
      print('Terima kasih telah menggunakan aplikasi ini.');
    } else {
      print('pilihan tidak valid.');
    }
  }
}
