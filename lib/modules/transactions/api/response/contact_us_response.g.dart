// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsResponse _$ContactUsResponseFromJson(Map<String, dynamic> json) =>
    ContactUsResponse(
      status: json['status'] as String?,
      statusCode: json['statusCode'] as String?,
      data: json['data'] == null
          ? null
          : ContactData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactUsResponseToJson(ContactUsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

ContactData _$ContactDataFromJson(Map<String, dynamic> json) => ContactData(
      id: (json['id'] as num?)?.toInt(),
      languageId: (json['language_id'] as num?)?.toInt(),
      sectionName: json['section_name'] as String?,
      description: json['description'] == null
          ? null
          : ContactDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ContactDataToJson(ContactData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'section_name': instance.sectionName,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

ContactDescription _$ContactDescriptionFromJson(Map<String, dynamic> json) =>
    ContactDescription(
      heading: json['heading'] as String?,
      subHeading: json['sub_heading'] as String?,
      address: json['address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      footerShortDetails: json['footer_short_details'] as String?,
    );

Map<String, dynamic> _$ContactDescriptionToJson(ContactDescription instance) =>
    <String, dynamic>{
      'heading': instance.heading,
      'sub_heading': instance.subHeading,
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'footer_short_details': instance.footerShortDetails,
    };
