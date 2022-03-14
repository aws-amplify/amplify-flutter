// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Segment _$SegmentFromJson(Map<String, dynamic> json) => Segment(
      json['content'] as String,
      $enumDecode(_$SegmentTypeEnumMap, json['segmentType']),
    );

Map<String, dynamic> _$SegmentToJson(Segment instance) => <String, dynamic>{
      'content': instance.content,
      'segmentType': _$SegmentTypeEnumMap[instance.type],
    };

const _$SegmentTypeEnumMap = {
  SegmentType.literal: 'literal',
  SegmentType.label: 'label',
  SegmentType.greedyLabel: 'greedyLabel',
};
