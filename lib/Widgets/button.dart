import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformButton extends StatelessWidget {
  const PlatformButton({super.key,required this.text,required this.onpressed});
  final VoidCallback onpressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    bool isPlatform = Theme
        .of(context)
        .platform == TargetPlatform.iOS;
    return isPlatform
        ? CupertinoButton(onPressed: onpressed, child: Text(text))
        : ElevatedButton(onPressed: onpressed, child: Text(text));
  }
}
