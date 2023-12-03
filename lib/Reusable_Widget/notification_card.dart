import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class NotificationCard extends StatelessWidget {
  final String title;
  final String text;


  const NotificationCard({super.key, required this.title,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
      width: SizeConfig.screenWidth*1,
      decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title,style: headingStyle1()),
              Text(text)
            ],
          ),
          const Icon(
              Icons.chevron_right
          )
        ],
      ),
    );
  }
}
