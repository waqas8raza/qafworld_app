import 'package:json_annotation/json_annotation.dart';

part 'register_user_dto.g.dart';

@JsonSerializable()
class RegisterUserDto {
  final String firstname;
  final String lastname;
  final String username;
  final String email;
  final String phone;
  final String password;
  final String confirm_password;

  RegisterUserDto(
      {required this.firstname,
      required this.lastname,
      required this.username,
      required this.email,
      required this.phone,
      required this.password,
      required this.confirm_password});

  factory RegisterUserDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUserDtoToJson(this);
}
