import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qafworld_app/widgets/app_drawer_widget.dart';
import 'package:qafworld_app/widgets/app_search_button.dart';
import 'package:qafworld_app/widgets/appbar_widget.dart';
import 'package:qafworld_app/widgets/text_field_widget.dart';

class MyAdversisementListPage extends StatefulWidget {
  const MyAdversisementListPage({super.key});

  @override
  State<MyAdversisementListPage> createState() =>
      _MyAdversisementListPageState();
}

class _MyAdversisementListPageState extends State<MyAdversisementListPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String allPayment = "All Payment";

  String advertisementType = 'Advertisement Type';
  String adsType = 'All Ads';

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

  String _dropDownValue = "Advertisement Type";
  final TextEditingController _advertisementController =
      TextEditingController();
  final TextEditingController _adsController = TextEditingController();
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
      appBar: AppBarWidget(
        scaffoldKey: _scaffoldKey,
      ),
      endDrawer: AppDrawerWidget(height: height, width: width),
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
                  'My Advertisement',
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
                                value: advertisementType,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                                items: <String>[
                                  'Advertisement Type',
                                  'URL/LINK',
                                  'Youtube Embeded Link',
                                  'Picture/Banner',
                                  'Code/Script'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    advertisementType = newValue!;
                                    _advertisementController.text = newValue;
                                  });
                                },
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              DropdownButtonFormField<String>(
                                value: adsType,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                                items: <String>[
                                  'All Ads',
                                  'Approved Ads',
                                  'Deactive Ads',
                                  'Rejected Ads',
                                  'Pending Ads'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    adsType = newValue!;
                                    _adsController.text = newValue;
                                  });
                                },
                              ),
                              SizedBox(
                                height: height * 0.01,
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
                    const Text(
                      'No data found ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
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
