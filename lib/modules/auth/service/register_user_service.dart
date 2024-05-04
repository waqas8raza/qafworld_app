import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/register_user_dto.dart';

void registerUser(RegisterUserDto registerUserDto) async {
  var headers = {
    'Accept': 'application/json',
  };
  // RegisterUserDto registerUserDto = RegisterUserDto(
  //     firstname: 'nadir',
  //     lastname: 'hddk',
  //     username: "hekeid",
  //     email: 'user1@gmail.com',
  //     phone: '1234444',
  //     password: '123455667',
  //     confirm_password: '123455667');
  // var data = {
  //   'firstname': 'nadir1',
  //   'lastname': 'hussain1',
  //   'username': 'nadir1233',
  //   'email': 'nadir221@gmail.com',
  //   'phone': '1234567890',
  //   'password': '12345678',
  //   'confirm_password': '12345678'
  // };

  var dio = Dio();

  try {
    Response response = await dio.post(
      'http://qafworldapp.qafworld.com/api/signup',
      options: Options(
        headers: headers,
      ),
      data: jsonEncode(registerUserDto),
    );

    if (response.statusCode == 200) {
      print(response.data);
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Request failed with error: $e');
  }
}
