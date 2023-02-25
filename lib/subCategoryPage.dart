import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'DatabaseHelp/databaseHelperClass.dart';
import 'Model class.dart';

class subCategory_Page extends StatefulWidget {
  const subCategory_Page({Key? key}) : super(key: key);

  @override
  State<subCategory_Page> createState() => _subCategory_PageState();
}

class _subCategory_PageState extends State<subCategory_Page> {
  final dbHelper1 = DatabaseHelper1.instance;

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    dynamic number_index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
        body: FutureBuilder<List<QuotesModel>>(
            future: dbHelper1.getQuotes(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: h/3,
                          width: w/1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(10),
                               child: Image.memory(snapshot.data![index].pict!)),
                              Positioned(
                                top: h/8,
                                left: w/18,
                                child: Text("\"${snapshot.data![index].quotes}\"",style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.white,
                                ),),
                              ),
                              Positioned(
                                top: h/4.2,
                                left: w/450,
                                child: Container(
                                  height: h/12,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: CupertinoColors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                        Icon(CupertinoIcons.circle_grid_hex_fill,color: CupertinoColors.activeOrange,size: 25,),
                                        Icon(CupertinoIcons.down_arrow,color: CupertinoColors.activeGreen,size: 25,),
                                        Icon(CupertinoIcons.share_solid,color: CupertinoColors.systemRed,size: 25,),
                                        Icon(CupertinoIcons.star_fill,color: CupertinoColors.activeBlue,size: 25,),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Container(
                alignment: AlignmentDirectional.center,
                child: CircularProgressIndicator(),
              );
            }));
  }
}
