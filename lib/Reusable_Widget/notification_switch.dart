import 'package:flutter/material.dart';

import '../Constants/size_config.dart';

class NotificationSwitch extends StatefulWidget {
  bool? switch1;
  final String title;


    NotificationSwitch({super.key, required this.title,required this.switch1});

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notification',style: headingStyle(),),
        Switch(
          inactiveTrackColor: Colors.transparent,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: widget.switch1!,
          activeColor: Colors.grey,
          onChanged: (value) {
            setState(() {
              widget.switch1 = value;
              debugPrint(value.toString());
            }
            );

          },
        )
      ],
    );
  }
}
