import 'package:json_annotation/json_annotation.dart';

part 'transactions_response.g.dart';

@JsonSerializable()
class TransactionList {
  @JsonKey(name: 'current_page')
  int? currentPage;

  List<Transaction>? data;

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

  TransactionList({
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

  factory TransactionList.fromJson(Map<String, dynamic> json) =>
      _$TransactionListFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionListToJson(this);
}

@JsonSerializable()
class Transaction {
  int? id;

  @JsonKey(name: 'user_id')
  int? userId;

  double? amount;
  String? charge;

  @JsonKey(name: 'final_balance')
  String? finalBalance;

  @JsonKey(name: 'trx_type')
  String? transactionType;

  String? remarks;

  @JsonKey(name: 'trx_id')
  String? transactionId;

  @JsonKey(name: 'created_at')
  String? createdAt;

  @JsonKey(name: 'updated_at')
  String? updatedAt;

  Transaction({
    this.id,
    this.userId,
    this.amount,
    this.charge,
    this.finalBalance,
    this.transactionType,
    this.remarks,
    this.transactionId,
    this.createdAt,
    this.updatedAt,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}

@JsonSerializable()
class Link {
  String? url;
  String? label;
  bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
