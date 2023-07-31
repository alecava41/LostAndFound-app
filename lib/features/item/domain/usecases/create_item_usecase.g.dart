// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_item_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateItemParams _$CreateItemParamsFromJson(Map<String, dynamic> json) =>
    CreateItemParams(
      title: json['title'] as String,
      type: $enumDecode(_$ItemTypeEnumMap, json['type']),
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      category: json['category'] as int,
      address: json['address'] as String,
    );

Map<String, dynamic> _$CreateItemParamsToJson(CreateItemParams instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': _$ItemTypeEnumMap[instance.type]!,
      'position': instance.position,
      'address': instance.address,
      'category': instance.category,
    };

const _$ItemTypeEnumMap = {
  ItemType.found: 'found',
  ItemType.lost: 'lost',
};

Position _$PositionFromJson(Map<String, dynamic> json) => Position(
      X: (json['X'] as num).toDouble(),
      Y: (json['Y'] as num).toDouble(),
    );

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
      'X': instance.X,
      'Y': instance.Y,
    };
