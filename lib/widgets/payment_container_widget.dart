import 'package:flutter/material.dart';

class Paymentcontainer extends StatelessWidget {
  final String imagePath;
  final String text;
  const Paymentcontainer({
    super.key,
    required this.height,
    required this.text,
    required this.imagePath,
    required this.width,
    required this.logos,
  });

  final double height;
  final double width;
  final List logos;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.3,
      width: width * 0.35,
      margin: EdgeInsets.only(left: 10, bottom: 10),
      decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(
            imagePath
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            height: height * 0.055,
            width: width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [
                  Color(0xfffaaf40),
                  Color(0xff01acee)
                ])),
            child: Center(
                child: Text(
              text,
              style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
