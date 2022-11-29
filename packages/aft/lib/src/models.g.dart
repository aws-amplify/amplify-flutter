// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AftConfig _$AftConfigFromJson(Map json) => $checkedCreate(
      'AftConfig',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['dependencies', 'ignore'],
        );
        final val = AftConfig(
          dependencies: $checkedConvert(
              'dependencies',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(
                        k as String,
                        const _VersionConstraintConverter()
                            .fromJson(e as String)),
                  ) ??
                  const {}),
          ignore: $checkedConvert(
              'ignore',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$AftConfigToJson(AftConfig instance) => <String, dynamic>{
      'dependencies': instance.dependencies.map(
          (k, e) => MapEntry(k, const _VersionConstraintConverter().toJson(e))),
      'ignore': instance.ignore,
    };

SdkConfig _$SdkConfigFromJson(Map json) => $checkedCreate(
      'SdkConfig',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['ref', 'apis'],
        );
        final val = SdkConfig(
          ref: $checkedConvert('ref', (v) => v as String? ?? 'master'),
          apis: $checkedConvert(
              'apis',
              (v) => (v as Map).map(
                    (k, e) => MapEntry(
                        k as String,
                        (e as List<dynamic>?)
                            ?.map((e) =>
                                const ShapeIdConverter().fromJson(e as String))
                            .toList()),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$SdkConfigToJson(SdkConfig instance) => <String, dynamic>{
      'ref': instance.ref,
      'apis': instance.apis.map((k, e) =>
          MapEntry(k, e?.map(const ShapeIdConverter().toJson).toList())),
    };
