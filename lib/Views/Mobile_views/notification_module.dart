import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/notification_card.dart';

import '../../Constants/constants.dart';
class NotificationModule extends StatefulWidget {
  const NotificationModule({super.key});

  @override
  State<NotificationModule> createState() => _NotificationModuleState();
}

class _NotificationModuleState extends State<NotificationModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: const Text('Notification Module',style: TextStyle(
            color: secondary,
            fontSize: headingSize
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.close,color: secondary,))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(

                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    fillColor: secondary,
                    filled: true,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w400
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.02,
                ),
                const Text('Recent',style: TextStyle(
                  color: secondary,
                  fontSize: extraHeadingSize
                ),),
                SizedBox(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight*0.4,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                    return const NotificationCard(title: 'Lorum ipsum', text: 'Lorum ipsum, Lorum ipsum, Lorum ipsum');
                  },),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.01,
                ),
                const Text('This Weak',style: TextStyle(
                    color: secondary,
                    fontSize: extraHeadingSize
                ),),
                SizedBox(
                  height: SizeConfig.screenHeight*0.01,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth,

                  child: ListView.builder(
                    itemCount: 7,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const NotificationCard(title: 'Lorum ipsum', text: 'Lorum ipsum, Lorum ipsum, Lorum ipsum');
                    },),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
