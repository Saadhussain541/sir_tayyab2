import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:metro_pat/Reusable_Widget/notification_switch.dart';
import 'package:metro_pat/Reusable_Widget/setting_card.dart';
import 'package:metro_pat/Reusable_Widget/setting_heading.dart';

import '../../Constants/constants.dart';
class SettingModule extends StatefulWidget {
  const SettingModule({super.key});

  @override
  State<SettingModule> createState() => _SettingModuleState();
}

class _SettingModuleState extends State<SettingModule> {
  bool isSwitched=false;
  bool isSwitched1=false;
  bool isExpanded=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: const Text('Settings Module',style: TextStyle(
            color: secondary,
            fontSize: headingSize
        ),),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.close,color: secondary,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ))
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(0.03),
              Text('Settings',style:headingStyle1(color1: secondary),),
              verticalSpace(0.02),
              const CardHeading(
                title: "Account",
                icon: Icons.person,
              ),
              const SizedBox(
                  width: double.infinity,
                  child: Divider(
                    thickness: 0.2,
                  )),
              verticalSpace(0.02),
              const SettingCard(title: 'Edit Profile', icon: Icons.chevron_right),
              verticalSpace(0.04),
              const SettingCard(title: 'Privacy', icon: Icons.chevron_right),
              verticalSpace(0.03),
              const CardHeading(
                title: "Notification",
                icon: Icons.notifications,
              ),
              const SizedBox(
                  width: double.infinity,
                  child: Divider(
                    thickness: 0.2,
                  )),
              verticalSpace(0.01),
              NotificationSwitch(title: 'Notifications', switch1: isSwitched),
              verticalSpace(0.02),
              NotificationSwitch(title: 'App Notifications', switch1: isSwitched1),
              verticalSpace(0.02),
              const CardHeading(
                title: "More",
                icon: Icons.more_horiz,
              ),
              const SizedBox(
                  width: double.infinity,
                  child: Divider(
                    thickness: 0.2,
                  )),
              ExpansionTile(
                iconColor: secondary,
                collapsedIconColor: secondary,
                title: Text('Language',style: headingStyle(),),
                children: const [
                  ListTile(
                    title: Text('English',style: TextStyle(
                      color: secondary
                    ),),
                  ),
                  ListTile(
                    title: Text('Urdu',style: TextStyle(
                        color: secondary
                    ),),
                  ),
                ],
              ),
              ExpansionTile(
                iconColor: secondary,
                collapsedIconColor: secondary,
                  trailing: isExpanded ? const Icon(Icons.arrow_drop_down) : const Icon(Icons.chevron_right),
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    isExpanded = expanded;
                  });
                },

                title: Text('Country',style: headingStyle(),),
                children: const [
                  ListTile(
                    title: Text('English',style: TextStyle(
                        color: secondary
                    ),),
                  ),
                  ListTile(
                    title: Text('Urdu',style: TextStyle(
                        color: secondary
                    ),),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.logout,color: secondary,size: 30,),
                    const SizedBox(width: 3,),
                    Text('Logout',style: headingStyle1(color1: secondary),),

                  ],
                ),
              ),
              verticalSpace(0.02)



            ],
          ),
        ),
      ),
    );
  }
}
