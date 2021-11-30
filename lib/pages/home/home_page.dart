import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 3, blurRadius: 5),
                    ],
                    image: DecorationImage(
                        image: AssetImage('images/img_home.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 155),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // SizedBox(width: 40),
                          Text(
                            'selamat datang',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'fulan',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      // Spacer() ->optional for overflow
                      SizedBox(width: 56),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'total gaji bulan ini',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'RP.100.000,0',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 26),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'konten Harian',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.7,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
              items: ["bau", 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.grey),
                        child: Text(
                          ' $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
