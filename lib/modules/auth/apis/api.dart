import 'package:dio/dio.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/login_user_dto.dart';
import 'package:qafworld_app/modules/auth/apis/dtos/register_user_dto.dart';
import 'package:retrofit/retrofit.dart';

import '../../api_client_helpers/api_helper.dart';
import 'response/login_response.dart';
import 'response/register_user_response.dart';

part 'api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi() => _AuthApi(ApiHelper.client);
  // static const String _path = '/signup';

  @POST("/signup")
  Future<UserRegistrationResponse> postRegister(
      @Body() RegisterUserDto registerUserDto);

  @POST('/login')
  Future<LoginResponse> postLogin(@Body() LoginUserDto loginUserDto);
}
