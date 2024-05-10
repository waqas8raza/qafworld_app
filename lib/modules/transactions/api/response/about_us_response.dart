import 'package:json_annotation/json_annotation.dart';

part 'about_us_response.g.dart';

@JsonSerializable()
class AboutUsResponse {
  final String? status;
  final ApiResponseData? data;
  final String? statusCode;

  AboutUsResponse({this.status, this.data, this.statusCode});

  factory AboutUsResponse.fromJson(Map<String, dynamic> json) =>
      _$AboutUsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AboutUsResponseToJson(this);
}

@JsonSerializable()
class ApiResponseData {
  final ApiTemplates? templates;
  final ApiContentDetails? contentDetails;

  ApiResponseData({this.templates, this.contentDetails});

  factory ApiResponseData.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseDataToJson(this);
}

@JsonSerializable()
class ApiTemplates {
  @JsonKey(name: 'about-us')
  final List<AboutUsTemplate>? aboutUsTemplates;
  final List<TestimonialTemplate>? testimonial;
  final List<FeatureTemplate>? feature;

  ApiTemplates({this.aboutUsTemplates, this.testimonial, this.feature});

  factory ApiTemplates.fromJson(Map<String, dynamic> json) =>
      _$ApiTemplatesFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTemplatesToJson(this);
}

@JsonSerializable()
class AboutUsTemplate {
  final int? id;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'section_name')
  final String? sectionName;
  final AboutUsDescription? description;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  AboutUsTemplate({
    this.id,
    this.languageId,
    this.sectionName,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory AboutUsTemplate.fromJson(Map<String, dynamic> json) =>
      _$AboutUsTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$AboutUsTemplateToJson(this);
}

@JsonSerializable()
class AboutUsDescription {
  final String? title;
  @JsonKey(name: 'sub_title')
  final String? subTitle;
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @JsonKey(name: 'button_name')
  final String? buttonName;

  AboutUsDescription({
    this.title,
    this.subTitle,
    this.shortDescription,
    this.buttonName,
  });

  factory AboutUsDescription.fromJson(Map<String, dynamic> json) =>
      _$AboutUsDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$AboutUsDescriptionToJson(this);
}

@JsonSerializable()
class TestimonialTemplate {
  final int? id;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'section_name')
  final String? sectionName;
  final TestimonialDescription? description;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  TestimonialTemplate({
    this.id,
    this.languageId,
    this.sectionName,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory TestimonialTemplate.fromJson(Map<String, dynamic> json) =>
      _$TestimonialTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$TestimonialTemplateToJson(this);
}

@JsonSerializable()
class TestimonialDescription {
  final String? title;
  @JsonKey(name: 'sub_title')
  final String? subTitle;

  TestimonialDescription({this.title, this.subTitle});

  factory TestimonialDescription.fromJson(Map<String, dynamic> json) =>
      _$TestimonialDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$TestimonialDescriptionToJson(this);
}

@JsonSerializable()
class FeatureTemplate {
  final int? id;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'section_name')
  final String? sectionName;
  final FeatureDescription? description;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  FeatureTemplate({
    this.id,
    this.languageId,
    this.sectionName,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory FeatureTemplate.fromJson(Map<String, dynamic> json) =>
      _$FeatureTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureTemplateToJson(this);
}

@JsonSerializable()
class FeatureDescription {
  final String? title;
  final String? information;

  FeatureDescription({this.title, this.information});

  factory FeatureDescription.fromJson(Map<String, dynamic> json) =>
      _$FeatureDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureDescriptionToJson(this);
}

@JsonSerializable()
class ApiContentDetails {
  final List<FeatureContentDetail>? feature;

  ApiContentDetails({this.feature});

  factory ApiContentDetails.fromJson(Map<String, dynamic> json) =>
      _$ApiContentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ApiContentDetailsToJson(this);
}

@JsonSerializable()
class FeatureContentDetail {
  final int? id;
  @JsonKey(name: 'content_id')
  final int? contentId;
  final FeatureDescription? description;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  final ContentDetail? content;

  FeatureContentDetail({
    this.id,
    this.contentId,
    this.description,
    this.createdAt,
    this.content,
  });

  factory FeatureContentDetail.fromJson(Map<String, dynamic> json) =>
      _$FeatureContentDetailFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureContentDetailToJson(this);
}

@JsonSerializable()
class ContentDetail {
  final int? id;
  final String? name;
  @JsonKey(name: 'content_media')
  final ContentMedia? contentMedia;

  ContentDetail({this.id, this.name, this.contentMedia});

  factory ContentDetail.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDetailToJson(this);
}

@JsonSerializable()
class ContentMedia {
  @JsonKey(name: 'content_id')
  final int? contentId;
  final MediaDescription? description;

  ContentMedia({this.contentId, this.description});

  factory ContentMedia.fromJson(Map<String, dynamic> json) =>
      _$ContentMediaFromJson(json);

  Map<String, dynamic> toJson() => _$ContentMediaToJson(this);
}

@JsonSerializable()
class MediaDescription {
  final String? image;

  MediaDescription({this.image});

  factory MediaDescription.fromJson(Map<String, dynamic> json) =>
      _$MediaDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDescriptionToJson(this);
}
