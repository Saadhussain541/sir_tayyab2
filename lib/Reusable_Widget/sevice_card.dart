import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Constants/size_config.dart';
class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondary,
      ),

      child: Row(
        children: [
          Container(
            width: 100,
            height: 120,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://media.istockphoto.com/id/1349094945/photo/human-using-a-computer-laptop-for-searching-for-job-and-fill-out-personal-data-on-job-website.webp?b=1&s=170667a&w=0&k=20&c=p_SRXAc7KnjTOB803Xap7irCB8xgiAey1SerMMFj-x8='),
                    fit: BoxFit.cover
                )
            ),
          ),
          horizontalSpace(0.02),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorum ipsum',style: headingStyle1(),overflow: TextOverflow.ellipsis),
                      const Text('Lorum ipsum, Lorum ipsum, Lorum ipsum',overflow: TextOverflow.ellipsis,)
                    ],
                  ),
                ),
                horizontalSpace(0.02),
                const Icon(Icons.chevron_right)
              ],
            ),
          )
        ],
      ),
    );
  }
}
