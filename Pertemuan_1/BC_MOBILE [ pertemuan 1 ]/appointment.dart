import 'doctor.dart';

class Appointment {
  Doctor dokter;
  String? nama_pasien, date, time;
  Appointment(
    {
      required this.dokter,
      this.nama_pasien,
      this.date,
      this.time
    }
  );
  @override
  String keterangan(){
    return "Nama Pasien: $nama_pasien\nTanggal: $date\nJam: $time";
  }
}