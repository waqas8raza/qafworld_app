// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gate_ways_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentGatewayResponse _$PaymentGatewayResponseFromJson(
        Map<String, dynamic> json) =>
    PaymentGatewayResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : PaymentGatewayData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String?,
    );

Map<String, dynamic> _$PaymentGatewayResponseToJson(
        PaymentGatewayResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

PaymentGatewayData _$PaymentGatewayDataFromJson(Map<String, dynamic> json) =>
    PaymentGatewayData(
      totalPayment: (json['totalPayment'] as num?)?.toInt(),
      gateways: (json['gateways'] as List<dynamic>?)
          ?.map((e) => PaymentGateway.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentGatewayDataToJson(PaymentGatewayData instance) =>
    <String, dynamic>{
      'totalPayment': instance.totalPayment,
      'gateways': instance.gateways,
    };

PaymentGateway _$PaymentGatewayFromJson(Map<String, dynamic> json) =>
    PaymentGateway(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      currency: json['currency'] as String?,
      symbol: json['symbol'] as String?,
      parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, AttachDepositSlipProof.fromJson(e as Map<String, dynamic>)),
      ),
      extraParameters: json['extraParameters'],
      conventionRate: json['conventionRate'] as String?,
      currencies: json['currencies'],
      minAmount: json['minAmount'] as String?,
      maxAmount: json['maxAmount'] as String?,
      percentageCharge: json['percentageCharge'] as String?,
      fixedCharge: json['fixedCharge'] as String?,
      status: (json['status'] as num?)?.toInt(),
      note: json['note'] as String?,
      image: json['image'] as String?,
      sortBy: (json['sortBy'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$PaymentGatewayToJson(PaymentGateway instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'currency': instance.currency,
      'symbol': instance.symbol,
      'parameters': instance.parameters,
      'extraParameters': instance.extraParameters,
      'conventionRate': instance.conventionRate,
      'currencies': instance.currencies,
      'minAmount': instance.minAmount,
      'maxAmount': instance.maxAmount,
      'percentageCharge': instance.percentageCharge,
      'fixedCharge': instance.fixedCharge,
      'status': instance.status,
      'note': instance.note,
      'image': instance.image,
      'sortBy': instance.sortBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

AttachDepositSlipProof _$AttachDepositSlipProofFromJson(
        Map<String, dynamic> json) =>
    AttachDepositSlipProof(
      fieldName: json['fieldName'] as String?,
      fieldLevel: json['fieldLevel'] as String?,
      type: json['type'] as String?,
      validation: json['validation'] as String?,
    );

Map<String, dynamic> _$AttachDepositSlipProofToJson(
        AttachDepositSlipProof instance) =>
    <String, dynamic>{
      'fieldName': instance.fieldName,
      'fieldLevel': instance.fieldLevel,
      'type': instance.type,
      'validation': instance.validation,
    };
