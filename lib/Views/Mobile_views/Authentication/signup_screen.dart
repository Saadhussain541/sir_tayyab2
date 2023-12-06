import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Views/Mobile_views/Authentication/login_screen.dart';
import 'package:metro_pat/api_services/signin_services.dart';

import '../../../Reusable_Widget/button.dart';
import '../../../Reusable_Widget/text_field.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController userName = TextEditingController();
  TextEditingController userPhone = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    userName.dispose();
    userPhone.dispose();
    userPassword.dispose();
    super.dispose();
  }
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
                MyTextField("", false,text: 'UserName/Email', controller: userName,),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.020,
                ),
                MyTextField("",false, text: 'Phone Number', controller: userPhone,),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.020,
                ),
                MyTextField("",true, text: 'Password', controller: userPassword,),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.030,
                ),
                PlatformButton(
                  text: 'Sign Up',
                  onpressed: () {
                    UserCredentials.userRegister(
                      userName: userName.text.toString(),
                      userPassword: userPassword.text.toString(),
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
                Text("Already have an account?",style: GoogleFonts.inder(
                  color: secondary,
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                )),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    },));
                  },
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
