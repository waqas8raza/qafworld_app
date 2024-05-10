import 'package:json_annotation/json_annotation.dart';

part 'get_profile_response.g.dart';

@JsonSerializable()
class GetProfileResponse {
  final String status;
  final String statusCode;
  final UserData data;

  GetProfileResponse({
    required this.status,
    required this.statusCode,
    required this.data,
  });

  factory GetProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetProfileResponseToJson(this);
}

@JsonSerializable()
class UserData {
  int id;
  String firstname;
  String lastname;
  String username;
  int? referral_id;
  int language_id;
  String email;
  String? country_code;
  String phone_code;
  String phone;
  String balance;
  int plan_id;
  int daily_ad_limit;
  DateTime validity_date;
  int free_plan_purchased;
  String image;
  String address;
  String provider;
  String provider_id;
  String access_token;
  int status;
  int identity_verify;
  int address_verify;
  int two_fa;
  int two_fa_verify;
  String?
      two_fa_code; // Consider using String instead of dynamic if it's a string
  int email_verification;
  int sms_verification;
  String?
      verify_code; // Consider using String instead of dynamic if it's a string
  DateTime? sent_at; // Nullable DateTime
  DateTime last_login;
  String last_seen;
  DateTime? email_verified_at; // Nullable DateTime
  DateTime created_at;
  DateTime updated_at;
  String fullname;
  String mobile;

  UserData({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.referral_id,
    required this.language_id,
    required this.email,
    this.country_code,
    required this.phone_code,
    required this.phone,
    required this.balance,
    required this.plan_id,
    required this.daily_ad_limit,
    required this.validity_date,
    required this.free_plan_purchased,
    required this.image,
    required this.address,
    required this.provider,
    required this.provider_id,
    required this.access_token,
    required this.status,
    required this.identity_verify,
    required this.address_verify,
    required this.two_fa,
    required this.two_fa_verify,
    this.two_fa_code,
    required this.email_verification,
    required this.sms_verification,
    this.verify_code,
    this.sent_at,
    required this.last_login,
    required this.last_seen,
    this.email_verified_at,
    required this.created_at,
    required this.updated_at,
    required this.fullname,
    required this.mobile,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
