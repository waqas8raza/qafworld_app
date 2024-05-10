import 'package:json_annotation/json_annotation.dart';

part 'withdraw_history_response.g.dart';

@JsonSerializable()
class WithdrawHistoryResponse {
  final String? status;
  final WithdrawHistoryData? data;
  final String? statusCode;

  WithdrawHistoryResponse({this.status, this.data, this.statusCode});

  factory WithdrawHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$WithdrawHistoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WithdrawHistoryResponseToJson(this);
}

@JsonSerializable()
class WithdrawHistoryData {
  final PayoutLog? payoutLog;
  final String? title;

  WithdrawHistoryData({this.payoutLog, this.title});

  factory WithdrawHistoryData.fromJson(Map<String, dynamic> json) =>
      _$WithdrawHistoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$WithdrawHistoryDataToJson(this);
}

@JsonSerializable()
class PayoutLog {
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<WithdrawalData>? data;
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  final int? from;
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<PageLink>? links;
  @JsonKey(name: 'next_page_url')
  final dynamic nextPageUrl;
  final String? path;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'prev_page_url')
  final dynamic prevPageUrl;
  final int? to;
  final int? total;

  PayoutLog({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory PayoutLog.fromJson(Map<String, dynamic> json) =>
      _$PayoutLogFromJson(json);

  Map<String, dynamic> toJson() => _$PayoutLogToJson(this);
}

@JsonSerializable()
class WithdrawalData {
  final int? id;
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'method_id')
  final int? methodId;
  @JsonKey(name: 'response_id')
  final dynamic responseId;
  final String? amount;
  final String? charge;
  @JsonKey(name: 'net_amount')
  final String? netAmount;
  final Map<String, AccountInfo>? information;
  @JsonKey(name: 'meta_field')
  final dynamic metaField;
  @JsonKey(name: 'currency_code')
  final dynamic currencyCode;
  final String? feedback;
  @JsonKey(name: 'trx_id')
  final String? trxId;
  final int? status;
  @JsonKey(name: 'last_error')
  final dynamic lastError;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final User? user;
  final Method? method;

  WithdrawalData({
    this.id,
    this.userId,
    this.methodId,
    this.responseId,
    this.amount,
    this.charge,
    this.netAmount,
    this.information,
    this.metaField,
    this.currencyCode,
    this.feedback,
    this.trxId,
    this.status,
    this.lastError,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.method,
  });

  factory WithdrawalData.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalDataFromJson(json);

  Map<String, dynamic> toJson() => _$WithdrawalDataToJson(this);
}

@JsonSerializable()
class AccountInfo {
  @JsonKey(name: 'fieldValue')
  final String? fieldValue;
  final String? type;

  AccountInfo({this.fieldValue, this.type});

  factory AccountInfo.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoToJson(this);
}

@JsonSerializable()
class PageLink {
  final String? url;
  final String? label;
  final bool? active;

  PageLink({this.url, this.label, this.active});

  factory PageLink.fromJson(Map<String, dynamic> json) =>
      _$PageLinkFromJson(json);

  Map<String, dynamic> toJson() => _$PageLinkToJson(this);
}

@JsonSerializable()
class User {
  final int? id;
  final String? firstname;
  final String? lastname;
  final String? username;
  @JsonKey(name: 'language_id')
  final int? languageId;
  final String? email;
  final String? phone;
  final String? balance;
  @JsonKey(name: 'daily_ad_limit')
  final int? dailyAdLimit;
  @JsonKey(name: 'validity_date')
  final String? validityDate;
  final String? image;
  final String? address;
  final String? provider;
  @JsonKey(name: 'provider_id')
  final String? providerId;
  final int? status;
  @JsonKey(name: 'identity_verify')
  final int? identityVerify;
  @JsonKey(name: 'address_verify')
  final int? addressVerify;
  @JsonKey(name: 'two_fa_verify')
  final int? twoFaVerify;
  @JsonKey(name: 'email_verification')
  final int? emailVerification;
  @JsonKey(name: 'sms_verification')
  final int? smsVerification;
  @JsonKey(name: 'last_login')
  final String? lastLogin;
  @JsonKey(name: 'last_seen')
  final String? lastSeen;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'fullname')
  final String? fullname;
  final String? mobile;

  User({
    this.id,
    this.firstname,
    this.lastname,
    this.username,
    this.languageId,
    this.email,
    this.phone,
    this.balance,
    this.dailyAdLimit,
    this.validityDate,
    this.image,
    this.address,
    this.provider,
    this.providerId,
    this.status,
    this.identityVerify,
    this.addressVerify,
    this.twoFaVerify,
    this.emailVerification,
    this.smsVerification,
    this.lastLogin,
    this.lastSeen,
    this.createdAt,
    this.updatedAt,
    this.fullname,
    this.mobile,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Method {
  final int? id;
  final String? name;
  final String? image;
  @JsonKey(name: 'minimum_amount')
  final String? minimumAmount;
  @JsonKey(name: 'maximum_amount')
  final String? maximumAmount;
  @JsonKey(name: 'fixed_charge')
  final String? fixedCharge;
  @JsonKey(name: 'percent_charge')
  final String? percentCharge;
  final int? status;
  @JsonKey(name: 'input_form')
  final Map<String, MethodInput>? inputForm;

  Method({
    this.id,
    this.name,
    this.image,
    this.minimumAmount,
    this.maximumAmount,
    this.fixedCharge,
    this.percentCharge,
    this.status,
    this.inputForm,
  });

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);

  Map<String, dynamic> toJson() => _$MethodToJson(this);
}

@JsonSerializable()
class MethodInput {
  final String? name;
  final String? label;
  final String? type;
  final String? validation;

  MethodInput({this.name, this.label, this.type, this.validation});

  factory MethodInput.fromJson(Map<String, dynamic> json) =>
      _$MethodInputFromJson(json);

  Map<String, dynamic> toJson() => _$MethodInputToJson(this);
}
