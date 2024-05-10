// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_advertisement_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllAdvertisementResponse _$AllAdvertisementResponseFromJson(
        Map<String, dynamic> json) =>
    AllAdvertisementResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : AdvertisementData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$AllAdvertisementResponseToJson(
        AllAdvertisementResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

AdvertisementData _$AdvertisementDataFromJson(Map<String, dynamic> json) =>
    AdvertisementData(
      current_page: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Advertisement.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_page_url: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      last_page: (json['last_page'] as num?)?.toInt(),
      last_page_url: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => AdvertisementLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      per_page: (json['per_page'] as num?)?.toInt(),
      prev_page_url: (json['prev_page_url'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AdvertisementDataToJson(AdvertisementData instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
      'first_page_url': instance.first_page_url,
      'from': instance.from,
      'last_page': instance.last_page,
      'last_page_url': instance.last_page_url,
      'links': instance.links,
      'per_page': instance.per_page,
      'prev_page_url': instance.prev_page_url,
      'to': instance.to,
      'total': instance.total,
    };

Advertisement _$AdvertisementFromJson(Map<String, dynamic> json) =>
    Advertisement(
      id: (json['id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      ads_name: json['ads_name'] as String?,
      ads_type: (json['ads_type'] as num?)?.toInt(),
      ads_body: json['ads_body'] as String?,
      user_amount: json['user_amount'] as String?,
      ads_duration: (json['ads_duration'] as num?)?.toInt(),
      max_show_limit: (json['max_show_limit'] as num?)?.toInt(),
      shown: (json['shown'] as num?)?.toInt(),
      remaining: (json['remaining'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      today_ptc_view_count: (json['today_ptc_view_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AdvertisementToJson(Advertisement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'ads_name': instance.ads_name,
      'ads_type': instance.ads_type,
      'ads_body': instance.ads_body,
      'user_amount': instance.user_amount,
      'ads_duration': instance.ads_duration,
      'max_show_limit': instance.max_show_limit,
      'shown': instance.shown,
      'remaining': instance.remaining,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'today_ptc_view_count': instance.today_ptc_view_count,
    };

AdvertisementLink _$AdvertisementLinkFromJson(Map<String, dynamic> json) =>
    AdvertisementLink(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$AdvertisementLinkToJson(AdvertisementLink instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
