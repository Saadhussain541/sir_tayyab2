import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_pat/Constants/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  List industryImages = ['images/industry_images/img_one.jpeg','images/industry_images/img_two.jpeg','images/industry_images/img_three.jpeg','images/industry_images/img_four.jpeg','images/industry_images/img_five.jpeg'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          backgroundColor: primary,
          title: Text("DashBoard", style: GoogleFonts.inder(
              fontSize: 16,
              color: secondary
          ),),
          leading: Builder(builder:  (context) => IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: const Icon(Icons.list, color: secondary,)),),
          actions: [
            IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Notifications")));
            }, icon: const Icon(Icons.notifications,color: secondary,))
          ],
        ),
        drawer: Drawer(
          width: 200,
          backgroundColor: primary.withOpacity(0.8),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(
                height: 80,
              ),

              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Home")));
                },
                child: ListTile(
                  leading: const Icon(Icons.home, color: secondary,),
                  title: Text("Home", style: GoogleFonts.inder(
                      fontSize: 16,
                      color: secondary
                  ),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Profile")));
                },
                child: ListTile(
                  leading: const Icon(Icons.person, color: secondary,),
                  title: Text("Profile", style: GoogleFonts.inder(
                      fontSize: 16,
                      color: secondary
                  ),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("WorkLog")));
                },
                child: ListTile(
                  leading: const Icon(Icons.bar_chart_outlined, color: secondary,),
                  title: Text("WorkLog", style: GoogleFonts.inder(
                      fontSize: 16,
                      color: secondary
                  ),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Jobs History")));
                },
                child: ListTile(
                  leading: const Icon(Icons.calendar_month, color: secondary,),
                  title: Text("Jobs History", style: GoogleFonts.inder(
                      fontSize: 16,
                      color: secondary
                  ),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Privacy Policy")));
                },
                child: ListTile(
                  leading: const Icon(Icons.privacy_tip_rounded, color: secondary,),
                  title: Text("Privacy Policy", style: GoogleFonts.inder(
                      fontSize: 16,
                      color: secondary
                  ),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Language")));
                },
                child: ListTile(
                  leading: const Icon(Icons.language, color: secondary,),
                  title: Text("Language", style: GoogleFonts.inder(
                      fontSize: 16,
                      color: secondary
                  ),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Settings")));
                },
                child: ListTile(
                  leading: const Icon(Icons.settings_suggest_sharp, color: secondary,),
                  title: Text("Settings", style: GoogleFonts.inder(
                      fontSize: 16,
                      color: secondary
                  ),),
                ),
              )

            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: secondary,
                            backgroundImage: AssetImage('images/humanavatar.png'),
                          ),

                          Text("john@gmail.com", style: GoogleFonts.inder(
                              fontSize: 14,
                              color: secondary
                          ),),
                        ],
                      ),
                    ),

                    const Spacer(),

                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(secondary)
                      ),
                      onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Check-In")));
                    }, child: Text("Check-In", style: GoogleFonts.inder(
                        fontSize: 12,
                        color: primary
                    ),),)
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text("Welcome, John", style: GoogleFonts.inder(
                      fontSize: 18,
                      color: secondary
                  ),),
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text("Today's Job", style: GoogleFonts.inder(
                      fontSize: 14,
                      color: secondary
                  ),),
                ),

                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                            image: AssetImage("${industryImages[index]}"))
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 12,top: 110),
                      child: Text("Your Today Job ${index+1}", style: GoogleFonts.inder(
                          fontSize: 14,
                          color: secondary,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  );
                },)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
