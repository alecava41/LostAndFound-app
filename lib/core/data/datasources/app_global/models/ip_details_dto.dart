import 'package:freezed_annotation/freezed_annotation.dart';

part 'ip_details_dto.freezed.dart';
part 'ip_details_dto.g.dart';

@freezed
class IpDetailsDto with _$IpDetailsDto {
  const factory IpDetailsDto({
    required String countryCode,
    String? status,
    String? country,
    String? region,
    String? regionName,
    String? city,
    String? zip,
    double? lat,
    double? lon,
    String? timezone,
    String? isp,
    String? org,
    String? as,
    String? query
  }) = $IpDetailsDto;

  factory IpDetailsDto.fromJson(Map<String,dynamic> data) => _$IpDetailsDtoFromJson(data);
}