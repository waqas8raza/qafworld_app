import 'package:qafworld_app/modules/auth/apis/api.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/login_user_dto.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/register_user_dto.dart';
import 'package:qafworld_app/modules/auth/apis/response/login_response.dart';
import 'package:qafworld_app/modules/auth/service/auth_service.dart';
import 'package:qafworld_app/utils/app_snack_bar.dart';

import '../apis/response/register_user_response.dart';

class ApiAuthService extends AuthService {
  ApiAuthService(super.apiClient);

  @override
  Future<UserRegistrationResponse> registerUser(
      RegisterUserDto registerUserDto) async {
    final response = await AuthApi().postRegister(registerUserDto);

    return response;
  }

  @override
  Future<LoginResponse> loginUser(LoginUserDto loginUserDto) async {
    try {
      final response = await AuthApi().postLogin(loginUserDto);

      return response;
    } catch (e) {
      appSnackBar(title: 'Oops!', message: e.toString());
    }
    return LoginResponse('invalid credentials');
  }
}
