import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:metro_pat/Constants/constants.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  File? userProfile;
  String infoText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.";

  TextEditingController uName = TextEditingController();
  TextEditingController uUsername = TextEditingController();
  TextEditingController uAge = TextEditingController();

  TextEditingController uEmail = TextEditingController();
  TextEditingController uLocation = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    uName.dispose();
    uUsername.dispose();
    uAge.dispose();
    uEmail.dispose();
    uLocation.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        title: Text("Edit Profile", style: GoogleFonts.inder(
          fontSize: 18,
          color: secondary
        ),),
        leading: const Icon(Icons.keyboard_arrow_left, color: secondary,),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Edit Profile", style: GoogleFonts.inder(
                fontSize: 18,
                color: secondary,
                fontWeight: FontWeight.w600
              ),),

              Center(
                child: GestureDetector(
                  onTap: ()async{
                    XFile? imageSelect = await ImagePicker().pickImage(source: ImageSource.gallery);
                    if (imageSelect!=null) {
                      File convertedImage = File(imageSelect.path);
                      setState(() {
                        userProfile = convertedImage;
                      });
                    }
                    else{
                      if(context.mounted){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Image Not Selected")));
                      }
                    }
                  },
                  child: userProfile!=null?Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: secondary,
                     border: Border.all(color: secondary, width: 2),
                     borderRadius: BorderRadius.circular(50)
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: primary,
                      backgroundImage: FileImage(userProfile!),
                    ),
                  ):Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: secondary,
                        border: Border.all(color: secondary, width: 2),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: primary,
                      backgroundImage: AssetImage('images/humanavatar.png'),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Center(
                child: Text("Change Your Profile", style: GoogleFonts.inder(
                    fontSize: 14,
                    color: secondary,
                ),),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Form(
                    key: formKey,
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: secondary),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: secondary)
                        )
                      ),
                      style: const TextStyle(
                        fontSize: 14,
                        color: secondary
                      ),
                      validator: (val){
                        if (val==null || val.isEmpty || val==" ") {
                          return "Name is Required";
                        }
                        return null;
                      },
                      controller: uName,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: secondary),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: secondary)
                          )
                      ),
                      style: const TextStyle(
                          fontSize: 14,
                          color: secondary
                      ),
                      validator: (val){
                        if (val==null || val.isEmpty || val==" ") {
                          return "Username is Required";
                        }
                        return null;
                      },
                      controller: uUsername,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Age",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: secondary),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: secondary)
                          )
                      ),
                      style: const TextStyle(
                          fontSize: 14,
                          color: secondary
                      ),
                      validator: (val){
                        if (val==null || val.isEmpty || val==" ") {
                          return "Age is Required";
                        }
                        return null;
                      },
                      controller: uAge,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "E-mail",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: secondary),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: secondary)
                          )
                      ),
                      style: const TextStyle(
                          fontSize: 14,
                          color: secondary
                      ),
                      validator: (val){
                        if (val==null || val.isEmpty || val==" ") {
                          return "Email is Required";
                        }
                        return null;
                      },
                      controller: uEmail,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Location",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: secondary),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: secondary)
                          )
                      ),
                      style: const TextStyle(
                          fontSize: 14,
                          color: secondary
                      ),
                      validator: (val){
                        if (val==null || val.isEmpty || val==" ") {
                          return "Location is Required";
                        }
                        return null;
                      },
                      controller: uLocation,
                    ),
                  ],
                )),
              ),

              const SizedBox(
                height: 30,
              ),

              Text("About", style: GoogleFonts.inder(
                fontSize: 14,

                color: secondary,
              ),),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(16)
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(infoText, style: GoogleFonts.inder(
                      fontSize: 12,
                      color: primary
                  ),),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [

                    SizedBox(
                      width: 140,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(secondary)
                        ),
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Canceled")));
                          uName.clear();
                          uUsername.clear();
                          uAge.clear();
                          uEmail.clear();
                          uLocation.clear();
                        }, child: Text("Cancel", style: GoogleFonts.inder(
                          fontSize: 12,
                          color: primary
                      ),),),
                    ),

                    const Spacer(),
                    SizedBox(
                      width: 140,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(secondary)
                        ),
                        onPressed: (){
                          if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Updated")));
                          uName.clear();
                          uUsername.clear();
                          uAge.clear();
                          uEmail.clear();
                          uLocation.clear();
                          }
                        }, child: Text("Save", style: GoogleFonts.inder(
                          fontSize: 12,
                          color: primary
                      ),),),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
