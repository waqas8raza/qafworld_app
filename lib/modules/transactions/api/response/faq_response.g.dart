// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FAQResponse _$FAQResponseFromJson(Map<String, dynamic> json) => FAQResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : FAQData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$FAQResponseToJson(FAQResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

FAQData _$FAQDataFromJson(Map<String, dynamic> json) => FAQData(
      contentDetails: json['contentDetails'] == null
          ? null
          : ContentDetails.fromJson(
              json['contentDetails'] as Map<String, dynamic>),
      increment: (json['increment'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FAQDataToJson(FAQData instance) => <String, dynamic>{
      'contentDetails': instance.contentDetails,
      'increment': instance.increment,
    };

ContentDetails _$ContentDetailsFromJson(Map<String, dynamic> json) =>
    ContentDetails(
      faq: (json['faq'] as List<dynamic>?)
          ?.map((e) => FAQItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContentDetailsToJson(ContentDetails instance) =>
    <String, dynamic>{
      'faq': instance.faq,
    };

FAQItem _$FAQItemFromJson(Map<String, dynamic> json) => FAQItem(
      id: (json['id'] as num?)?.toInt(),
      contentId: (json['contentId'] as num?)?.toInt(),
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FAQItemToJson(FAQItem instance) => <String, dynamic>{
      'id': instance.id,
      'contentId': instance.contentId,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'content': instance.content,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      contentMedia: json['contentMedia'],
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'contentMedia': instance.contentMedia,
    };
