// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegistrationResponse _$UserRegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationResponse(
      message: json['message'] as String,
      status: json['status'] as String,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String,
    );

Map<String, dynamic> _$UserRegistrationResponseToJson(
        UserRegistrationResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      updated_at: json['updated_at'] as String,
      created_at: json['created_at'] as String,
      id: (json['id'] as num).toInt(),
      fullname: json['fullname'] as String,
      mobile: json['mobile'] as String,
      last_seen: json['last_seen'] as String,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
      'fullname': instance.fullname,
      'mobile': instance.mobile,
      'last_seen': instance.last_seen,
    };
