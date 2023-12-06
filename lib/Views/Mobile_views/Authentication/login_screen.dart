import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/api_services/signin_services.dart';

import '../../../Reusable_Widget/button.dart';
import '../../../Reusable_Widget/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController userName = TextEditingController();
  TextEditingController userPhone = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(CupertinoIcons.xmark_square_fill, color: secondary),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Log In",
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
                MyTextField("", false,text: 'UserName/Email', controller: userName,),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.020,
                ),
                MyTextField("(Optional)",false, text: 'Phone Number',controller: userPhone,),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.020,
                ),
                MyTextField("",true, text: 'Password', controller: userPassword,),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.inder(
                          color: secondary,
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.030,
                ),
                PlatformButton(
                  text: 'Login',
                  onpressed: () {
                    UserCredentials.userLogin(
                      userPassword: userPassword.text.toString(),
                      userName: userName.text.toString(),
                    );
                  },
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
                Text("Don't have an account?",style: GoogleFonts.inder(
                  color: secondary,
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
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
