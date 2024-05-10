import 'package:json_annotation/json_annotation.dart';

part 'earning_list_response.g.dart';

@JsonSerializable()
class EarningListResponse {
  String? status;
  EarningListData? data;
  String? statusCode;

  EarningListResponse({this.status, this.data, this.statusCode});

  factory EarningListResponse.fromJson(Map<String, dynamic> json) =>
      _$EarningListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EarningListResponseToJson(this);
}

@JsonSerializable()
class EarningListData {
  @JsonKey(name: 'current_page')
  int? currentPage;

  List<EarningItem>? data;

  @JsonKey(name: 'first_page_url')
  String? firstPageUrl;

  int? from;

  @JsonKey(name: 'last_page')
  int? lastPage;

  @JsonKey(name: 'last_page_url')
  String? lastPageUrl;

  List<Link>? links;

  @JsonKey(name: 'next_page_url')
  String? nextPageUrl;

  String? path;

  @JsonKey(name: 'per_page')
  int? perPage;

  @JsonKey(name: 'prev_page_url')
  String? prevPageUrl;

  int? to;
  int? total;

  EarningListData({
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

  factory EarningListData.fromJson(Map<String, dynamic> json) =>
      _$EarningListDataFromJson(json);

  Map<String, dynamic> toJson() => _$EarningListDataToJson(this);
}

@JsonSerializable()
class EarningItem {
  int? id;
  @JsonKey(name: 'ptc_id')
  int? ptcId;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'ad_view_date')
  String? adViewDate;
  double? amount;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  Advertisement? advertisement;

  EarningItem({
    this.id,
    this.ptcId,
    this.userId,
    this.adViewDate,
    this.amount,
    this.createdAt,
    this.updatedAt,
    this.advertisement,
  });

  factory EarningItem.fromJson(Map<String, dynamic> json) =>
      _$EarningItemFromJson(json);

  Map<String, dynamic> toJson() => _$EarningItemToJson(this);
}

@JsonSerializable()
class Advertisement {
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'ads_name')
  String? adsName;
  @JsonKey(name: 'ads_type')
  int? adsType;
  @JsonKey(name: 'ads_body')
  String? adsBody;
  @JsonKey(name: 'user_amount')
  String? userAmount;
  @JsonKey(name: 'ads_duration')
  int? adsDuration;
  @JsonKey(name: 'max_show_limit')
  int? maxShowLimit;
  int? shown;
  int? remaining;
  int? status;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

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
  });

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisementToJson(this);
}

@JsonSerializable()
class Link {
  String? url;
  String? label;
  bool? active;

  Link({this.url, this.label, this.active});

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
