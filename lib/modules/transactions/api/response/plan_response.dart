import 'package:json_annotation/json_annotation.dart';

part 'plan_response.g.dart';

@JsonSerializable()
class PlanResponse {
  final String status;
  final PlanData data;
  final String statusCode;

  PlanResponse({
    required this.status,
    required this.data,
    required this.statusCode,
  });

  factory PlanResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlanResponseToJson(this);
}

@JsonSerializable()
class PlanData {
  final List<Plan> plans;
  final String title;
  final Templates templates;

  PlanData({
    required this.plans,
    required this.title,
    required this.templates,
  });

  factory PlanData.fromJson(Map<String, dynamic> json) =>
      _$PlanDataFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDataToJson(this);
}

@JsonSerializable()
class Templates {
  final List<Template> plan;

  Templates({
    required this.plan,
  });

  factory Templates.fromJson(Map<String, dynamic> json) =>
      _$TemplatesFromJson(json);
  Map<String, dynamic> toJson() => _$TemplatesToJson(this);
}

@JsonSerializable()
class Template {
  final int? id;
  final int? language_id;
  final String? sectionName;
  final TemplateDescription? description;
  final String? created_at;
  final String? updated_at;

  Template({
    this.id,
    this.language_id,
    this.sectionName,
    this.description,
    this.created_at,
    this.updated_at,
  });

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
  Map<String, dynamic> toJson() => _$TemplateToJson(this);
}

@JsonSerializable()
class TemplateDescription {
  final String? title;
  final String? sub_title;

  TemplateDescription({
    this.title,
    this.sub_title,
  });

  factory TemplateDescription.fromJson(Map<String, dynamic> json) =>
      _$TemplateDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$TemplateDescriptionToJson(this);
}

@JsonSerializable()
class Plan {
  final int? id;
  final String? price;
  final String? daily_ad_limit;
  final String? validity;
  final String? referral_level;
  final int? status;
  final String? createdAt;
  final String? updatedAt;
  final PlanDetails? details;

  Plan({
    this.id,
    this.price,
    this.daily_ad_limit,
    this.validity,
    this.referral_level,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.details,
  });

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
  Map<String, dynamic> toJson() => _$PlanToJson(this);
}

@JsonSerializable()
class PlanDetails {
  final int? id;
  final int? planId;
  final int? languageId;
  final String? name;
  final String? tag;
  final String? short_title;
  final String? createdAt;
  final String? updatedAt;

  PlanDetails({
    this.id,
    this.planId,
    this.languageId,
    this.name,
    this.tag,
    this.short_title,
    this.createdAt,
    this.updatedAt,
  });

  factory PlanDetails.fromJson(Map<String, dynamic> json) =>
      _$PlanDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PlanDetailsToJson(this);
}
