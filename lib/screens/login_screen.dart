import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/login_user_dto.dart';
import 'package:qafworld_app/modules/auth/service/auth_service.dart';
import 'package:qafworld_app/screens/bottom_navbar.dart';
import 'package:qafworld_app/screens/signup_screen.dart';
import 'package:qafworld_app/utils/app_snack_bar.dart';

import '../modules/transactions/service/api_service.dart';
import '../utils/input_validator.dart';
import '../utils/loading_provider.dart';

final loadingProvider = StateNotifierProvider((ref) => LoadingProvider());

class LogInScreen extends ConsumerStatefulWidget {
  const LogInScreen({super.key});

  @override
  createState() => _LogInScreenState();
}

class _LogInScreenState extends ConsumerState<LogInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // ignore: non_constant_identifier_names
  bool PasswordObscured = true;
  bool is_checked = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loadingProvider);

    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.08,
              ),
              const Text(
                'LogIn',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              Container(
                height: height * 0.6,
                width: width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            validator: (value) =>
                                InputValidator.validateEmail(value!),
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: 'E-mail or Username',
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
                                InputValidator.validatePassword(value!),
                            controller: passwordController,
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
                              'Remember me',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.22,
                            ),
                            const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )
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
                                    .loginUser(LoginUserDto(
                                        email: emailController.text,
                                        password: passwordController.text));
                                ref
                                    .read(loadingProvider.notifier)
                                    .setLoading(false);
                                if (response.message ==
                                    'User logged in successfully') {
                                  appSnackBar(
                                      title: 'Login',
                                      message: 'User logged in successfully');

                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: (context) {
                                      return const BottomNavigationbar();
                                    },
                                  ));
                                } else if (response.message ==
                                    'Invalid credentials') {
                                  appSnackBar(
                                      title: 'Login Failed',
                                      message: 'Invalid credentials');
                                }
                              }
                            },
                            child: Container(
                              height: height * 0.05,
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
                                          'SIGN IN',
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUpScreen()));
                                },
                                child: const Text(
                                  "Create account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height * 0.001,
                    width: width * 0.27,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  const Text(
                    'Sign In With Google',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Container(
                    height: height * 0.001,
                    width: width * 0.27,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ],
              ),
              Center(
                  child: Image.asset(
                'assets/g.jpg',
                height: height * 0.04,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
