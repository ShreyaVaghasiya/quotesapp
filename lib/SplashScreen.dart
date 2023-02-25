import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotesapp/HomePage.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Color(0xff0f3443),
        child: AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
          splash: Text(
            "        “Inspiration does exist,\nbut it must find you working.”",
            style: GoogleFonts.robotoSlab(
              fontSize: 25,
              color: CupertinoColors.extraLightBackgroundGray,
              fontWeight: FontWeight.bold,
            ),

          ),
          animationDuration: Duration(seconds: 5),
          nextScreen: Home_Page(),
        ),
      ),
    );
  }
}
