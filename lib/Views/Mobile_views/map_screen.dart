import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/constants.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          backgroundColor: primary,
          title: Text("Tracking", style: GoogleFonts.inder(
              fontSize: 16,
              color: secondary
          ),),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.keyboard_arrow_left, color: secondary,)),
          actions: [

            GestureDetector(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("User Profile")));
              },
              child: const SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: secondary,
                  backgroundImage: AssetImage('images/humanavatar.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: const BoxDecoration(
                  color: secondary,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/google_image/google_map.png'))
                ),
              ),
              
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                child: Container(
                  margin: const EdgeInsets.only(top: 360),
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Employee Tracking Progress", style: GoogleFonts.inder(
                            fontSize: 16,
                            color: primary
                        ),),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
