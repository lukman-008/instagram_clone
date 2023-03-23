import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';

class searchWidget extends StatelessWidget {
  final TextEditingController controller;
  const searchWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: primaryColor),
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            hintText: "Search",
            hintStyle: TextStyle(color: secondaryColor, fontSize: 15)),
      ),
    );
  }
}
