import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';

class WorkLog extends StatefulWidget {
  const WorkLog({super.key});

  @override
  State<WorkLog> createState() => _WorkLogState();
}

class _WorkLogState extends State<WorkLog> {
  @override
  Widget build(BuildContext context) {
    List<String> _listText=[
      "Your Job Hours Today",
      "Total Working Hours"
    ];
    List<Icon> _listIcons=[
      Icon(CupertinoIcons.xmark_circle_fill,color: secondary,size: SizeConfig.screenWidth*0.5,),
      Icon(CupertinoIcons.xmark_square_fill,color: secondary,size: SizeConfig.screenWidth*0.5,),
    ];
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Text("WorkLog",style: GoogleFonts.inder(color: secondary),),
      ),
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        color: primary,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Heading
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.xmark_square_fill,color: secondary,),
                    Text("Username",style: GoogleFonts.inder(color: secondary))
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight*0.020),
              //ListView
              SizedBox(
                height: SizeConfig.screenHeight*0.4,
                width: SizeConfig.screenWidth,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: _listText.length,
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Text(softWrap: true,_listText[index],style: GoogleFonts.inder(
                            color: secondary,
                          ),),
                          _listIcons[index],
                        ],
                      ),
                    ),
                  );

                }),
              ),
              SizedBox(height: SizeConfig.screenHeight*0.010,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Overtime (Optional)",style: GoogleFonts.inder(color: secondary))
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: SizeConfig.screenWidth,
                child: const Placeholder(),
              ),
              SizedBox(height: SizeConfig.screenHeight*0.010,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("No. Of Days Working",style: GoogleFonts.inder(color: secondary))
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: SizeConfig.screenWidth,
                child: const Placeholder(),
              ),
              SizedBox(height: SizeConfig.screenHeight*0.010,),
              //Months Work
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Months Work",style: GoogleFonts.inder(color: secondary))
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: SizeConfig.screenWidth,
                child: const Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
