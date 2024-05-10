import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/transactions/service/api_service.dart';

import '../modules/transactions/api/response/get_refrels_response.dart';
import '../widgets/app_drawer_widget.dart';
import '../widgets/appbar_widget.dart';

class MyRefferalScreen extends ConsumerStatefulWidget {
  const MyRefferalScreen({super.key});

  @override
  createState() => _MyRefferalScreenState();
}

final _scaffoldKey = GlobalKey<ScaffoldState>();

class _MyRefferalScreenState extends ConsumerState<MyRefferalScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBarWidget(scaffoldKey: _scaffoldKey),
        endDrawer: AppDrawerWidget(height: height, width: width),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Referrals',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.03,
                          ),
                          const Text(
                            'Referral Link',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            children: [
                              Container(
                                height: height * 0.06,
                                width: width * 0.7,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText:
                                          'https://qafworld.com/register/Maxcore1122',
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      )),
                                ),
                              ),
                              Container(
                                  height: height * 0.06,
                                  width: width * 0.23,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xfffaaf40),
                                        Color(0xff01acee)
                                      ]),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: const Center(
                                      child: Text(
                                    'Copy Link',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )))
                            ],
                          ),
                        ]),
                  ),
                  Container(
                    child: FutureBuilder(
                      future: ref.read(appServiceProvider).getAllRefrels(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                            child:
                                Text('Error fetching data: ${snapshot.error}'),
                          );
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: Text('No data available'),
                          );
                        }

                        // Data is successfully loaded
                        final response = snapshot.data!;
                        List<User> allUsers = [];

                        // Add all users from all user lists to a single list
                        allUsers.addAll(response.data?.users1 ?? []);
                        allUsers.addAll(response.data?.users2 ?? []);
                        allUsers.addAll(response.data?.users3 ?? []);
                        allUsers.addAll(response.data?.users4 ?? []);
                        allUsers.addAll(response.data?.users5 ?? []);

                        if (allUsers.isEmpty) {
                          return const Center(
                            child: Text('No users found'),
                          );
                        }
                        print(allUsers.length);
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: allUsers.length,
                          itemBuilder: (context, index) {
                            User user = allUsers[index];
                            return ListTile(
                              title: Text('${user.firstname} ${user.lastname}'),
                              subtitle: Text(user.email ?? ''),
                            );
                          },
                        );
                      },
                    ),
                  )
                ]),
          ),
        ));
  }
}
