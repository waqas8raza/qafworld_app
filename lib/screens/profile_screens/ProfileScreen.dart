import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'AddressScreen.dart';
import 'IdentityVerification.dart';
import 'PasswordScreen.dart';
import 'UiHelper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool container1 = true;

  bool container2 = false;

  bool container3 = false;

  bool container4 = false;
  bool text1 = false;
  bool text2 = false;
  bool text3 = false;
  bool text4 = false;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _languageController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  String _selectedLanguag = 'English';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: height * .30,
                    width: width * .90,
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    child: Center(
                      child: DottedBorder(
                        dashPattern: const [8, 4],
                        strokeWidth: 2,
                        child: Container(
                          height: height * .15,
                          width: width * .45,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/prof.jpg',
                                ),
                                fit: BoxFit.contain,
                              )),
                          child: const Center(
                              child: Text(
                            'Select An Image',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .050,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: height * .07,
                    width: width * .92,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [Color(0xfffaaf40), Color(0xff01acee)])),
                    child: const Center(
                        child: Text(
                      'Image Update',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: height * .020,
                ),
                Container(
                  height: height * 1.2,
                  width: width * .94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            container1 = true;
                            container2 = false;
                            container3 = false;
                            container4 = false;
                          });
                        },
                        child: Container(
                          height: height * .055,
                          width: width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: container1
                                  ? Colors.green
                                  : Colors.blue.shade900),
                          child: const Center(
                              child: Text(
                            'Profile Information',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: height * .020,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            container1 = false;
                            container2 = true;
                            container3 = false;
                            container4 = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PasswordScreen()));
                          });
                        },
                        child: Container(
                          height: height * .055,
                          width: width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: container2
                                  ? Colors.green
                                  : Colors.blue.shade900),
                          child: const Center(
                              child: Text(
                            'Password Setting',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: height * .020,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            container1 = false;
                            container2 = false;
                            container3 = true;
                            container4 = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const IdentityVerificationScreen()));
                          });
                        },
                        child: Container(
                          height: height * .055,
                          width: width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: container3
                                  ? Colors.green
                                  : Colors.blue.shade900),
                          child: const Center(
                              child: Text(
                            'Identity Verification',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: height * .020,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            container1 = false;
                            container2 = false;
                            container3 = false;
                            container4 = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddressScreen()));
                          });
                        },
                        child: Container(
                          height: height * .055,
                          width: width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: container4
                                  ? Colors.green
                                  : Colors.blue.shade900),
                          child: const Center(
                              child: Text(
                            'Address Verification',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: height * .05,
                      ),
                      Container(
                        height: height * .0010000,
                        width: width * 1,
                        decoration: BoxDecoration(color: Colors.grey.shade400),
                      ),
                      SizedBox(
                        height: height * .040,
                      ),
                      UiHelper.customTextField(_firstNameController,
                          'Enter your first name', 'First Name', false),
                      UiHelper.customTextField(_lastNameController,
                          'Enter your Last name', 'Last Name', false),
                      UiHelper.customTextField(
                          _usernameController, 'Username', 'UserName', false),
                      UiHelper.customTextField(_emailController,
                          'Enter your E-mail', 'Enter Mail', false),
                      UiHelper.customTextField(_phoneController,
                          'Enter your phone no', 'Phone No', false),
                      SizedBox(
                        height: height * .010,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Expanded(
                          child: DropdownButtonFormField<String>(
                            value: _selectedLanguag,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                            ),
                            items: <String>[
                              'English',
                              'Urdu',
                              'Arabic',
                              'persian',
                              'Hindi'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedLanguag = newValue!;
                                _languageController.text = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * .040,
                      ),
                      TextFormField(
                        controller: _addressController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: 'Address'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your address';
                          }
                          return null;
                        },
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: height * .010,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: height * .07,
                          width: width * .92,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Color(0xfffaaf40),
                                Color(0xff01acee)
                              ])),
                          child: const Center(
                              child: Text(
                            'Update User',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// List names=[
//   'Transaction ID',
//   'Gateway',
//   'Amount',
//   'Charge',
//   'Status',
//   'Date-Time'
// ];