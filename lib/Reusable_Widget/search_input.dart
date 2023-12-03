import 'package:flutter/material.dart';

import '../Constants/constants.dart';
class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          fillColor: secondary,
          filled: true,
          hintText: "Search",
          hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w400
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
  }
}
