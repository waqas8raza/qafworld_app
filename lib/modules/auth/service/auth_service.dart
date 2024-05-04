import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/login_user_dto.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/register_user_dto.dart';
import 'package:qafworld_app/modules/auth/service/api_auth_service.dart';

import '../../api_client_helpers/api_helper.dart';
import '../apis/response/login_response.dart';
import '../apis/response/register_user_response.dart';

abstract class AuthService {
  AuthService(this.apiClient);
  final Dio apiClient;
  Future<UserRegistrationResponse> registerUser(
      RegisterUserDto registerUserDto);

  Future<LoginResponse> loginUser(LoginUserDto loginUserDto);
}

final authServiceProvider =
    Provider<AuthService>((ref) => ApiAuthService(ref.read(apiClient)));
