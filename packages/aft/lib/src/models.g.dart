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
          allowedKeys: const ['dependencies', 'ignore', 'components'],
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
          components: $checkedConvert(
              'components',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => AftComponent.fromJson(
                          Map<String, Object?>.from(e as Map)))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$AftConfigToJson(AftConfig instance) => <String, dynamic>{
      'dependencies': instance.dependencies.map(
          (k, e) => MapEntry(k, const _VersionConstraintConverter().toJson(e))),
      'ignore': instance.ignore,
      'components': instance.components,
    };

AftComponent _$AftComponentFromJson(Map json) => $checkedCreate(
      'AftComponent',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'summary', 'packages', 'propagate'],
        );
        final val = AftComponent(
          name: $checkedConvert('name', (v) => v as String),
          summary: $checkedConvert('summary', (v) => v as String?),
          packages: $checkedConvert('packages',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          propagate: $checkedConvert(
              'propagate',
              (v) =>
                  $enumDecodeNullable(_$VersionPropagationEnumMap, v) ??
                  VersionPropagation.minor),
        );
        return val;
      },
    );

Map<String, dynamic> _$AftComponentToJson(AftComponent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'summary': instance.summary,
      'packages': instance.packages,
      'propagate': _$VersionPropagationEnumMap[instance.propagate]!,
    };

const _$VersionPropagationEnumMap = {
  VersionPropagation.major: 'major',
  VersionPropagation.minor: 'minor',
  VersionPropagation.all: 'all',
  VersionPropagation.none: 'none',
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
