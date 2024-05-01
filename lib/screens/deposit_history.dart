import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/bottom_navbar.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/dashboard.dart';
import 'package:qafworld_app/screens/facts_screen.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/login_screen.dart';
import 'package:qafworld_app/screens/payment_screen.dart';
import 'package:qafworld_app/widgets/app_search_button.dart';
import 'package:qafworld_app/widgets/text_field_widget.dart';

class DepositHistoryScreen extends StatefulWidget {
  const DepositHistoryScreen({super.key});

  @override
  State<DepositHistoryScreen> createState() => _DepositHistoryScreenState();
}

class _DepositHistoryScreenState extends State<DepositHistoryScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String allPayment = "All Payment";

  String _selectedLanguage = 'All Payment';

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

  String _dropDownValue = "All Payment";
  final TextEditingController _languageController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        _dateController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Image.asset('assets/logo.png'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: height * .04,
            width: width * .1,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                borderRadius: BorderRadius.circular(10),
                color: Colors.pinkAccent.shade100),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LogInScreen()));
              },
              icon: const Icon(Icons.login),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: height * .04,
            width: width * .1,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * .1,
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigationbar()));
                },
                title: const Text('Home'),
                leading: const Icon(Icons.home),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()));
                },
                title: const Text('Dashboard'),
                leading: const Icon(Icons.dashboard),
              ),

              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentScreen()));
                },
                title: const Text('Add Fund'),
                leading: const Icon(Icons.payment),
              ),

              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DepositHistoryScreen()));
                },
                title: const Text('Deposit History'),
                leading: const Icon(Icons.history_edu_outlined),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutScreen()));
                },
                title: const Text('About'),
                leading: const Icon(Icons.perm_contact_calendar_sharp),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                title: const Text('Plan'),
                leading: const Icon(Icons.next_plan_outlined),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FactsScreen()));
                },
                title: const Text('FAQ'),
                leading: const Icon(Icons.question_mark_rounded),
              ),
              // ListTile(
              //   splashColor: Colors.blue,
              //   onTap: (){},
              //   title: const Text('Blog'),
              //   leading: const Icon(Icons.article),
              // ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactScreen()));
                },
                title: const Text('Contact'),
                leading: const Icon(Icons.contact_page_rounded),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Deposit History',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                          child: Container(
                        height: height * 0.5,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Material(
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Search',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.close))
                                ],
                              ),
                              Center(
                                child: Container(
                                  height: height * 0.001,
                                  width: width,
                                  decoration:
                                      const BoxDecoration(color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              const Material(
                                  child: AppTextFormWidget(
                                hintText: 'Search by transaction id',
                              )),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              DropdownButtonFormField<String>(
                                value: _selectedLanguage,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                                items: <String>[
                                  'All Payment',
                                  'Complete Payment',
                                  'Pending Payment',
                                  'Cancel Payment'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedLanguage = newValue!;
                                    _languageController.text = newValue;
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                readOnly: true,
                                controller: _dateController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  suffixIcon: Icon(Icons.calendar_today),
                                  labelText: 'Select Date',
                                ),
                                onTap: () {
                                  _selectDate(context);
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              appSearchButtonWidget(
                                height: height * 0.05,
                                width: width * 0.80,
                                onPressed: () {},
                              )
                            ]),
                          ),
                        ),
                      ));
                    });
              },
              child: Center(
                child: Container(
                  height: height * 0.07,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'FILTER',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Image.asset(
                        'assets/filter.png',
                        height: height * 0.04,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: Container(
                // color: Colors.black,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.08,
                      width: width * 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: transctionDataList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              transctionDataList[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                          );
                        },
                      ),
                    ),
                    Text('no data ')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
