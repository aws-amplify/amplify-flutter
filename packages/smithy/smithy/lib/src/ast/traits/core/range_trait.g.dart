// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RangeTrait _$RangeTraitFromJson(Map<String, dynamic> json) => RangeTrait(
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RangeTraitToJson(RangeTrait instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };
