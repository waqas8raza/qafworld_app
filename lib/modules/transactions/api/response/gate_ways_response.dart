import 'package:json_annotation/json_annotation.dart';

part 'gate_ways_response.g.dart';

@JsonSerializable()
class PaymentGatewayResponse {
  final String? status;
  final PaymentGatewayData? data;
  final String? statusCode;

  PaymentGatewayResponse({
    this.status,
    this.data,
    this.statusCode,
  });

  factory PaymentGatewayResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentGatewayResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentGatewayResponseToJson(this);
}

@JsonSerializable()
class PaymentGatewayData {
  final int? totalPayment;
  final List<PaymentGateway>? gateways;

  PaymentGatewayData({
    this.totalPayment,
    this.gateways,
  });

  factory PaymentGatewayData.fromJson(Map<String, dynamic> json) =>
      _$PaymentGatewayDataFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentGatewayDataToJson(this);
}

@JsonSerializable()
class PaymentGateway {
  final int? id;
  final String? name;
  final String? code;
  final String? currency;
  final String? symbol;
  final Map<String, AttachDepositSlipProof>? parameters;
  final dynamic extraParameters;
  final String? conventionRate;
  final dynamic currencies;
  final String? minAmount;
  final String? maxAmount;
  final String? percentageCharge;
  final String? fixedCharge;
  final int? status;
  final String? note;
  final String? image;
  final int? sortBy;
  final String? createdAt;
  final String? updatedAt;

  PaymentGateway({
    this.id,
    this.name,
    this.code,
    this.currency,
    this.symbol,
    this.parameters,
    this.extraParameters,
    this.conventionRate,
    this.currencies,
    this.minAmount,
    this.maxAmount,
    this.percentageCharge,
    this.fixedCharge,
    this.status,
    this.note,
    this.image,
    this.sortBy,
    this.createdAt,
    this.updatedAt,
  });

  factory PaymentGateway.fromJson(Map<String, dynamic> json) =>
      _$PaymentGatewayFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentGatewayToJson(this);
}

@JsonSerializable()
class AttachDepositSlipProof {
  final String? fieldName;
  final String? fieldLevel;
  final String? type;
  final String? validation;

  AttachDepositSlipProof({
    this.fieldName,
    this.fieldLevel,
    this.type,
    this.validation,
  });

  factory AttachDepositSlipProof.fromJson(Map<String, dynamic> json) =>
      _$AttachDepositSlipProofFromJson(json);

  Map<String, dynamic> toJson() => _$AttachDepositSlipProofToJson(this);
}
