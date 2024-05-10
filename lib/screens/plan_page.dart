import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/transactions/api/response/plan_response.dart';
import 'package:qafworld_app/modules/transactions/service/api_service.dart';

import 'package:qafworld_app/screens/login_screen.dart';
import 'package:qafworld_app/widgets/app_drawer_widget.dart';
import 'package:qafworld_app/widgets/appbar_widget.dart';
import 'package:qafworld_app/widgets/mode_widget.dart';

class PlanPage extends ConsumerStatefulWidget {
  const PlanPage({super.key});

  @override
  createState() => _PlanPageState();
}

class _PlanPageState extends ConsumerState<PlanPage> {
  final images = [
    Image.asset(
      'assets/first.png',
    ),
    Image.asset('assets/second.png')
  ];
  int currentindex = 0;

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List<PercentModel> myData = [
    PercentModel(percentage: '20%', level: 'level 1'),
    PercentModel(percentage: '8%', level: 'level 2'),
    PercentModel(percentage: '7%', level: 'level 3'),
    PercentModel(percentage: '5%', level: 'level 4'),
    PercentModel(percentage: '4%', level: 'level 5'),
    PercentModel(percentage: '3%', level: 'level 6'),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBarWidget(scaffoldKey: _scaffoldKey),
        endDrawer: AppDrawerWidget(height: height, width: width),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: height * 0.3,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentindex = index;
                      });
                    },
                  ),
                  items: images,
                ),
                FutureBuilder(
                  future: ref.read(appServiceProvider).getAllPlans(),
                  builder: (context, AsyncSnapshot<PlanResponse> snapshot) {
                    print(snapshot.data);
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final plans = snapshot.data!.data.plans;
                    print("$plans");
                    return Column(
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          '${snapshot.data!.data.templates.plan.first.description!.title}',
                          //  'UNLEASH YOUR EARNING POWER:',
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          '${snapshot.data!.data.templates.plan.first.description!.sub_title}',
                          // 'Our Plan Offerings At A Glance',
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3A3F64)),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        SizedBox(
                          height: height * 0.45,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: plans.length,
                              scrollDirection: Axis.horizontal,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  height: height * 0.09,
                                  width: width * 0.83,
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade50,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          plans[index].details!.name!,
                                          // 'Junior Plan',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff3A3F64)),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Text(
                                          plans[index].price!,
                                          style: const TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff3A3F64)),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Text(
                                          plans[index].details!.short_title!,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                            ),
                                            Text(
                                              'Period: ${plans[index].validity!}',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                            ),
                                            Text(
                                              'Daily Ad Limit: ${plans[index].daily_ad_limit!}',
                                              //   '',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                            ),
                                            Text(
                                              'Refferal Bonus: Up to ${plans[index].referral_level} level',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Center(
                                          child: InkWell(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return Center(
                                                      child: Container(
                                                        height: height * 0.25,
                                                        width: width * 0.9,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15)),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  const Text(
                                                                    'Purchase Plan',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .indigo,
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  IconButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      icon: const Icon(
                                                                          Icons
                                                                              .close))
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    0.02,
                                                              ),
                                                              const Text(
                                                                'Please at first login to your account to purchase',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .indigo,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              const Text(
                                                                'plan.',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    color: Colors
                                                                        .indigo,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              SizedBox(
                                                                height: height *
                                                                    0.04,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Material(
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height: height *
                                                                            0.06,
                                                                        width: width *
                                                                            0.35,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Colors.indigo,
                                                                            borderRadius: BorderRadius.circular(10)),
                                                                        child: const Center(
                                                                            child: Text(
                                                                          'Close',
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.bold,
                                                                              color: Colors.white),
                                                                        )),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        width *
                                                                            0.01,
                                                                  ),
                                                                  Material(
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () {
                                                                        Navigator.push(
                                                                            context,
                                                                            MaterialPageRoute(builder: (context) => const LogInScreen()));
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height: height *
                                                                            0.06,
                                                                        width: width *
                                                                            0.35,
                                                                        decoration: BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(colors: [
                                                                              Color(0xfffaaf40),
                                                                              Color(0xff01acee)
                                                                            ]),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10)),
                                                                        child: const Center(
                                                                            child: Text(
                                                                          'Login',
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.bold,
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
                                              height: height * 0.06,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  gradient:
                                                      const LinearGradient(
                                                          colors: [
                                                        Color(0xfffaaf40),
                                                        Color(0xff01acee)
                                                      ])),
                                              child: const Center(
                                                  child: Text(
                                                'PERCHASE PLAN',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              )),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                const Text(
                  'REFFERAL COMMISSION',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  'Referral Bonus Level On Purchase Plan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.indigo),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.only(top: 12),
                          height: height * .2,
                          width: width * .3,
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.red),
                              shape: BoxShape.circle),
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            height: height * .1,
                            width: width * .3,
                            decoration: BoxDecoration(
                                color: Colors.orange.shade100,
                                shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(myData[index].percentage,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(myData[index].level,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ));
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
