import 'package:flutter/material.dart';

Widget appSearchButtonWidget(
    {double? height, double? width, VoidCallback? onPressed, String? text}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blueAccent),
      child: Center(
        child: Text(
          text ?? 'Search',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
