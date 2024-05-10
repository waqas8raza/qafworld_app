// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_fund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFundResponse _$AddFundResponseFromJson(Map<String, dynamic> json) =>
    AddFundResponse(
      gatewayImage: json['gateway_image'] as String,
      amount: json['amount'] as String,
      charge: json['charge'] as String,
      gatewayCurrency: json['gateway_currency'] as String,
      payable: json['payable'] as String,
      conversionRate: json['conversion_rate'] as String,
      inCurrency: json['in'] as String,
      isCrypto: json['isCrypto'] as bool,
      conversionWith: json['conversion_with'] as String?,
    );

Map<String, dynamic> _$AddFundResponseToJson(AddFundResponse instance) =>
    <String, dynamic>{
      'gateway_image': instance.gatewayImage,
      'amount': instance.amount,
      'charge': instance.charge,
      'gateway_currency': instance.gatewayCurrency,
      'payable': instance.payable,
      'conversion_rate': instance.conversionRate,
      'in': instance.inCurrency,
      'isCrypto': instance.isCrypto,
      'conversion_with': instance.conversionWith,
    };
