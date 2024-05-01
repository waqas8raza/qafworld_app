import 'package:flutter/material.dart';

import 'UiHelper.dart';


class PasswordScreen extends StatelessWidget {
   PasswordScreen({super.key});
final _currentPassword= TextEditingController();
final _newPassword= TextEditingController();
final _confirmPassword= TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.customTextField(_currentPassword, 'Enter current password', 'Current password',true),
          UiHelper.customTextField(_newPassword, 'Enter current password', 'Current password',true),
          UiHelper.customTextField(_confirmPassword, 'Enter current password', 'Current password',true),
          GestureDetector(
            onTap: (){

            },
            child: Container(
              height: height*.08,
              width: width*.92,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [
                    Color(0xfffaaf40),
                    Color(0xff01acee)
                  ])
              ),
              child: const Center(child: Text('Update Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

        ],
      ),

      ),
    );
  }
}
