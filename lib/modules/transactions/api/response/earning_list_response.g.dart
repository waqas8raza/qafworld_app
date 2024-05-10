// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earning_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EarningListResponse _$EarningListResponseFromJson(Map<String, dynamic> json) =>
    EarningListResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : EarningListData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$EarningListResponseToJson(
        EarningListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

EarningListData _$EarningListDataFromJson(Map<String, dynamic> json) =>
    EarningListData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => EarningItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EarningListDataToJson(EarningListData instance) =>
    <String, dynamic>{
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

EarningItem _$EarningItemFromJson(Map<String, dynamic> json) => EarningItem(
      id: (json['id'] as num?)?.toInt(),
      ptcId: (json['ptc_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      adViewDate: json['ad_view_date'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      advertisement: json['advertisement'] == null
          ? null
          : Advertisement.fromJson(
              json['advertisement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EarningItemToJson(EarningItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ptc_id': instance.ptcId,
      'user_id': instance.userId,
      'ad_view_date': instance.adViewDate,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'advertisement': instance.advertisement,
    };

Advertisement _$AdvertisementFromJson(Map<String, dynamic> json) =>
    Advertisement(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      adsName: json['ads_name'] as String?,
      adsType: (json['ads_type'] as num?)?.toInt(),
      adsBody: json['ads_body'] as String?,
      userAmount: json['user_amount'] as String?,
      adsDuration: (json['ads_duration'] as num?)?.toInt(),
      maxShowLimit: (json['max_show_limit'] as num?)?.toInt(),
      shown: (json['shown'] as num?)?.toInt(),
      remaining: (json['remaining'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$AdvertisementToJson(Advertisement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'ads_name': instance.adsName,
      'ads_type': instance.adsType,
      'ads_body': instance.adsBody,
      'user_amount': instance.userAmount,
      'ads_duration': instance.adsDuration,
      'max_show_limit': instance.maxShowLimit,
      'shown': instance.shown,
      'remaining': instance.remaining,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
