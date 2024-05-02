import 'package:flutter/material.dart';

import '../widgets/app_drawer_widget.dart';
import '../widgets/appbar_widget.dart';

class MyRefferalScreen extends StatefulWidget {
  const MyRefferalScreen({super.key});

  @override
  State<MyRefferalScreen> createState() => _MyRefferalScreenState();
}

final _scaffoldKey = GlobalKey<ScaffoldState>();

class _MyRefferalScreenState extends State<MyRefferalScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBarWidget(scaffoldKey: _scaffoldKey),
        endDrawer: AppDrawerWidget(height: height, width: width),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Referrals',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
                Container(
                  height: height * 0.2,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                       SizedBox(
                      height: height * 0.03,
                    ),
                    const Text(
                      'Referral Link',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                   
                    Row(
                      children: [
                        Container(
                          height: height * 0.06,
                          width: width * 0.7,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    'https://qafworld.com/register/Maxcore1122',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),)),
                          ),
                        ),
                        Container(
                            height: height * 0.06,
                            width: width * 0.23,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color(0xfffaaf40),
                                  Color(0xff01acee)
                                ]),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: const Center(
                                child: Text(
                              'Copy Link',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )))
                      ],
                    ),
                  ]),
                )
              ]),
        ));
  }
}
