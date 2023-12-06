import 'dart:async';
import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Views/Mobile_views/Authentication/welcome.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Splash() {
    Timer(
        const Duration(seconds: 3),
        () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const WelcomeScreen();
            })));
  }

  @override
  void initState() {
    Splash();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child:  Image(
                image: AssetImage('assets/metro_pat_logo.png'),
              ),

            ),
            // Text(
            //   'Splash Screen',
            //   style: GoogleFonts.inder(
            //       color: Colors.white, fontSize: 26, letterSpacing: 5),
            // ),
          ],
        ),
      ),
    );
  }
}
