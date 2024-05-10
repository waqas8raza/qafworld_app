import 'package:json_annotation/json_annotation.dart';

part 'my_advertisement_response.g.dart';

@JsonSerializable()
class MyAdvertisementResponse {
  final String? status;
  final AdvertisementListData? data;
  final String? statusCode;

  MyAdvertisementResponse({
    this.status,
    this.data,
    this.statusCode,
  });

  factory MyAdvertisementResponse.fromJson(Map<String, dynamic> json) =>
      _$MyAdvertisementResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MyAdvertisementResponseToJson(this);
}

@JsonSerializable()
class AdvertisementListData {
  @JsonKey(name: 'current_page')
  final int? currentPage;

  final List<Advertisement>? data;

  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;

  final dynamic from;

  @JsonKey(name: 'last_page')
  final int? lastPage;

  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;

  final List<AdvertisementLink>? links;

  @JsonKey(name: 'next_page_url')
  final dynamic nextPageUrl;

  final String? path;

  @JsonKey(name: 'per_page')
  final int? perPage;

  @JsonKey(name: 'prev_page_url')
  final dynamic prevPageUrl;

  final dynamic to;
  final int? total;

  AdvertisementListData({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory AdvertisementListData.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementListDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisementListDataToJson(this);
}

@JsonSerializable()
class Advertisement {
  final int? id;
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'ads_name')
  final String? adsName;
  @JsonKey(name: 'ads_type')
  final int? adsType;
  @JsonKey(name: 'ads_body')
  final String? adsBody;
  @JsonKey(name: 'user_amount')
  final String? userAmount;
  @JsonKey(name: 'ads_duration')
  final int? adsDuration;
  @JsonKey(name: 'max_show_limit')
  final int? maxShowLimit;
  final int? shown;
  final int? remaining;
  final int? status;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'today_ptc_view_count')
  final int? todayPtcViewCount;

  Advertisement({
    this.id,
    this.userId,
    this.adsName,
    this.adsType,
    this.adsBody,
    this.userAmount,
    this.adsDuration,
    this.maxShowLimit,
    this.shown,
    this.remaining,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.todayPtcViewCount,
  });

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisementToJson(this);
}

@JsonSerializable()
class AdvertisementLink {
  final String? url;
  final String? label;
  final bool? active;

  AdvertisementLink({
    this.url,
    this.label,
    this.active,
  });

  factory AdvertisementLink.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementLinkFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisementLinkToJson(this);
}
