import 'package:flutter/material.dart';

class AppTextFormWidget extends StatelessWidget {
  final String hintText;
  final int? maxlines;
  const AppTextFormWidget(
      {super.key, required this.hintText, this.maxlines = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
