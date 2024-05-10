import 'package:json_annotation/json_annotation.dart';

part 'contact_us_response.g.dart';

@JsonSerializable()
class ContactUsResponse {
  final String? status;
  final String? statusCode;
  final ContactData? data;

  ContactUsResponse({this.status, this.statusCode, this.data});

  factory ContactUsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactUsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ContactUsResponseToJson(this);
}

@JsonSerializable()
class ContactData {
  final int? id;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'section_name')
  final String? sectionName;
  final ContactDescription? description;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  ContactData({
    this.id,
    this.languageId,
    this.sectionName,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory ContactData.fromJson(Map<String, dynamic> json) =>
      _$ContactDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContactDataToJson(this);
}

@JsonSerializable()
class ContactDescription {
  final String? heading;
  @JsonKey(name: 'sub_heading')
  final String? subHeading;
  final String? address;
  final String? email;
  final String? phone;
  @JsonKey(name: 'footer_short_details')
  final String? footerShortDetails;

  ContactDescription({
    this.heading,
    this.subHeading,
    this.address,
    this.email,
    this.phone,
    this.footerShortDetails,
  });

  factory ContactDescription.fromJson(Map<String, dynamic> json) =>
      _$ContactDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$ContactDescriptionToJson(this);
}
