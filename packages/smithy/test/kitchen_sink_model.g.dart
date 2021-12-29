// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SmokeTestRequestToJson(SmokeTestRequest instance) =>
    <String, dynamic>{
      'payload1': instance.payload1,
      'payload2': instance.payload2,
      'payload3': instance.payload3?.toJson(),
    };

Nested _$NestedFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Nested',
      json,
      ($checkedConvert) {
        final val = Nested(
          member1: $checkedConvert('member1', (v) => v as String),
          member2: $checkedConvert('member2', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$NestedToJson(Nested instance) => <String, dynamic>{
      'member1': instance.member1,
      'member2': instance.member2,
    };

SmokeTestResponse _$SmokeTestResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SmokeTestResponse',
      json,
      ($checkedConvert) {
        final val = SmokeTestResponse(
          payload1: $checkedConvert('payload1', (v) => v as String?),
          payload2: $checkedConvert('payload2', (v) => v as String?),
          nested: $checkedConvert(
              'nested',
              (v) => v == null
                  ? null
                  : Nested.fromJson(v as Map<String, dynamic>)),
          payload4: $checkedConvert('payload4',
              (v) => TimestampSerializer.dateTime.fromJson(v as String?)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SmokeTestResponseToJson(SmokeTestResponse instance) =>
    <String, dynamic>{
      'payload1': instance.payload1,
      'payload2': instance.payload2,
      'nested': instance.nested?.toJson(),
      'payload4': TimestampSerializer.dateTime.toJson(instance.payload4),
    };

ExplicitStringResponse _$ExplicitStringResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExplicitStringResponse',
      json,
      ($checkedConvert) {
        final val = ExplicitStringResponse(
          $checkedConvert('payload1', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExplicitStringResponseToJson(
        ExplicitStringResponse instance) =>
    <String, dynamic>{
      'payload1': instance.payload1,
    };
