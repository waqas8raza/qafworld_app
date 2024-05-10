import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:qafworld_app/widgets/app_drawer_widget.dart';
import 'package:qafworld_app/widgets/app_search_button.dart';
import 'package:qafworld_app/widgets/appbar_widget.dart';
import 'package:qafworld_app/widgets/text_field_widget.dart';
import '../modules/transactions/service/api_service.dart';

class SupportTicketPage extends ConsumerStatefulWidget {
  const SupportTicketPage({super.key});

  @override
  createState() => _SupportTicketPageState();
}

class _SupportTicketPageState extends ConsumerState<SupportTicketPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String allPayment = "All Payment";

  // String _selectedLanguage = 'All Payment';

  List paymentmethod = [
    'Complete Payment',
    'Pending Payment',
    'Cancel Payment'
  ];
  bool isOpen = false;

  List items = ['Complete Payment', 'Pending Payment', 'Cancel Payment'];
  List transctionDataList = [
    'Subject',
    'Status',
    'Last Reply',
    'Action',
  ];

  //String _dropDownValue = "All Payment";
  // final TextEditingController _languageController = TextEditingController();
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
                  'Support Ticket',
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
                        height: height * 0.6,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Material(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    const Text(
                                      'Subject',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const AppTextFormWidget(
                                      hintText: 'Message',
                                    ),
                                    const Text(
                                      'Message',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const AppTextFormWidget(
                                      maxlines: 5,
                                      hintText: 'Message',
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    const Text(
                                      'Upload File',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        appSearchButtonWidget(
                                          text: 'Chose File',
                                          height: height * 0.085,
                                          width: width * 0.20,
                                          onPressed: () {},
                                        ),
                                        const Expanded(
                                          child: AppTextFormWidget(
                                              hintText: 'No file selected'),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Center(
                                      child: appSearchButtonWidget(
                                        height: height * 0.05,
                                        width: width * 0.80,
                                        onPressed: () {},
                                      ),
                                    )
                                  ]),
                            ),
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
                      const Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                      ),
                      const Text(
                        'Create Ticket',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              // color: Colors.black,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  // color: Colors.amber,

                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    height: height * 0.21,
                    width: width * 0.3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Colors.grey,
                    ),
                    child: ListView.builder(
                      // scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: transctionDataList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.023, left: width * 0.03),
                          child: Text(
                            transctionDataList[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * 0.21,
                    width: width * 0.646,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FutureBuilder(
                          future: ref.read(appServiceProvider).supportTickets(),
                          builder: (context, snapshot) {
                            print(snapshot.data);
                            if (!snapshot.hasData) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            //  print(snapshot.data!.data?.first.createdAt);
                            return snapshot.data!.data!.data!.isEmpty
                                ? const Center(
                                    child: Text('No data found'),
                                  )
                                : ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount:
                                        snapshot.data!.data?.data!.length,
                                    itemBuilder: (context, index) {
                                      final data = snapshot.data!.data?.data;
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: height * 0.05,
                                            width: width * 0.10,
                                            child: Center(
                                              child: Text(
                                                  data![index].id.toString()),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey,
                                            width: width * 0.2,
                                            height: height * 0.001,
                                          ),
                                          SizedBox(
                                            height: height * 0.05,
                                            width: width * 0.10,
                                            child: Center(
                                              child:
                                                  Text(data[index].toString()),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.grey,
                                            width: width * 0.2,
                                            height: height * 0.001,
                                          ),
                                          SizedBox(
                                            height: height * 0.05,
                                            width: width * 0.10,
                                            child: Center(
                                              child: Text(data[index]
                                                  .finalBalance
                                                  .toString()),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                          },
                        )

                        //  Text(
                        //   'No data found ',
                        //   style:
                        //       TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        // ),
                        ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
