import 'package:flutter/material.dart';
import 'package:qafworld_app/widgets/app_drawer_widget.dart';
import 'package:qafworld_app/widgets/appbar_widget.dart';

import 'login_screen.dart';

class TwoStepSecurityScreen extends StatefulWidget {
  const TwoStepSecurityScreen({super.key});

  @override
  State<TwoStepSecurityScreen> createState() => _TwoStepSecurityScreenState();
}

class _TwoStepSecurityScreenState extends State<TwoStepSecurityScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '2 Step Security',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              Container(
                height: height * 0.3,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text(
                      'Two Factor Authenticator',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      children: [
                        Container(
                          height: height * 0.06,
                          width: width * 0.7,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: '3TKXSPTV6ZR43L6E',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        Container(
                          height: height * 0.06,
                          width: width * 0.18,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xfffaaf40),
                                Color(0xff01acee)
                              ]),
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(
                            'assets/docu.png',
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Center(
                                child: Container(
                                  height: height * 0.3,
                                  width: width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Verify Your OTP',
                                              style: TextStyle(decoration: TextDecoration.none,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(Icons.close))
                                          ],
                                        ),
                                        Container(
                                          height: height * 0.001,
                                          width: width,
                                          decoration: const BoxDecoration(
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Material(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    'Enter Google Authenticator Code',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10))),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Material(
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: height * 0.06,
                                                  width: width * 0.35,
                                                  decoration: BoxDecoration(
                                                      color: Colors.indigo,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: const Center(
                                                      child: Text(
                                                    'Close',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  )),
                                                ),
                                              ),
                                            ),
                                            Material(
                                              child: InkWell(onTap: () {
                                                
                                              },
                                                child: Container(
                                                  height: height * 0.06,
                                                  width: width * 0.35,
                                                  decoration: BoxDecoration(
                                                      gradient:
                                                          const LinearGradient(
                                                              colors: [
                                                            Color(0xfffaaf40),
                                                            Color(0xff01acee)
                                                          ]),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: const Center(
                                                      child: Text(
                                                    'Verify',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  )),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          'ENABLE TWO FACTOR',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text(
                      'Google Authenticator',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Text(
                      'USE GOOGLE AUTHENTICATOR TO SCAN THE QR CODE\n OR USE THE CODE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Text(
                        'Google Authenticator is a multifactor app for mobile\n devices. It generates timed codes used during the 2-\nstep verification process. To use Google Authenticator,\n install the Google Authenticator application on your\nmobile device.'),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'DOWNLOAD APP',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
