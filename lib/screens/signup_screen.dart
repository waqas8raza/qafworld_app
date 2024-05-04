import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/register_user_dto.dart';
import 'package:qafworld_app/modules/auth/service/auth_service.dart';
import 'package:qafworld_app/screens/login_screen.dart';
import 'package:qafworld_app/utils/app_snack_bar.dart';
import 'package:qafworld_app/utils/input_validator.dart';

import '../utils/loading_provider.dart';

final loadingProvider = StateNotifierProvider((ref) => LoadingProvider());

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  createState() => _SignUpScreenState();
}

bool PasswordObscured = false;

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool is_checked = false;
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loadingProvider);
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          SizedBox(
            height: height * 0.08,
          ),
          const Text(
            'Register',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Form(
                key: formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: firstNameController,
                          validator: (value) =>
                              InputValidator.validateName(value!),
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          validator: (value) =>
                              InputValidator.validateName(value!),
                          controller: lastNameController,
                          decoration: InputDecoration(
                            hintText: 'Last Name',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: userNameController,
                          validator: (value) =>
                              InputValidator.validateName(value!),
                          decoration: InputDecoration(
                            hintText: 'Username',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          validator: (value) =>
                              InputValidator.validateEmail(value!),
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'E-mail Address',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: phoneNumberController,
                          validator: (value) =>
                              InputValidator.validatePhoneNumber(value!),
                          decoration: InputDecoration(
                            hintText: '+92 3038464790',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: passwordController,
                          validator: (value) =>
                              InputValidator.validatePassword(value!),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    PasswordObscured = !PasswordObscured;
                                  });
                                },
                                icon: Icon(PasswordObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            hintText: 'Confirm Password',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          validator: (value) => InputValidator.confirmPassword(
                              value!, passwordController.text),
                          controller: confirmpasswordController,
                          obscureText: PasswordObscured,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    PasswordObscured = !PasswordObscured;
                                  });
                                },
                                icon: Icon(PasswordObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: is_checked,
                              onChanged: (val) {
                                setState(() {
                                  is_checked = val!;
                                });
                              }),
                          const Text(
                            'I Agree with the Terms & conditions ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () async {
                            if (formKey.currentState!.validate()) {
                              ref
                                  .read(loadingProvider.notifier)
                                  .setLoading(true);
                              final response = await ref
                                  .read(authServiceProvider)
                                  .registerUser(RegisterUserDto(
                                      firstname: firstNameController.text,
                                      lastname: lastNameController.text,
                                      username: userNameController.text,
                                      email: emailController.text,
                                      phone: phoneNumberController.text,
                                      password: passwordController.text,
                                      confirm_password:
                                          confirmpasswordController.text));
                              ref
                                  .read(loadingProvider.notifier)
                                  .setLoading(false);
                              if (response.status == 'success') {
                                appSnackBar(
                                    title: 'Register',
                                    message: 'Registeration Successfull');
                              } else if (response.message ==
                                  'The given data was invalid.') {
                                appSnackBar(
                                    title: 'Register failed',
                                    message: 'Email already taken');
                              } else {
                                appSnackBar(
                                    title: 'Error',
                                    message: 'Something went wrong');
                              }
                            }
                          },
                          child: Container(
                            height: height * 0.07,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color(0xfffaaf40),
                                  Color(0xff01acee)
                                ]),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: isLoading == true
                                    ? const CircularProgressIndicator()
                                    : const Text(
                                        'SIGN UP',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LogInScreen()));
                              },
                              child: const Text(
                                'LogIn here',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ))
        ]),
      ),
    ));
  }
}
