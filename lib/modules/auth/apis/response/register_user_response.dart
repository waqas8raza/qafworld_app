import 'package:json_annotation/json_annotation.dart';

part 'register_user_response.g.dart';

@JsonSerializable()
class UserRegistrationResponse {
  final String message;
  final String status;
  final UserData data;
  final String statusCode;

  UserRegistrationResponse({
    required this.message,
    required this.status,
    required this.data,
    required this.statusCode,
  });

  factory UserRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserRegistrationResponseToJson(this);
}

@JsonSerializable()
class UserData {
  final String firstname;
  final String lastname;
  final String username;
  final String email;
  final String phone;
  final String updated_at;
  final String created_at;
  final int id;
  final String fullname;
  final String mobile;
  final String last_seen;

  UserData({
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.email,
    required this.phone,
    required this.updated_at,
    required this.created_at,
    required this.id,
    required this.fullname,
    required this.mobile,
    required this.last_seen,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
