import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9FF97),
      body: ListView(
        children: [
          Container(
            width: 100,
            height: 77,
            // color: Colors.yellow,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 5, 10, 0),
                      child: Text(
                        'Hello, ',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 0, 10, 7),
                      child: Text(
                        'Jerome Bell',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 112),
                Container(
                  width: 58,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage("assets/dandadan.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 170,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD18E),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  width: 110,
                  height: 170,
                  margin: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/dokter.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 165,
                  height: 170,
                  // color: Colors.red,
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        "How do you fell?",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Fill out your medical\ncard right now",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 40,
                        margin: const EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF7EE2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
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
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD18E),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "How can we help you?",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 85,
            color: Colors.black,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: ListView(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD18E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: FaIcon(
                            FontAwesomeIcons.tooth,
                            size: 20,
                          ),
                        ),
                        Text(
                          "Dentist",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD18E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: FaIcon(
                            FontAwesomeIcons.bedPulse,
                            size: 20,
                          ),
                        ),
                        Text(
                          "inpatient",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD18E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: FaIcon(
                            FontAwesomeIcons.lungs,
                            size: 20,
                          ),
                        ),
                        Text(
                          "lungs",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD18E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: FaIcon(
                            FontAwesomeIcons.brain,
                            size: 20,
                          ),
                        ),
                        Text(
                          "neurosurgery",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Doctor list',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Text(
                  'see All',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(top: 23, bottom: 20),
                  width: 140,
                  height: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD18E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 85,
                            height: 85,                            
                          ),
                          Positioned(
                            left: 8,
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFA38F),
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                  image: AssetImage("assets/dokter_cewe.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 19.5,
                            child: Center(
                              child: Container(
                                width: 45,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF7EE2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons
                                          .solidStar, // Ikon bintang dari FontAwesome
                                      color: Color(0xFFE9FF97),
                                      size: 10,
                                    ),
                                    Text(
                                      '4.5', // Rating
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Dr. Arline McCoy',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Philadelphia, 27 y.e.',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(top: 23, bottom: 20),
                  width: 140,
                  height: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD18E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          const SizedBox(
                            width: 85,
                            height: 85,
                          ),
                          Positioned(
                            left: 8,
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFA38F),
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                  image: AssetImage("assets/dokter_cowo.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 19.5,
                            child: Center(
                              child: Container(
                                width: 45,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF7EE2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons
                                          .solidStar, // Ikon bintang dari FontAwesome
                                      color: Color(0xFFE9FF97),
                                      size: 10,
                                    ),
                                    Text(
                                      '5.0', // Rating
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Dr. Jhonny Sins',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Washington, 23 y.e.',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(top: 23, bottom: 20),
                width: 140,
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD18E),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        const SizedBox(
                          width: 85,
                          height: 85,
                        ),
                        Positioned(
                          left: 8,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFA38F),
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image: AssetImage("assets/dokter_cewe.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 19.5,
                          child: Center(
                            child: Container(
                              width: 45,
                              height: 25,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFF7EE2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons
                                        .solidStar, // Ikon bintang dari FontAwesome
                                    color: Color(0xFFE9FF97),
                                    size: 10,
                                  ),
                                  Text(
                                    '4.5', // Rating
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Dr. Arline McCoy',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Philadelphia, 27 y.e.',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(top: 23, bottom: 20),
                width: 140,
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD18E),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        const SizedBox(
                          width: 85,
                          height: 85,
                        ),
                        Positioned(
                          left: 8,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFA38F),
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image: AssetImage("assets/dokter_cowo.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 19.5,
                          child: Center(
                            child: Container(
                              width: 45,
                              height: 25,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFF7EE2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons
                                        .solidStar, // Ikon bintang dari FontAwesome
                                    color: Color(0xFFE9FF97),
                                    size: 10,
                                  ),
                                  Text(
                                    '5.0', // Rating
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Dr. Jhonny Sins',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Washington, 23 y.e.',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
