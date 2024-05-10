import 'package:json_annotation/json_annotation.dart';

part 'add_fund_response.g.dart';

@JsonSerializable()
class AddFundResponse {
  @JsonKey(name: 'gateway_image')
  final String gatewayImage;

  @JsonKey(name: 'amount')
  final String amount;

  @JsonKey(name: 'charge')
  final String charge;

  @JsonKey(name: 'gateway_currency')
  final String gatewayCurrency;

  @JsonKey(name: 'payable')
  final String payable;

  @JsonKey(name: 'conversion_rate')
  final String conversionRate;

  @JsonKey(name: 'in')
  final String inCurrency;

  @JsonKey(name: 'isCrypto')
  final bool isCrypto;

  @JsonKey(name: 'conversion_with')
  final String? conversionWith;

  AddFundResponse({
    required this.gatewayImage,
    required this.amount,
    required this.charge,
    required this.gatewayCurrency,
    required this.payable,
    required this.conversionRate,
    required this.inCurrency,
    required this.isCrypto,
    this.conversionWith,
  });

  factory AddFundResponse.fromJson(Map<String, dynamic> json) =>
      _$AddFundResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddFundResponseToJson(this);
}
