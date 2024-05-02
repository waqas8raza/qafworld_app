import 'package:flutter/material.dart';
import 'package:qafworld_app/widgets/app_drawer_widget.dart';
import 'package:qafworld_app/widgets/appbar_widget.dart';

import '../widgets/payment_container_widget.dart';

class WithDrawlScreen extends StatefulWidget {
  const WithDrawlScreen({super.key});

  @override
  State<WithDrawlScreen> createState() => _WithDrawlScreenState();
}

class _WithDrawlScreenState extends State<WithDrawlScreen> {

   final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.sizeOf(context).height;
    double width=MediaQuery.sizeOf(context).width;

    
    List logos = [
      'assets/mez1.png',
      'assets/jaz.png',
      'assets/easy1.webp',
    ];
    return Scaffold(
       key: _scaffoldKey,
      appBar: AppBarWidget(scaffoldKey: _scaffoldKey),
      endDrawer: AppDrawerWidget(height: height, width: width),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Withdraw',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Paymentcontainer(
                      height: height,
                      text: 'Withdraw Now',
                      imagePath: 'assets/jaz.png',
                      width: width,
                      logos: logos),
                  Paymentcontainer(
                      height: height,
                      text: 'Withdraw Now',
                      imagePath: 'assets/jaz.png',
                      width: width,
                      logos: logos),
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Paymentcontainer(
                    height: height,
                    text: 'Withdraw Now',
                    imagePath: 'assets/easy1.webp',
                    width: width,
                    logos: logos),
              ),
            ],
          ),
      ),
    );
  }
}