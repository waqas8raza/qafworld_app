// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserDto _$RegisterUserDtoFromJson(Map<String, dynamic> json) =>
    RegisterUserDto(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      confirm_password: json['confirm_password'] as String,
    );

Map<String, dynamic> _$RegisterUserDtoToJson(RegisterUserDto instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'confirm_password': instance.confirm_password,
    };
