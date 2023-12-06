import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/job_card.dart';
import 'package:metro_pat/Reusable_Widget/job_card2.dart';
import 'package:metro_pat/Reusable_Widget/search_input.dart';
import '../../Constants/constants.dart';
class JobModule extends StatefulWidget {
  const JobModule({super.key});

  @override
  State<JobModule> createState() => _JobModuleState();
}

class _JobModuleState extends State<JobModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: const Text('Jobs Module',style: TextStyle(
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
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                verticalSpace(0.01),
                const SearchField(),
                verticalSpace(0.05),
                const JobCard1(title: 'Date'),
                verticalSpace(0.04),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                    return JobCard2(title1: 'Lorem text', title2: 'Job${index+1}');
                  },),
                ),
                verticalSpace(0.03),
                const JobCard1(title: 'Date'),
                verticalSpace(0.04),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return JobCard2(title1: 'Lorem text', title2: 'Job${index+1}');
                    },),
                ),
                verticalSpace(0.03),
                const JobCard1(title: 'Date'),
                verticalSpace(0.04),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return JobCard2(title1: 'Lorem text', title2: 'Job${index+1}');
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
