// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_fund_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFundDto _$AddFundDtoFromJson(Map<String, dynamic> json) => AddFundDto(
      json['gateway'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$AddFundDtoToJson(AddFundDto instance) =>
    <String, dynamic>{
      'gateway': instance.gateway,
      'amount': instance.amount,
    };
