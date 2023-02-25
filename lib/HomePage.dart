import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotesapp/DatabaseHelp/databaseHelperClass.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:quotesapp/UtilsPage.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
 final dbHelper1 =  DatabaseHelper1.instance;
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: CupertinoColors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        CupertinoIcons.line_horizontal_3_decrease,
                        size: 25,
                        color: CupertinoColors.black,
                      ),
                    )),
                Text("Qutes Saying",style: GoogleFonts.ptSerif(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Padding(padding: EdgeInsets.all(50)),
                Icon(CupertinoIcons.bell_fill,color: CupertinoColors.systemYellow,size: 30,),
                Padding(padding: EdgeInsets.all(15)),
                Icon(CupertinoIcons.heart_fill,color: CupertinoColors.systemRed,size: 30,),
              ],
            ),
            Container(
              height: h/4,
              width: w,
              child: PageView(
                children: AppUtils.CarasoulList,

                onPageChanged: (index){
                  setState(() {
                     pageIndex=index;
                  });
                },
              ),
            ),
            SizedBox(height: 10,),
            CarouselIndicator(
              width: 8,
              height: 8,
              color: Colors.black26,
              activeColor: Colors.black54,
              count: AppUtils.CarasoulList.length,
              index: pageIndex,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){

                        Navigator.of(context).pushNamed('category');



                      },
                      child: Container(
                        height: h/15,
                        width: w/7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA7727D),
                        ),
                        child: Center(
                          child: Icon(Icons.widgets_rounded,size: 30,color: CupertinoColors.white,),
                        ),
                      ),
                    ),  SizedBox(height: 5,),
                    Text("Categories",style: GoogleFonts.lato(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: CupertinoColors.black
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: h/15,
                      width: w/7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff86A3B8),
                      ),
                      child: Center(
                        child: Icon(Icons.image_rounded,size: 30,color: CupertinoColors.white,),
                      ),
                    ),   SizedBox(height: 5,),Text("Pic Quotes",style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: CupertinoColors.black
                    ),)
                  ],
                ), Column(
                  children: [
                    Container(
                      height: h/15,
                      width: w/7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffD3756B),
                      ),
                      child: Center(
                        child: Icon(Icons.local_attraction_rounded,size: 30,color: CupertinoColors.white,),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Latest",style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: CupertinoColors.black
                    ),)
                  ],
                ), Column(
                  children: [
                    Container(
                      height: h/15,
                      width: w/7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff61876E),
                      ),
                      child: Center(
                        child: Icon(Icons.article_rounded,size: 30,color: CupertinoColors.white,),
                      ),
                    ),  SizedBox(height: 5,), Text("Articles",style: GoogleFonts.lato(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: CupertinoColors.black
                    ),)
                  ],
                ),

              ],
            ),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Most Popular",style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  color: CupertinoColors.black
                ),),
              ),
            ),
            Row(
              children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 10.0,left: 15,right: 4),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: h/6,
                               width: w/2.3,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10),
                                   child: Image(image: AssetImage("assets/myimages/inspi.png"),fit: BoxFit.contain,))),
                           Text("Inspiration Qutes",style: GoogleFonts.lato(
                               fontSize: 15,
                               fontWeight: FontWeight.bold,
                               color: CupertinoColors.black
                           ),),
                         ],
                       ),
                     ),
                Padding(
                  padding:  EdgeInsets.only(top: 10.0,left: 4,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: h/7,
                          width: w/2.2,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(image: AssetImage("assets/myimages/love.png"),fit: BoxFit.contain,))),
                      Padding(padding: EdgeInsets.all(4)),
                      Text("    Love Qutes",style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.black
                      ),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 15,right: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: h/6,
                          width: w/2.3,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(image: AssetImage("assets/myimages/positive.png"),fit: BoxFit.contain,))),
                      Text("Positive Qutes",style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.black
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 10.0,left: 4,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: h/7,
                          width: w/2.2,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(image: AssetImage("assets/myimages/success.png"),fit: BoxFit.contain,))),
                      Padding(padding: EdgeInsets.all(4)),
                      Text("    Success Qutes",style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.black
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
      ),
    );
  }
}
