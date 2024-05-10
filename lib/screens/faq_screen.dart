import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/transactions/api/response/faq_response.dart';
import 'package:qafworld_app/modules/transactions/service/api_service.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/plan_page.dart';
import 'package:qafworld_app/screens/login_screen.dart';

import '../widgets/app_drawer_widget.dart';
import '../widgets/appbar_widget.dart';

class FAQScreen extends ConsumerStatefulWidget {
  const FAQScreen({super.key});

  @override
  createState() => _FAQScreenState();
}

class _FAQScreenState extends ConsumerState<FAQScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarWidget(
        scaffoldKey: _scaffoldKey,
      ),
      endDrawer: AppDrawerWidget(
        height: height,
        width: width,
      ),
      body: FutureBuilder(
          future: ref.read(appServiceProvider).getAllFAQ(),
          builder: (context, AsyncSnapshot<FAQResponse> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final faq = snapshot.data!.data!.contentDetails?.faq;

            return ListView.builder(
              itemCount: faq!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    faq[index].description!.title!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  subtitle: Text(
                    faq[index]
                        .description!
                        .description!
                        .split('</p>')
                        .where((element) => element.isNotEmpty)
                        .map((element) =>
                            element.replaceAll(RegExp('<p>|</p>[]'), ''))
                        .join('\n')
                        .toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              },
            );
          }),
    );
  }
}
