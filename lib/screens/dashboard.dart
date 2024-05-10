import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modules/theme_controller.dart';
import '../widgets/app_drawer_widget.dart';
import '../widgets/appbar_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentindex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List data1 = [
    'My Ads',
    'Ads Earnings',
    'Plan',
    'Withdraw',
    'Transfer',
    'Referral',
    'Support',
    'Setting',
    '2FA'
  ];
  List data2 = [
    'assets/ad.png',
    'assets/hand.png',
    'assets/timeline.png',
    'assets/hand.png',
    'assets/money-bag.png',
    'assets/audience.png',
    'assets/assistant.png',
    'assets/settings.png',
    'assets/padlock.png',
  ];

  List detail3 = [
    'Main Balance',
    'Total Referral Bonus',
    'Total Deposit',
    'Total Payout',
    'Current Plan',
    'Total Advertisement View',
    'Today Advertisement View',
    'Remaining Ads View For Today',
  ];
  List RS = [
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
  ];

  List data3 = [
    'assets/money-bag.png',
    'assets/gift.png',
    'assets/walet.png',
    'assets/hand.png',
    'assets/plan.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
  ];

  List addsumary = [
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
  ];

  List addsum1 = [
    ' 9',
    ' 0',
    ' 0',
    ' 0',
    ' 0',
    ' 0',
    ' 0',
  ];
  List adsumarydetail = [
    'Available Advertisement',
    'Total',
    'Active',
    'Deactivated',
    'Pending',
    'Rejected',
    'Max View Limit Exceeded Ads',
  ];

  List refpic = [
    'assets/gift.png',
    'assets/gift.png',
    'assets/gift.png',
    'assets/gift.png',
    'assets/team.png',
    'assets/gift.png',
    'assets/assistant.png',
  ];
  List refbalnce = [
    ' RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    ' 0',
    'RS 0',
    ' 0',
  ];

  List refdetail = [
    'Total Referral Bonus',
    'Deposit Referral Bonus',
    'Purchased Plan Referral Bonus',
    'Ads View Referral Bonus',
    'My Referral Team Member',
    'Last Referral Bonus',
    'Total Support Ticket',
  ];
  final pictures = [
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/1.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/2.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/3.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/4.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/5.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/6.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/7.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/8.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/9.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/10.jpg',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarWidget(scaffoldKey: _scaffoldKey),
      endDrawer: AppDrawerWidget(height: height, width: width),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Obx(
                    () => Text(
                      themeController.currentTheme.value.brightness ==
                              Brightness.light
                          ? 'Light Theme'
                          : 'Dark Theme',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.5,
                    child: Switch(
                      value: Get.isDarkMode, // Use Get.isDarkMode initially
                      onChanged: (value) {
                        themeController.changeTheme();
                      },
                    ),
                  ),
                ],
              ),

              // IconButton(
              //     onPressed: () {
              //       themeController.changeTheme();
              //     },
              //     icon: Icon(Icons.abc)),
              SizedBox(
                height: height * 0.03,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: height * 0.5,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                ),
                items: pictures,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                '+447424925758نوٹ ! ایپ کو استعمال کرنے میں اگر کوئی مشکل پیش ائے تو اس نمبر پر رابطہ کریں یاد رکھیں ایپ جوائن کرنے کے بعد اگر لاگ اؤٹ ہو جائیں تو گوگل کروم سے دوبارہ لاگ ان ہوں گے',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.001,
                width: width,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              const Text(
                'یہ ایک چیرٹی نیٹ ورک ہے جس میں اپ کو شامل ہونے کے بعد اپنے حصے کے مزید پانچ لوگ شامل کرنے ہوتے ہیں اگر اپ مزید لوگ شامل کر سکتے ہیں تو پیکج پرچیز کریں بصورت دیگر اپ کا ٹری گرو نہیں کرے گا',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 16),
              ),
              const Text(
                'روزانہ انکم حاصل کرنے کے لیے سب سے پہلے اپ خود پیکج پرچیز کریں اور اس کے بعد مزید لوگوں کو اپنے لنک شیئر کریں جیسے ہی لوگ اپ کے ٹری میں داخل ہوں گے اپ کوریفرل بونس سے روزانہ انکم ملنا شروع ہو جائے گی مزید معلومات کے لیے کاپی کر کے یوٹیوب سرچ میں پیسٹ کریں qafworld.com',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                'Dashboard',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: height * 0.15,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.cyan),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                data2[index],
                                height: height * 0.07,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                data1[index],
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: height * 0.15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 15),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: height * 0.3,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyan),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: height * 0.02,
                                  child: Center(
                                    child: Text(
                                      detail3[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(RS[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        )),
                                    Image.asset(
                                      data3[index],
                                      height: height * 0.05,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                'My Advertisement Summary',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: height * 0.15,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: height * 0.15,
                        width: width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: height * 0.02,
                                child: Text(
                                  adsumarydetail[index],
                                  style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(addsum1[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      )),
                                  Image.asset(
                                    addsumary[index],
                                    height: height * 0.05,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                'My Referral Bonus Statistics',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: height * 0.15,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  shrinkWrap: true,
                  itemCount: 7,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: height * 0.15,
                        width: width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: height * 0.02,
                                child: Text(
                                  refdetail[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(refbalnce[index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    )),
                                Image.asset(
                                  refpic[index],
                                  height: height * 0.05,
                                  color: Colors.blue,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.73,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                            colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                      ),
                      child: const Center(
                          child: Text(
                        'Copy Link',
                        style: TextStyle(
                            letterSpacing: 3,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
