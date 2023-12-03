import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  String infoText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.";
  String certText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile Settings", style: GoogleFonts.inder(
            fontSize: 18,
          ),),
          leading: const Icon(Icons.keyboard_arrow_left),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: primary,
                      backgroundImage: AssetImage('images/humanavatar.png'),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    SizedBox(
                      width: 160,
                      height: 20,
                      child: Text("Muhammad Ibrahim", style: GoogleFonts.inder(
                        fontSize: 16,
                        color: primary,
                        fontWeight: FontWeight.w600
                      ),),
                    )
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                Text("Information", style: GoogleFonts.inder(
                  fontSize: 14,
                ),),


                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Text(infoText, style: GoogleFonts.inder(
                      fontSize: 12,
                      color: secondary
                    ),),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Text("Certification / License", style: GoogleFonts.inder(
                  fontSize: 14,
                ),),


                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundColor: secondary,
                              backgroundImage: AssetImage('images/humanavatar.png'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 140,
                                  height: 20,
                                  child: Text("Muhammad Ibrahim", style: GoogleFonts.inder(
                                    fontSize: 14,
                                    color: secondary
                                  ),),
                                ),

                                const SizedBox(
                                  height: 2,
                                ),

                                SizedBox(
                                  width: 140,
                                  height: 20,
                                  child: Text("Certified", style: GoogleFonts.inder(
                                    fontSize: 12,
                                    color: secondary
                                  ),),
                                )
                              ],
                            )
                          ],
                        ),

                        const SizedBox(
                          height: 14,
                        ),

                        Text(infoText, style: GoogleFonts.inder(
                            fontSize: 12,
                            color: secondary
                        ),),
                      ],
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
