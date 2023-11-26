import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PlatformButton extends StatelessWidget {
  const PlatformButton({super.key,required this.text,required this.onpressed, required this.color, required this.height, required this.width, required this.bg});
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double height;
  final double width;
  final Color bg;

  @override
  Widget build(BuildContext context) {
    bool isPlatform = Theme
        .of(context)
        .platform == TargetPlatform.iOS;
    return isPlatform
        ? CupertinoButton(onPressed: onpressed, child: Text(text))
        : SizedBox(
      height: height,
      width: width,
          child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: bg,
              ),onPressed: onpressed, child: Text(text,style: GoogleFonts.inder(
                color: color,
              ),)),
        );
  }
}
