// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalDependencyConfig _$GlobalDependencyConfigFromJson(Map json) =>
    $checkedCreate(
      'GlobalDependencyConfig',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['dependencies'],
        );
        final val = GlobalDependencyConfig(
          dependencies: $checkedConvert(
              'dependencies',
              (v) => (v as Map).map(
                    (k, e) => MapEntry(
                        k as String,
                        const _VersionConstraintConverter()
                            .fromJson(e as String)),
                  )),
        );
        return val;
      },
    );

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
