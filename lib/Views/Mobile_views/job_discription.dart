import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';

import '../../Constants/constants.dart';
class JobDiscription extends StatefulWidget {
  const JobDiscription({super.key});

  @override
  State<JobDiscription> createState() => _JobDiscriptionState();
}

class _JobDiscriptionState extends State<JobDiscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: const Text('Job Description',style: TextStyle(
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
                verticalSpace(0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),

                          color: secondary
                      ),
                      width: SizeConfig.screenWidth*0.3,
                      height: SizeConfig.screenHeight*0.04,
                      child: Center(child: Text('Job1',style: headingStyle1(),)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      width: SizeConfig.screenWidth*0.2,
                      height: SizeConfig.screenHeight*0.03,
                      child: const Center(
                        child: Text('START',style: TextStyle(
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                    )
                  ],
                ),
                verticalSpace(0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text('Time',style: headingStyle(),),
                        Container(
                          decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          width: SizeConfig.screenWidth*0.2,
                          height: SizeConfig.screenHeight*0.03,
                          child: const Center(
                            child: Text('8 Hour',style: TextStyle(
                                fontWeight: FontWeight.w700
                            ),),
                          ),
                        )
                      ],
                    )

                  ],
                ),
                verticalSpace(0.02),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Lorum ipsum',style: headingStyle(color1: primary,fontWeight1: FontWeight.w600),),
                      horizontalSpace(0.04),
                      Text('JOB 1',style: headingStyle(color1: primary,fontWeight1: FontWeight.w600),)
                    ],
                  ),
                ),
                verticalSpace(0.02),
                Text('Job description ',style: headingStyle1(color1: secondary),),
                verticalSpace(0.005),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem Ipsum passage is,'),

                ),
                verticalSpace(0.02),
                Text('Address ',style: headingStyle1(color1: secondary),),
                verticalSpace(0.005),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                  decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                ),
                verticalSpace(0.02),
                Text('Contact',style: headingStyle1(color1: secondary),),
                verticalSpace(0.005),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: secondary
                  ),
                  child: Column(
                    children: [
                      Text('XXXXXXXXXXXXXX',style: headingStyle1(),),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.message),
                          Icon(Icons.whatshot),
                          Icon(Icons.phone)
                        ],
                      )
                    ],
                  ),
                ),
                verticalSpace(0.02),
                Text('Geo Location',style: headingStyle1(color1: secondary),),
                verticalSpace(0.005),
                Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://staticmapmaker.com/img/google-placeholder.png')
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
