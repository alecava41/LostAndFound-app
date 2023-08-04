// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateItemParams _$UpdateItemParamsFromJson(Map<String, dynamic> json) =>
    UpdateItemParams(
      itemId: json['itemId'] as int,
      title: json['title'] as String,
      position: Position.fromJson(json['position'] as Map<String, dynamic>),
      category: json['category'] as int,
      question: json['question'] as String?,
    );

Map<String, dynamic> _$UpdateItemParamsToJson(UpdateItemParams instance) {
  final val = <String, dynamic>{
    'title': instance.title,
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

Position _$PositionFromJson(Map<String, dynamic> json) => Position(
      X: (json['X'] as num).toDouble(),
      Y: (json['Y'] as num).toDouble(),
    );

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
      'X': instance.X,
      'Y': instance.Y,
    };
