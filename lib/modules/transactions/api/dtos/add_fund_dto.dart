import 'package:json_annotation/json_annotation.dart';

part 'add_fund_dto.g.dart';

@JsonSerializable()
class AddFundDto {
  final String gateway;
  final String amount;

  AddFundDto(this.gateway, this.amount);

  factory AddFundDto.fromJson(Map<String, dynamic> json) =>
      _$AddFundDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddFundDtoToJson(this);
}
