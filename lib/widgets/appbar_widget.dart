import 'package:flutter/material.dart';

import '../screens/login_screen.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    // required this.height,
    // required this.width,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  // final double height;
  // final double width;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
     double height=MediaQuery.sizeOf(context).height;
    double width=MediaQuery.sizeOf(context).width;
    return AppBar(
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LogInScreen()));
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
