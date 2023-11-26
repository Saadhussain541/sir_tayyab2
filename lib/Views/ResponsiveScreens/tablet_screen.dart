import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
            overflow: TextOverflow.ellipsis,
              "No Tablet Mode Available Open in Mobile",
              style: GoogleFonts.inder(color: Colors.black,fontSize: 30,letterSpacing: 3))),
    );
  }
}
