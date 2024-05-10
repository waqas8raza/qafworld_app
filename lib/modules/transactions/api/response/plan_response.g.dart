// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanResponse _$PlanResponseFromJson(Map<String, dynamic> json) => PlanResponse(
      status: json['status'] as String,
      data: PlanData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String,
    );

Map<String, dynamic> _$PlanResponseToJson(PlanResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

PlanData _$PlanDataFromJson(Map<String, dynamic> json) => PlanData(
      plans: (json['plans'] as List<dynamic>)
          .map((e) => Plan.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      templates: Templates.fromJson(json['templates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlanDataToJson(PlanData instance) => <String, dynamic>{
      'plans': instance.plans,
      'title': instance.title,
      'templates': instance.templates,
    };

Templates _$TemplatesFromJson(Map<String, dynamic> json) => Templates(
      plan: (json['plan'] as List<dynamic>)
          .map((e) => Template.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemplatesToJson(Templates instance) => <String, dynamic>{
      'plan': instance.plan,
    };

Template _$TemplateFromJson(Map<String, dynamic> json) => Template(
      id: (json['id'] as num?)?.toInt(),
      language_id: (json['language_id'] as num?)?.toInt(),
      sectionName: json['sectionName'] as String?,
      description: json['description'] == null
          ? null
          : TemplateDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$TemplateToJson(Template instance) => <String, dynamic>{
      'id': instance.id,
      'language_id': instance.language_id,
      'sectionName': instance.sectionName,
      'description': instance.description,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

TemplateDescription _$TemplateDescriptionFromJson(Map<String, dynamic> json) =>
    TemplateDescription(
      title: json['title'] as String?,
      sub_title: json['sub_title'] as String?,
    );

Map<String, dynamic> _$TemplateDescriptionToJson(
        TemplateDescription instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.sub_title,
    };

Plan _$PlanFromJson(Map<String, dynamic> json) => Plan(
      id: (json['id'] as num?)?.toInt(),
      price: json['price'] as String?,
      daily_ad_limit: json['daily_ad_limit'] as String?,
      validity: json['validity'] as String?,
      referral_level: json['referral_level'] as String?,
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      details: json['details'] == null
          ? null
          : PlanDetails.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlanToJson(Plan instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'daily_ad_limit': instance.daily_ad_limit,
      'validity': instance.validity,
      'referral_level': instance.referral_level,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'details': instance.details,
    };

PlanDetails _$PlanDetailsFromJson(Map<String, dynamic> json) => PlanDetails(
      id: (json['id'] as num?)?.toInt(),
      planId: (json['planId'] as num?)?.toInt(),
      languageId: (json['languageId'] as num?)?.toInt(),
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      short_title: json['short_title'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$PlanDetailsToJson(PlanDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'planId': instance.planId,
      'languageId': instance.languageId,
      'name': instance.name,
      'tag': instance.tag,
      'short_title': instance.short_title,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
