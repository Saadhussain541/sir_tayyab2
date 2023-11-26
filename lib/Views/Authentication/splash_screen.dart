import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: secondary,
              child: const Placeholder(),
            ),
            Text(
              'Splash Screen',
              style: GoogleFonts.quicksand(color: Colors.white,fontSize: 26,letterSpacing: 5),
            ),
          ],
        ),
      ),
    );
  }
}
