import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "Medical App!",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(right: 20, top: 40, bottom: 20, left: 20),
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.only(left: 10, right: 20),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 16.0, left: 16.0, right: 16.0, bottom: 5),
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Ini adalah Deskripsi dalam pertemuan 2 praktikum Mobile, dimana nanti akan ditaruh untuk deskripsi yang mungkin bisa digunakan',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 7,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Daftar Sekarang!',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Text(
                  'Halo Praktikan Ganjil!',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Text(
                  'Halo Praktikan Ganjil!',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Text(
                  'Halo Praktikan Ganjil!',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
