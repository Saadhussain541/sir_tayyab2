import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class SettingCard extends StatelessWidget {
  final String title;
  final IconData icon;


  const SettingCard({super.key, required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: headingStyle(),),
        Icon(icon,color: secondary,)
      ],
    );
  }
}
