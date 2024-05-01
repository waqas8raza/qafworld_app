import 'package:flutter/material.dart';

import '../screens/about_screen.dart';
import '../screens/bottom_navbar.dart';
import '../screens/contact_screen.dart';
import '../screens/dashboard.dart';
import '../screens/deposit_history.dart';
import '../screens/facts_screen.dart';
import '../screens/home.dart';
import '../screens/payment_screen.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
