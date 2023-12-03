import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class JobCard2 extends StatelessWidget {
  final String title1;
  final String title2;


  const JobCard2({super.key, required this.title1,required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight*0.01),

      padding: const EdgeInsets.only(
          right: 4,
          left: 10,
          top: 10,
          bottom: 10
      ),
      decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(title1,style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              horizontalSpace(0.03),
              Text(title2,style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
            ],
          ),
          const Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}
