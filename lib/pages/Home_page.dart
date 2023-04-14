import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menu() {
      Widget musicCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(left: 16),
          height: 142,
          width: 170,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
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
                  alignment: Alignment(-1, -0.5), image: AssetImage(img))),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/arah panah.png"))),
                )
              ],
            ),
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              const SizedBox(
                height: 10,
              ),
              musicCard("assets/plant_white_bg.png", "Plant"),
              const SizedBox(
                width: 24,
              ),
              musicCard("assets/lamp_white_bg.png", "Lamp"),
              const SizedBox(
                width: 24,
              ),
              musicCard("assets/chair_white_bg.png", "Chair"),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
        ),
      );
    }

    Widget daftar() {
      Widget musicCard(String img1, String img2, String text1, String text2,
          String emot, String harga1, String harga2) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(img1),
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 180,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.5),
                              ])),
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          harga1,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(img2),
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 180,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.5),
                              ])),
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: EdgeInsets.only(left: 4, bottom: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text2,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                harga2,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(emot),
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            musicCard(
                "assets/favorite_img_4.jpg",
                "assets/favorite_img_2.jpg",
                "Cactus",
                "Ttraditional Chair",
                "assets/love2.png",
                "\$12",
                "\$24"),
            musicCard(
                "assets/favorite_img_3.jpeg",
                "assets/favorite_img_1.jpg",
                "Wooden Chair",
                "Elegant Lamp",
                "assets/love1.png",
                "\$30",
                "\$5"),
            musicCard(
                "assets/favorite_img_5.jpg",
                "assets/favorite_img_6.jpg",
                "Beach Beautiful",
                "Architectural",
                "assets/love2.png",
                "\$10",
                "\$50"),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "Discover",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  hintText: "What are you looking for?",
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Category",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            menu(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Hot Item",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            daftar(),
          ],
        ),
      )),
    );
  }
}
