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
      question: json['question'] as String?,
    );

Map<String, dynamic> _$CreateItemParamsToJson(CreateItemParams instance) {
  final val = <String, dynamic>{
    'title': instance.title,
    'type': _$ItemTypeEnumMap[instance.type]!,
    'position': instance.position,
    'category': instance.category,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question);
  return val;
}

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
