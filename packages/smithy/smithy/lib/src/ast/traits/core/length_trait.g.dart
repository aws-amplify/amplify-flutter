// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'length_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LengthTrait _$LengthTraitFromJson(Map<String, dynamic> json) => LengthTrait(
      min: (json['min'] as num?)?.toInt(),
      max: (json['max'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LengthTraitToJson(LengthTrait instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };
