import 'package:flutter/material.dart';

class AppTextFormWidget extends StatelessWidget {
  final String hintText;
  const AppTextFormWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
