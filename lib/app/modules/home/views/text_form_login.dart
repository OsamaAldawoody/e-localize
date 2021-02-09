import 'package:flutter/material.dart';

class TextFormLogin extends StatelessWidget {
  final IconData iconData;
  final double size;
  final hintText;
  final TextEditingController controller;
  TextFormLogin({this.iconData, this.size, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(
            iconData,
            color: Colors.red,
            //size: iconSize ?? 55.h,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintText: hintText,
        contentPadding:
            EdgeInsets.only(right: 10.0, left: 0, top: 0, bottom: 0),
        hintStyle: TextStyle(
            // fontSize: fontSize ?? 52.h,
            ),
      ),
      enabled: true,
    );
  }
}
