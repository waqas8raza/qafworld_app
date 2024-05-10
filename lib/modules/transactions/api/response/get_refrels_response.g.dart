// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_refrels_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetReferralsResponse _$GetReferralsResponseFromJson(
        Map<String, dynamic> json) =>
    GetReferralsResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$GetReferralsResponseToJson(
        GetReferralsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      users1: (json['1'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      users2: (json['2'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      users3: (json['3'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      users4: (json['4'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      users5: (json['5'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      '1': instance.users1,
      '2': instance.users2,
      '3': instance.users3,
      '4': instance.users4,
      '5': instance.users5,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phoneCode: json['phone_code'] as String?,
      phone: json['phone'] as String?,
      referralId: (json['referral_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      image: json['image'] as String?,
      fullname: json['fullname'] as String?,
      mobile: json['mobile'] as String?,
      lastSeen: json['last_seen'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'phone_code': instance.phoneCode,
      'phone': instance.phone,
      'referral_id': instance.referralId,
      'created_at': instance.createdAt,
      'image': instance.image,
      'fullname': instance.fullname,
      'mobile': instance.mobile,
      'last_seen': instance.lastSeen,
    };
