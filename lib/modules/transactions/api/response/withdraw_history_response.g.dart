// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WithdrawHistoryResponse _$WithdrawHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    WithdrawHistoryResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : WithdrawHistoryData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$WithdrawHistoryResponseToJson(
        WithdrawHistoryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

WithdrawHistoryData _$WithdrawHistoryDataFromJson(Map<String, dynamic> json) =>
    WithdrawHistoryData(
      payoutLog: json['payoutLog'] == null
          ? null
          : PayoutLog.fromJson(json['payoutLog'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$WithdrawHistoryDataToJson(
        WithdrawHistoryData instance) =>
    <String, dynamic>{
      'payoutLog': instance.payoutLog,
      'title': instance.title,
    };

PayoutLog _$PayoutLogFromJson(Map<String, dynamic> json) => PayoutLog(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WithdrawalData.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => PageLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PayoutLogToJson(PayoutLog instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

WithdrawalData _$WithdrawalDataFromJson(Map<String, dynamic> json) =>
    WithdrawalData(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      methodId: (json['method_id'] as num?)?.toInt(),
      responseId: json['response_id'],
      amount: json['amount'] as String?,
      charge: json['charge'] as String?,
      netAmount: json['net_amount'] as String?,
      information: (json['information'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, AccountInfo.fromJson(e as Map<String, dynamic>)),
      ),
      metaField: json['meta_field'],
      currencyCode: json['currency_code'],
      feedback: json['feedback'] as String?,
      trxId: json['trx_id'] as String?,
      status: (json['status'] as num?)?.toInt(),
      lastError: json['last_error'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WithdrawalDataToJson(WithdrawalData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'method_id': instance.methodId,
      'response_id': instance.responseId,
      'amount': instance.amount,
      'charge': instance.charge,
      'net_amount': instance.netAmount,
      'information': instance.information,
      'meta_field': instance.metaField,
      'currency_code': instance.currencyCode,
      'feedback': instance.feedback,
      'trx_id': instance.trxId,
      'status': instance.status,
      'last_error': instance.lastError,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
      'method': instance.method,
    };

AccountInfo _$AccountInfoFromJson(Map<String, dynamic> json) => AccountInfo(
      fieldValue: json['fieldValue'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AccountInfoToJson(AccountInfo instance) =>
    <String, dynamic>{
      'fieldValue': instance.fieldValue,
      'type': instance.type,
    };

PageLink _$PageLinkFromJson(Map<String, dynamic> json) => PageLink(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$PageLinkToJson(PageLink instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      username: json['username'] as String?,
      languageId: (json['language_id'] as num?)?.toInt(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      balance: json['balance'] as String?,
      dailyAdLimit: (json['daily_ad_limit'] as num?)?.toInt(),
      validityDate: json['validity_date'] as String?,
      image: json['image'] as String?,
      address: json['address'] as String?,
      provider: json['provider'] as String?,
      providerId: json['provider_id'] as String?,
      status: (json['status'] as num?)?.toInt(),
      identityVerify: (json['identity_verify'] as num?)?.toInt(),
      addressVerify: (json['address_verify'] as num?)?.toInt(),
      twoFaVerify: (json['two_fa_verify'] as num?)?.toInt(),
      emailVerification: (json['email_verification'] as num?)?.toInt(),
      smsVerification: (json['sms_verification'] as num?)?.toInt(),
      lastLogin: json['last_login'] as String?,
      lastSeen: json['last_seen'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      fullname: json['fullname'] as String?,
      mobile: json['mobile'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'language_id': instance.languageId,
      'email': instance.email,
      'phone': instance.phone,
      'balance': instance.balance,
      'daily_ad_limit': instance.dailyAdLimit,
      'validity_date': instance.validityDate,
      'image': instance.image,
      'address': instance.address,
      'provider': instance.provider,
      'provider_id': instance.providerId,
      'status': instance.status,
      'identity_verify': instance.identityVerify,
      'address_verify': instance.addressVerify,
      'two_fa_verify': instance.twoFaVerify,
      'email_verification': instance.emailVerification,
      'sms_verification': instance.smsVerification,
      'last_login': instance.lastLogin,
      'last_seen': instance.lastSeen,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'fullname': instance.fullname,
      'mobile': instance.mobile,
    };

Method _$MethodFromJson(Map<String, dynamic> json) => Method(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      minimumAmount: json['minimum_amount'] as String?,
      maximumAmount: json['maximum_amount'] as String?,
      fixedCharge: json['fixed_charge'] as String?,
      percentCharge: json['percent_charge'] as String?,
      status: (json['status'] as num?)?.toInt(),
      inputForm: (json['input_form'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MethodInput.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$MethodToJson(Method instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'minimum_amount': instance.minimumAmount,
      'maximum_amount': instance.maximumAmount,
      'fixed_charge': instance.fixedCharge,
      'percent_charge': instance.percentCharge,
      'status': instance.status,
      'input_form': instance.inputForm,
    };

MethodInput _$MethodInputFromJson(Map<String, dynamic> json) => MethodInput(
      name: json['name'] as String?,
      label: json['label'] as String?,
      type: json['type'] as String?,
      validation: json['validation'] as String?,
    );

Map<String, dynamic> _$MethodInputToJson(MethodInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'label': instance.label,
      'type': instance.type,
      'validation': instance.validation,
    };
