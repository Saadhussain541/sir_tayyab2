
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(this.endtext,this.isVisible,{super.key, required this.text,});

  final String text;
  final String endtext;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(text,style: GoogleFonts.inder(textStyle:Theme.of(context).textTheme.bodyLarge,color: secondary)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(endtext,style: GoogleFonts.inder(textStyle:Theme.of(context).textTheme.bodyLarge,color: secondary)),
            ),
          ],
        ),
        SizedBox(
          width: SizeConfig.screenWidth-40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: TextFormField(
              obscureText:isVisible ,
              decoration:const InputDecoration(
                  filled: true,
                  fillColor: secondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
