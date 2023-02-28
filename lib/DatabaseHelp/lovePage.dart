import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotesapp/UtilsPage.dart';

class Love_Page extends StatefulWidget {
  const Love_Page({Key? key}) : super(key: key);

  @override
  State<Love_Page> createState() => _Love_PageState();
}

class _Love_PageState extends State<Love_Page> {
  dynamic  myColor =  LinearGradient(colors: [
    Color(0xff42275a),
    Color(0xff734b6d),
  ]);
  @override
  Widget build(BuildContext context) {
    List gradientList = [
      LinearGradient(colors: [
        Color(0xff141E30),
        Color(0xff243B55),
      ]),
      LinearGradient(colors: [
        Color(0xff0B486B),
        Color(0xffF56217),
      ]),
      LinearGradient(colors: [
        Color(0xff1D4350),
        Color(0xffA43931),
      ]),
      LinearGradient(colors: [
        Color(0xffBA5370),
        Color(0xffF4E2D8),
      ]),

    ];
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              CupertinoIcons.back,
              size: 30,
              color: CupertinoColors.black,
            )),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: h / 3.5,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                gradient: myColor,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "${AppUtils.quoteList[3]['quotes']}",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: h / 20,
            width: w,
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                    setState(() {
                      Random r = Random();
                      int n;
                      n = r.nextInt(4);
                      myColor = gradientList[n];
                    });
                    },
                    child: Icon(
                      CupertinoIcons.circle_grid_hex_fill,
                      color: CupertinoColors.activeOrange,
                      size: 25,
                    )),
                Icon(
                  CupertinoIcons.down_arrow,
                  color: CupertinoColors.activeGreen,
                  size: 25,
                ),
                Icon(
                  CupertinoIcons.share_solid,
                  color: CupertinoColors.systemRed,
                  size: 25,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        AppUtils.fvrList.add(AppUtils.quoteList[3]);
                        print(AppUtils.fvrList);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: CupertinoColors.activeBlue,
                      size: 25,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: h / 3.5,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                gradient: LinearGradient(colors: [
                  Color(0xff42275a),
                  Color(0xff734b6d),
                ]),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "${AppUtils.quoteList[4]['quotes']}",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: h / 20,
            width: w,
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.circle_grid_hex_fill,
                  color: CupertinoColors.activeOrange,
                  size: 25,
                ),
                Icon(
                  CupertinoIcons.down_arrow,
                  color: CupertinoColors.activeGreen,
                  size: 25,
                ),
                Icon(
                  CupertinoIcons.share_solid,
                  color: CupertinoColors.systemRed,
                  size: 25,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        AppUtils.fvrList.add(AppUtils.quoteList[4]);
                        print(AppUtils.fvrList);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: CupertinoColors.activeBlue,
                      size: 25,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: h / 3.5,
              width: w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  gradient: LinearGradient(colors: [
                    Color(0xff42275a),
                    Color(0xff734b6d),
                  ])),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "${AppUtils.quoteList[5]['quotes']}",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: h / 20,
            width: w,
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    child: Icon(
                  CupertinoIcons.circle_grid_hex_fill,
                  color: CupertinoColors.activeOrange,
                  size: 25,
                )),
                Icon(
                  CupertinoIcons.down_arrow,
                  color: CupertinoColors.activeGreen,
                  size: 25,
                ),
                Icon(
                  CupertinoIcons.share_solid,
                  color: CupertinoColors.systemRed,
                  size: 25,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        AppUtils.fvrList.add(AppUtils.quoteList[5]);
                        print(AppUtils.fvrList);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: CupertinoColors.activeBlue,
                      size: 25,
                    )),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
