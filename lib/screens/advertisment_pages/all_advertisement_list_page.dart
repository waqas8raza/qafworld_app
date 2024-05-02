import 'package:flutter/material.dart';
import 'package:qafworld_app/widgets/app_drawer_widget.dart';

import '../../widgets/app_search_button.dart';
import '../../widgets/appbar_widget.dart';

class AllAdsPage extends StatefulWidget {
  const AllAdsPage({super.key});

  @override
  State<AllAdsPage> createState() => _AllAdsPageState();
}

class _AllAdsPageState extends State<AllAdsPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List paymentmethod = [
    'Complete Payment',
    'Pending Payment',
    'Cancel Payment'
  ];
  bool isOpen = false;

  List items = ['Complete Payment', 'Pending Payment', 'Cancel Payment'];
  List transctionDataList = [
    'Transaction ID',
    'Gateway',
    'Amount',
    'Charge',
    'Status',
    'Date-Time'
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBarWidget(
          scaffoldKey: _scaffoldKey,
        ),
        endDrawer: AppDrawerWidget(height: height, width: width),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: height * 0.20,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hadess ke ezat',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Ads durations : 20s'),
                            Card(
                                color: Colors.grey,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Text('Youtube embeded link'),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: height * 0.22,
                                          width: width,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Material(
                                              child: Column(children: [
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                const Center(
                                                  child: Text(
                                                    textAlign: TextAlign.center,
                                                    'OOPS! YOU HAVE NO PLAN.\n KINDLY PURCHASE A PLAN FIRST.',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            25, 1, 95, 1),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    appSearchButtonWidget(
                                                      text: 'Close',
                                                      height: height * 0.05,
                                                      width: width * 0.20,
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.02,
                                                    ),
                                                    appSearchButtonWidget(
                                                      text: 'Purchase Plan',
                                                      height: height * 0.05,
                                                      width: width * 0.25,
                                                      onPressed: () {},
                                                    ),
                                                  ],
                                                )
                                              ]),
                                            ),
                                          ),
                                        ),
                                      ));
                                    });
                              },
                              child: Container(
                                height: height * 0.04,
                                width: width * 0.20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(colors: [
                                    Color(0xfffaaf40),
                                    Color(0xff01acee)
                                  ]),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.remove_red_eye),
                                    Text(
                                      'View',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text('RS 5'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
