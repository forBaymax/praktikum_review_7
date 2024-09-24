import 'doctor.dart';
class Appointment {
  Doctor doctor;
  String ? nama_pasien, date, time;
  Appointment( 
    {
      required this.doctor,
      this.nama_pasien,
      this.date,
      this.time
    }
  );
  @override
  String keterangan(){
    return 'Nama Pasien: $nama_pasien\n Nama Dokter: ${doctor.name}\n tanggal: $date time: $time';
  }
}