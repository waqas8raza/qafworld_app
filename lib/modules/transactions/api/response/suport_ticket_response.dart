import 'package:json_annotation/json_annotation.dart';

part 'suport_ticket_response.g.dart';

@JsonSerializable()
class SupportTicketResponse {
  String? status;
  SupportTicketData? data;
  String? statusCode;

  SupportTicketResponse({this.status, this.data, this.statusCode});

  factory SupportTicketResponse.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SupportTicketResponseToJson(this);
}

@JsonSerializable()
class SupportTicketData {
  @JsonKey(name: 'current_page')
  int? currentPage;

  List<dynamic>? data; // This will be a list of actual support ticket objects

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

  SupportTicketData({
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

  factory SupportTicketData.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketDataFromJson(json);

  Map<String, dynamic> toJson() => _$SupportTicketDataToJson(this);
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
