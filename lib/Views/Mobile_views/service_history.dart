import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/sevice_card.dart';
import '../../Constants/constants.dart';
import '../../Reusable_Widget/search_input.dart';

class ServiceHistory extends StatefulWidget {
  const ServiceHistory({super.key});

  @override
  State<ServiceHistory> createState() => _ServiceHistoryState();
}

class _ServiceHistoryState extends State<ServiceHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: const Text('Service History',style: TextStyle(
            color: secondary,
            fontSize: headingSize
        ),),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.close,color: secondary,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const SearchField(),
                ),
                verticalSpace(0.01),
                Text('Today',style: headingStyle1(color1: secondary),),
                verticalSpace(0.01),
                Container(
                  // height: SizeConfig.screenHeight*0.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                    return const ServiceCard();
                  },),
                ),
                verticalSpace(0.01),
                Text('Date',style: headingStyle1(color1: secondary),),
                verticalSpace(0.01),
                Container(
                  // height: SizeConfig.screenHeight*0.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ServiceCard();
                    },),
                ),
                Text('Date',style: headingStyle1(color1: secondary),),
                verticalSpace(0.01),
                Container(
                  // height: SizeConfig.screenHeight*0.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const ServiceCard();
                    },),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
