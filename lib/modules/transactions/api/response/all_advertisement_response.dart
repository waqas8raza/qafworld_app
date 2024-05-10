import 'package:json_annotation/json_annotation.dart';

part 'all_advertisement_response.g.dart';

@JsonSerializable()
class AllAdvertisementResponse {
  final String? status;
  final AdvertisementData? data;
  final String? statusCode;

  AllAdvertisementResponse({this.status, this.data, this.statusCode});

  factory AllAdvertisementResponse.fromJson(Map<String, dynamic> json) =>
      _$AllAdvertisementResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllAdvertisementResponseToJson(this);
}

@JsonSerializable()
class AdvertisementData {
  final int? current_page;
  final List<Advertisement>? data;
  final String? first_page_url;
  final int? from;
  final int? last_page;
  final String? last_page_url;
  final List<AdvertisementLink>? links;
  final int? per_page;
  final int? prev_page_url;
  final int? to;
  final int? total;

  AdvertisementData({
    this.current_page,
    this.data,
    this.first_page_url,
    this.from,
    this.last_page,
    this.last_page_url,
    this.links,
    this.per_page,
    this.prev_page_url,
    this.to,
    this.total,
  });

  factory AdvertisementData.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisementDataToJson(this);
}

@JsonSerializable()
class Advertisement {
  final int? id;
  final int? user_id;
  final String? ads_name;
  final int? ads_type;
  final String? ads_body;
  final String? user_amount;
  final int? ads_duration;
  final int? max_show_limit;
  final int? shown;
  final int? remaining;
  final int? status;
  final String? created_at;
  final String? updated_at;
  final int? today_ptc_view_count;

  Advertisement({
    this.id,
    this.user_id,
    this.ads_name,
    this.ads_type,
    this.ads_body,
    this.user_amount,
    this.ads_duration,
    this.max_show_limit,
    this.shown,
    this.remaining,
    this.status,
    this.created_at,
    this.updated_at,
    this.today_ptc_view_count,
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
