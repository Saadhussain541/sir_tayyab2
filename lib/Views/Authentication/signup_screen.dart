import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';

import '../../Widgets/button.dart';
import '../../Widgets/text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(CupertinoIcons.xmark_square_fill, color: secondary),
              ],
            ),
          ),
          SizedBox(
            width: SizeConfig.screenWidth,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.inder(
                          color: secondary,
                          textStyle: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.050,
                ),
                const MyTextField("", false,text: 'UserName/Email'),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.020,
                ),
                const MyTextField("",false, text: 'Phone Number'),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.020,
                ),
                const MyTextField("",true, text: 'Password'),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.030,
                ),
                PlatformButton(
                  text: 'Sign Up',
                  onpressed: () {},
                  color: primary,
                  height: SizeConfig.screenHeight * 0.060,
                  width: SizeConfig.screenWidth/3, bg: secondary,
                ),
              ],
            ),
          ),
          SizedBox(
            width: SizeConfig.screenWidth,
            child: Column(
              children: [
                Text("Already have an account?",style: GoogleFonts.inder(
                  color: secondary,
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.inder(
                      color: Colors.blue.shade900,
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
