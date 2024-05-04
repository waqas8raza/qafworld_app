import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/advertisment_pages/ads_view_earning_list_page.dart';
import 'package:qafworld_app/screens/advertisment_pages/all_advertisement_list_page.dart';
import 'package:qafworld_app/screens/advertisment_pages/my_advertise_list_page.dart';
import 'package:qafworld_app/screens/all_transctions_page.dart';
import 'package:qafworld_app/screens/profile_screens/ProfileScreen.dart';
import 'package:qafworld_app/screens/referal_bonus_page.dart';
import 'package:qafworld_app/screens/support_ticket_page.dart';
import 'package:qafworld_app/screens/2step_security_screen.dart';
import 'package:qafworld_app/screens/my_refferal.dart';
import 'package:qafworld_app/screens/withdraw_screen.dart';
import '../screens/about_screen.dart';
import '../screens/bottom_navbar.dart';
import '../screens/contact_screen.dart';
import '../screens/dashboard.dart';
import '../screens/deposit_history.dart';
import '../screens/facts_screen.dart';
import '../screens/home.dart';
import '../screens/add_funds_page.dart';
import '../screens/withdraw_history_page.dart';

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage('assets/p.jpg'),
                ),
                accountName: Text('MexCore'),
                accountEmail: Text('mexcore@gmail.com')),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              title: const Text('Plans'),
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
                        builder: (context) => const AddFundsPage()));
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
                        builder: (context) => const AllTransactionPage()));
              },
              title: const Text('All Transaction'),
              leading: const Icon(Icons.money_rounded),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WithDrawlScreen()));
              },
              title: const Text('WtihDraw'),
              leading: const Icon(Icons.money_rounded),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WithdrawHistoryScreen()));
              },
              title: const Text('Withdraw History'),
              leading: const Icon(Icons.attach_money_outlined),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllAdsPage()));
              },
              title: const Text('All Advertisements'),
              leading: const Icon(Icons.ads_click_sharp),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyAdversisementListPage()));
              },
              title: const Text('My Advertisement List'),
              leading: const Icon(Icons.ads_click_sharp),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdsViewEarningListPage()));
              },
              title: const Text('Ads View Earning List'),
              leading: const Icon(Icons.list),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RefrelBonusPage()));
              },
              title: const Text('Refrel Bonus'),
              leading: const Icon(Icons.list),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SupportTicketPage()));
              },
              title: const Text('Support Ticket'),
              leading: const Icon(Icons.airplane_ticket_outlined),
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
            // ListTile(
            //   splashColor: Colors.blue,
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const HomeScreen()));
            //   },
            //   title: const Text('Plan'),
            //   leading: const Icon(Icons.next_plan_outlined),
            // ),
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
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyRefferalScreen()));
              },
              title: const Text('My Refferal'),
              leading: const Icon(Icons.share),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TwoStepSecurityScreen()));
              },
              title: const Text('2-FA Security'),
              leading: const Icon(Icons.security),
            ),
            ListTile(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
              title: const Text('Edit Profile'),
              leading: const Icon(Icons.person),
            ),
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
        //  Column(
        //   children: [
        //     SizedBox(
        //       height: height * .1,
        //     ),
        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const BottomNavigationbar()));
        //       },
        //       title: const Text('Home'),
        //       leading: const Icon(Icons.home),
        //     ),
        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const DashboardScreen()));
        //       },
        //       title: const Text('Dashboard'),
        //       leading: const Icon(Icons.dashboard),
        //     ),

        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const PaymentScreen()));
        //       },
        //       title: const Text('Add Fund'),
        //       leading: const Icon(Icons.payment),
        //     ),

        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const DepositHistoryScreen()));
        //       },
        //       title: const Text('Deposit History'),
        //       leading: const Icon(Icons.history_edu_outlined),
        //     ),
        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const AboutScreen()));
        //       },
        //       title: const Text('About'),
        //       leading: const Icon(Icons.perm_contact_calendar_sharp),
        //     ),
        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const HomeScreen()));
        //       },
        //       title: const Text('Plan'),
        //       leading: const Icon(Icons.next_plan_outlined),
        //     ),
        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const FactsScreen()));
        //       },
        //       title: const Text('FAQ'),
        //       leading: const Icon(Icons.question_mark_rounded),
        //     ),

        //      ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const WithDrawlScreen()));
        //       },
        //       title: const Text('Withdraw'),
        //       leading: const Icon(Icons.money_sharp),
        //     ),
        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: (){
        //         Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
        //       },
        //       title: const Text('profile'),
        //       leading: const Icon(Icons.person),
        //     ),

        //     ListTile(
        //       splashColor: Colors.blue,
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => const ContactScreen()));
        //       },
        //       title: const Text('Contact'),
        //       leading: const Icon(Icons.contact_page_rounded),
        //     ),
        //   ],
        // ),
      ),
    ));
  }
}
