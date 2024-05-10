import 'package:json_annotation/json_annotation.dart';

part 'faq_response.g.dart';

@JsonSerializable()
class FAQResponse {
  final String? status;
  final FAQData? data;
  final String? statusCode;

  FAQResponse({
    this.status,
    this.data,
    this.statusCode,
  });

  factory FAQResponse.fromJson(Map<String, dynamic> json) =>
      _$FAQResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FAQResponseToJson(this);
}

@JsonSerializable()
class FAQData {
  final ContentDetails? contentDetails;
  final int? increment;

  FAQData({
    this.contentDetails,
    this.increment,
  });

  factory FAQData.fromJson(Map<String, dynamic> json) =>
      _$FAQDataFromJson(json);

  Map<String, dynamic> toJson() => _$FAQDataToJson(this);
}

@JsonSerializable()
class ContentDetails {
  final List<FAQItem>? faq;

  ContentDetails({
    this.faq,
  });

  factory ContentDetails.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDetailsToJson(this);
}

@JsonSerializable()
class FAQItem {
  final int? id;
  final int? contentId;
  final Description? description;
  final String? createdAt;
  final Content? content;

  FAQItem({
    this.id,
    this.contentId,
    this.description,
    this.createdAt,
    this.content,
  });

  factory FAQItem.fromJson(Map<String, dynamic> json) =>
      _$FAQItemFromJson(json);

  Map<String, dynamic> toJson() => _$FAQItemToJson(this);
}

@JsonSerializable()
class Description {
  final String? title;
  final String? description;

  Description({
    this.title,
    this.description,
  });

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}

@JsonSerializable()
class Content {
  final int? id;
  final String? name;
  final dynamic? contentMedia; // Assuming it can be varied type like null

  Content({
    this.id,
    this.name,
    this.contentMedia,
  });

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
