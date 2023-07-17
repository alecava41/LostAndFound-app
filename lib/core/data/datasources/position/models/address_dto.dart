import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    required String address,
  }) = $AddressDto;

  factory AddressDto.fromJson(Map<String,dynamic> data) => _$AddressDtoFromJson(data);
}