import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class JobCard1 extends StatelessWidget {
  final String title;

  const JobCard1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.8,
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Center(child: Text(title,style: headingStyle1(),)),
    );
  }
}
