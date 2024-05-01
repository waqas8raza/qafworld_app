import 'package:flutter/material.dart';

Widget appSearchButtonWidget(
    {double? height, double? width, VoidCallback? onPressed}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.blueAccent),
    child: const Center(
      child: Text(
        'Search',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
