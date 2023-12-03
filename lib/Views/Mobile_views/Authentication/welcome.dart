import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Views/Mobile_views/Authentication/signup_screen.dart';

import '../../../Reusable_Widget/button.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          decoration: const BoxDecoration(
            color: secondary,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.xmark_square_fill,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.060),
              SizedBox(
                height: 400,
                width: SizeConfig.screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Login",
                      style: GoogleFonts.inder(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    PlatformButton(
                      text: 'Login',
                      onpressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const LoginScreen();
                        }));
                      },
                      color: secondary,
                      height: SizeConfig.screenHeight * 0.060,
                      width: SizeConfig.screenWidth - 60, bg: primary,
                    ),
                    PlatformButton(
                      text: 'Sign Up',
                      onpressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const SignUp();
                        }));
                      },
                      color: secondary,
                      height: SizeConfig.screenHeight * 0.060,
                      width: SizeConfig.screenWidth - 60, bg: primary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
