// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_us_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutUsResponse _$AboutUsResponseFromJson(Map<String, dynamic> json) =>
    AboutUsResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : ApiResponseData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$AboutUsResponseToJson(AboutUsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

ApiResponseData _$ApiResponseDataFromJson(Map<String, dynamic> json) =>
    ApiResponseData(
      templates: json['templates'] == null
          ? null
          : ApiTemplates.fromJson(json['templates'] as Map<String, dynamic>),
      contentDetails: json['contentDetails'] == null
          ? null
          : ApiContentDetails.fromJson(
              json['contentDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiResponseDataToJson(ApiResponseData instance) =>
    <String, dynamic>{
      'templates': instance.templates,
      'contentDetails': instance.contentDetails,
    };

ApiTemplates _$ApiTemplatesFromJson(Map<String, dynamic> json) => ApiTemplates(
      aboutUsTemplates: (json['about-us'] as List<dynamic>?)
          ?.map((e) => AboutUsTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
      testimonial: (json['testimonial'] as List<dynamic>?)
          ?.map((e) => TestimonialTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
      feature: (json['feature'] as List<dynamic>?)
          ?.map((e) => FeatureTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiTemplatesToJson(ApiTemplates instance) =>
    <String, dynamic>{
      'about-us': instance.aboutUsTemplates,
      'testimonial': instance.testimonial,
      'feature': instance.feature,
    };

AboutUsTemplate _$AboutUsTemplateFromJson(Map<String, dynamic> json) =>
    AboutUsTemplate(
      id: (json['id'] as num?)?.toInt(),
      languageId: (json['language_id'] as num?)?.toInt(),
      sectionName: json['section_name'] as String?,
      description: json['description'] == null
          ? null
          : AboutUsDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$AboutUsTemplateToJson(AboutUsTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'section_name': instance.sectionName,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

AboutUsDescription _$AboutUsDescriptionFromJson(Map<String, dynamic> json) =>
    AboutUsDescription(
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
      shortDescription: json['short_description'] as String?,
      buttonName: json['button_name'] as String?,
    );

Map<String, dynamic> _$AboutUsDescriptionToJson(AboutUsDescription instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.subTitle,
      'short_description': instance.shortDescription,
      'button_name': instance.buttonName,
    };

TestimonialTemplate _$TestimonialTemplateFromJson(Map<String, dynamic> json) =>
    TestimonialTemplate(
      id: (json['id'] as num?)?.toInt(),
      languageId: (json['language_id'] as num?)?.toInt(),
      sectionName: json['section_name'] as String?,
      description: json['description'] == null
          ? null
          : TestimonialDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$TestimonialTemplateToJson(
        TestimonialTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'section_name': instance.sectionName,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

TestimonialDescription _$TestimonialDescriptionFromJson(
        Map<String, dynamic> json) =>
    TestimonialDescription(
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
    );

Map<String, dynamic> _$TestimonialDescriptionToJson(
        TestimonialDescription instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.subTitle,
    };

FeatureTemplate _$FeatureTemplateFromJson(Map<String, dynamic> json) =>
    FeatureTemplate(
      id: (json['id'] as num?)?.toInt(),
      languageId: (json['language_id'] as num?)?.toInt(),
      sectionName: json['section_name'] as String?,
      description: json['description'] == null
          ? null
          : FeatureDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$FeatureTemplateToJson(FeatureTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'section_name': instance.sectionName,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

FeatureDescription _$FeatureDescriptionFromJson(Map<String, dynamic> json) =>
    FeatureDescription(
      title: json['title'] as String?,
      information: json['information'] as String?,
    );

Map<String, dynamic> _$FeatureDescriptionToJson(FeatureDescription instance) =>
    <String, dynamic>{
      'title': instance.title,
      'information': instance.information,
    };

ApiContentDetails _$ApiContentDetailsFromJson(Map<String, dynamic> json) =>
    ApiContentDetails(
      feature: (json['feature'] as List<dynamic>?)
          ?.map((e) => FeatureContentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiContentDetailsToJson(ApiContentDetails instance) =>
    <String, dynamic>{
      'feature': instance.feature,
    };

FeatureContentDetail _$FeatureContentDetailFromJson(
        Map<String, dynamic> json) =>
    FeatureContentDetail(
      id: (json['id'] as num?)?.toInt(),
      contentId: (json['content_id'] as num?)?.toInt(),
      description: json['description'] == null
          ? null
          : FeatureDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      content: json['content'] == null
          ? null
          : ContentDetail.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureContentDetailToJson(
        FeatureContentDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content_id': instance.contentId,
      'description': instance.description,
      'created_at': instance.createdAt,
      'content': instance.content,
    };

ContentDetail _$ContentDetailFromJson(Map<String, dynamic> json) =>
    ContentDetail(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      contentMedia: json['content_media'] == null
          ? null
          : ContentMedia.fromJson(
              json['content_media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContentDetailToJson(ContentDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'content_media': instance.contentMedia,
    };

ContentMedia _$ContentMediaFromJson(Map<String, dynamic> json) => ContentMedia(
      contentId: (json['content_id'] as num?)?.toInt(),
      description: json['description'] == null
          ? null
          : MediaDescription.fromJson(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContentMediaToJson(ContentMedia instance) =>
    <String, dynamic>{
      'content_id': instance.contentId,
      'description': instance.description,
    };

MediaDescription _$MediaDescriptionFromJson(Map<String, dynamic> json) =>
    MediaDescription(
      image: json['image'] as String?,
    );

Map<String, dynamic> _$MediaDescriptionToJson(MediaDescription instance) =>
    <String, dynamic>{
      'image': instance.image,
    };
