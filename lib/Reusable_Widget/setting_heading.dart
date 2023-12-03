import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';

class CardHeading extends StatelessWidget {
  final String title;
  final IconData icon;


  const CardHeading({super.key, required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: secondary,),
        horizontalSpace(0.03),
        Text(title,style: headingStyle(),)
      ],
    );
  }
}
