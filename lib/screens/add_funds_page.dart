import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/transactions/api/response/gate_ways_response.dart';
import 'package:qafworld_app/modules/transactions/service/api_service.dart';
import 'package:qafworld_app/widgets/app_drawer_widget.dart';
import 'package:qafworld_app/widgets/appbar_widget.dart';

import '../widgets/app_search_button.dart';
import '../widgets/payment_container_widget.dart';
import '../widgets/text_field_widget.dart';

class AddFundsPage extends ConsumerStatefulWidget {
  const AddFundsPage({super.key});

  @override
  createState() => _AddFundsPageState();
}

class _AddFundsPageState extends ConsumerState<AddFundsPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    List logos = [
      'assets/mez1.png',
      'assets/jaz.png',
      'assets/easy1.webp',
    ];

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBarWidget(scaffoldKey: _scaffoldKey),
        endDrawer: AppDrawerWidget(height: height, width: width),
        body: FutureBuilder(
          future: ref.read(appServiceProvider).getAllPaymentGateWays(),
          builder: (context, AsyncSnapshot<PaymentGatewayResponse> snapshot) {
            //  print('hello $snapshot.data.');
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final gateways = snapshot.data!.data?.gateways;

            print('helo+${gateways}');
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Add Fund',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Paymentcontainer(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Center(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: height * 0.35,
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
                                            const Text(
                                              'Payout By Bank Transfer',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      25, 1, 95, 1),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            const Text(
                                              'Transaction Limit: 1000 - 100000 Rs',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            const Text(
                                              textAlign: TextAlign.left,
                                              'Charge: 10 + 100 Rs',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            const AppTextFormWidget(
                                                hintText:
                                                    "Enter amount for payouts"),
                                            SizedBox(
                                              height: height * 0.02,
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
                                                  text: 'Next',
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
                          height: height,
                          text: 'Pay Now',
                          imagePath: 'assets/mez1.png',
                          width: width,
                          logos: logos),
                      Paymentcontainer(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Center(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: height * 0.35,
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
                                            const Text(
                                              'Payout By Bank Transfer',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      25, 1, 95, 1),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            const Text(
                                              'Transaction Limit: 1000 - 100000 Rs',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            const Text(
                                              textAlign: TextAlign.left,
                                              'Charge: 10 + 100 Rs',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            SizedBox(
                                              height: height * 0.02,
                                            ),
                                            const AppTextFormWidget(
                                                hintText:
                                                    "Enter amount for payouts"),
                                            SizedBox(
                                              height: height * 0.02,
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
                                                  text: 'Next',
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
                          height: height,
                          text: 'Pay Now',
                          imagePath: 'assets/jaz.png',
                          width: width,
                          logos: logos),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Paymentcontainer(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: height * 0.35,
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
                                          const Text(
                                            'Payout By Bank Transfer',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    25, 1, 95, 1),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: height * 0.02,
                                          ),
                                          const Text(
                                            'Transaction Limit: 1000 - 100000 Rs',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(
                                            height: height * 0.02,
                                          ),
                                          const Text(
                                            textAlign: TextAlign.left,
                                            'Charge: 10 + 100 Rs',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          SizedBox(
                                            height: height * 0.02,
                                          ),
                                          const AppTextFormWidget(
                                              hintText:
                                                  "Enter amount for payouts"),
                                          SizedBox(
                                            height: height * 0.02,
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
                                                text: 'Next',
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
                        height: height,
                        text: 'Pay Now',
                        imagePath: 'assets/easy1.webp',
                        width: width,
                        logos: logos),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
