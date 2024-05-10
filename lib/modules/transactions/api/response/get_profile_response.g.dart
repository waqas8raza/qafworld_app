// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) =>
    GetProfileResponse(
      status: json['status'] as String,
      statusCode: json['statusCode'] as String,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetProfileResponseToJson(GetProfileResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: (json['id'] as num).toInt(),
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      username: json['username'] as String,
      referral_id: (json['referral_id'] as num?)?.toInt(),
      language_id: (json['language_id'] as num).toInt(),
      email: json['email'] as String,
      country_code: json['country_code'] as String?,
      phone_code: json['phone_code'] as String,
      phone: json['phone'] as String,
      balance: json['balance'] as String,
      plan_id: (json['plan_id'] as num).toInt(),
      daily_ad_limit: (json['daily_ad_limit'] as num).toInt(),
      validity_date: DateTime.parse(json['validity_date'] as String),
      free_plan_purchased: (json['free_plan_purchased'] as num).toInt(),
      image: json['image'] as String,
      address: json['address'] as String,
      provider: json['provider'] as String,
      provider_id: json['provider_id'] as String,
      access_token: json['access_token'] as String,
      status: (json['status'] as num).toInt(),
      identity_verify: (json['identity_verify'] as num).toInt(),
      address_verify: (json['address_verify'] as num).toInt(),
      two_fa: (json['two_fa'] as num).toInt(),
      two_fa_verify: (json['two_fa_verify'] as num).toInt(),
      two_fa_code: json['two_fa_code'] as String?,
      email_verification: (json['email_verification'] as num).toInt(),
      sms_verification: (json['sms_verification'] as num).toInt(),
      verify_code: json['verify_code'] as String?,
      sent_at: json['sent_at'] == null
          ? null
          : DateTime.parse(json['sent_at'] as String),
      last_login: DateTime.parse(json['last_login'] as String),
      last_seen: json['last_seen'] as String,
      email_verified_at: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      fullname: json['fullname'] as String,
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'referral_id': instance.referral_id,
      'language_id': instance.language_id,
      'email': instance.email,
      'country_code': instance.country_code,
      'phone_code': instance.phone_code,
      'phone': instance.phone,
      'balance': instance.balance,
      'plan_id': instance.plan_id,
      'daily_ad_limit': instance.daily_ad_limit,
      'validity_date': instance.validity_date.toIso8601String(),
      'free_plan_purchased': instance.free_plan_purchased,
      'image': instance.image,
      'address': instance.address,
      'provider': instance.provider,
      'provider_id': instance.provider_id,
      'access_token': instance.access_token,
      'status': instance.status,
      'identity_verify': instance.identity_verify,
      'address_verify': instance.address_verify,
      'two_fa': instance.two_fa,
      'two_fa_verify': instance.two_fa_verify,
      'two_fa_code': instance.two_fa_code,
      'email_verification': instance.email_verification,
      'sms_verification': instance.sms_verification,
      'verify_code': instance.verify_code,
      'sent_at': instance.sent_at?.toIso8601String(),
      'last_login': instance.last_login.toIso8601String(),
      'last_seen': instance.last_seen,
      'email_verified_at': instance.email_verified_at?.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'fullname': instance.fullname,
      'mobile': instance.mobile,
    };
