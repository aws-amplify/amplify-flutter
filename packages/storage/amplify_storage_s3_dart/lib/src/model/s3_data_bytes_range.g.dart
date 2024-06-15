// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_data_bytes_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3DataBytesRange _$S3DataBytesRangeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'S3DataBytesRange',
      json,
      ($checkedConvert) {
        final val = S3DataBytesRange(
          start: $checkedConvert('start', (v) => v as int),
          end: $checkedConvert('end', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3DataBytesRangeToJson(S3DataBytesRange instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
