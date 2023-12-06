import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Views/Mobile_views/calender_module.dart';
import 'package:metro_pat/Views/Mobile_views/edit_profile.dart';
import 'package:metro_pat/Views/Mobile_views/job_discription.dart';
import 'package:metro_pat/Views/Mobile_views/job_module.dart';
import 'package:metro_pat/Views/Mobile_views/map_screen.dart';
import 'package:metro_pat/Views/Mobile_views/notification_module.dart';

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
          leading:
        IconButton(
          icon: Icon(Icons.chevron_left,color: primary,),
          onPressed: (){
            Navigator.pop(context);
          },
        )
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
                    ),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                    }, icon: const Icon(Icons.edit)),
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
                ),
                const SizedBox(
                  height: 14,
                ),
                Card(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderModule(),));
                    },
                    child: ListTile(
                      leading: const Icon(Icons.calendar_today, color: primary,),
                      title: Text("Calendfder", style: GoogleFonts.inder(
                          fontSize: 16,
                          color: primary
                      ),),
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => JobDiscription(),));
                    },
                    child: ListTile(
                      leading: const Icon(Icons.calendar_today, color: primary,),
                      title: Text("Job Description", style: GoogleFonts.inder(
                          fontSize: 16,
                          color: primary
                      ),),
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MapScreen(),));
                    },
                    child: ListTile(
                      leading: const Icon(Icons.calendar_today, color: primary,),
                      title: Text("Map", style: GoogleFonts.inder(
                          fontSize: 16,
                          color: primary
                      ),),
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationModule(),));
                    },
                    child: ListTile(
                      leading: const Icon(Icons.calendar_today, color: primary,),
                      title: Text("Notification", style: GoogleFonts.inder(
                          fontSize: 16,
                          color: primary
                      ),),
                    ),
                  ),
                ),
                Card(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => JobModule(),));
                    },
                    child: ListTile(
                      leading: const Icon(Icons.calendar_today, color: primary,),
                      title: Text("Job Module", style: GoogleFonts.inder(
                          fontSize: 16,
                          color: primary
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
