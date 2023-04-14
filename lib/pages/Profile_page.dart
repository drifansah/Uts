import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    Widget daftarmenu() {
      Widget card(String img1, String img2, String text1, String text2,
          Color warna1, Color warna2) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: 150,
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                          ),
                        ],
                        image: DecorationImage(
                            alignment: Alignment(-1, -0.5),
                            image: AssetImage(img1))),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text1,
                            style: GoogleFonts.poppins(
                              color: const Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(colors: [
                          warna1.withOpacity(0.5),
                          warna1.withOpacity(0.5),
                        ])),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: 150,
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                          ),
                        ],
                        image: DecorationImage(
                            alignment: Alignment(-1, -0.5),
                            image: AssetImage(img2))),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text2,
                            style: GoogleFonts.poppins(
                              color: const Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(colors: [
                          warna2.withOpacity(0.5),
                          warna2.withOpacity(0.5),
                        ])),
                  )
                ],
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          card("assets/chair_white_bg.png", "assets/lamp_white_bg.png",
              "Best Chairs", "Best lamps", Colors.blue, Colors.white),
          SizedBox(
            height: 16,
          ),
          card("assets/chair_white_bg.png", "assets/plant_white_bg.png",
              "Best Chairs", "Plant Choice", Colors.white, Colors.red),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/gambar.jpeg"))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Dede Rifansah",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                "Mobile Application Developer",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(tabs: [
                      Tab(
                        child: Text(
                          "10518 Collection",
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "222 History",
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              daftarmenu(),
            ],
          ),
        ),
      ),
    );
  }
}
