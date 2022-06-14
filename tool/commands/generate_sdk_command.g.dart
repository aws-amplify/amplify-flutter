// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_sdk_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SdkConfig _$SdkConfigFromJson(Map json) => $checkedCreate(
      'SdkConfig',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['apis'],
        );
        final val = SdkConfig(
          apis: $checkedConvert(
              'apis',
              (v) => (v as Map).map(
                    (k, e) => MapEntry(
                        k as String,
                        (e as List<dynamic>)
                            .map((e) =>
                                const ShapeIdConverter().fromJson(e as String))
                            .toList()),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$SdkConfigToJson(SdkConfig instance) => <String, dynamic>{
      'apis': instance.apis.map((k, e) =>
          MapEntry(k, e.map(const ShapeIdConverter().toJson).toList())),
    };
