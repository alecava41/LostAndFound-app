// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$PositionDto _$$$PositionDtoFromJson(Map<String, dynamic> json) =>
    _$$PositionDto(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$$PositionDtoToJson(_$$PositionDto instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };
