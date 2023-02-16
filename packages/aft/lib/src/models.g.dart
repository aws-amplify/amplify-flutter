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
          allowedKeys: const [
            'dependencies',
            'environment',
            'ignore',
            'components'
          ],
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
          environment: $checkedConvert('environment',
              (v) => Environment.fromJson(Map<String, Object?>.from(v as Map))),
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
      'environment': instance.environment,
      'ignore': instance.ignore,
      'components': instance.components,
    };

Environment _$EnvironmentFromJson(Map json) => $checkedCreate(
      'Environment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['sdk', 'flutter', 'android', 'ios', 'macOS'],
        );
        final val = Environment(
          sdk: $checkedConvert('sdk',
              (v) => const _VersionConstraintConverter().fromJson(v as String)),
          flutter: $checkedConvert('flutter',
              (v) => const _VersionConstraintConverter().fromJson(v as String)),
          android: $checkedConvert(
              'android',
              (v) => AndroidEnvironment.fromJson(
                  Map<String, Object?>.from(v as Map))),
          ios: $checkedConvert(
              'ios',
              (v) =>
                  IosEnvironment.fromJson(Map<String, Object?>.from(v as Map))),
          macOS: $checkedConvert(
              'macOS',
              (v) => MacOSEnvironment.fromJson(
                  Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$EnvironmentToJson(Environment instance) =>
    <String, dynamic>{
      'sdk': const _VersionConstraintConverter().toJson(instance.sdk),
      'flutter': const _VersionConstraintConverter().toJson(instance.flutter),
      'android': instance.android,
      'ios': instance.ios,
      'macOS': instance.macOS,
    };

AndroidEnvironment _$AndroidEnvironmentFromJson(Map json) => $checkedCreate(
      'AndroidEnvironment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['minSdkVersion'],
        );
        final val = AndroidEnvironment(
          minSdkVersion: $checkedConvert('minSdkVersion', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AndroidEnvironmentToJson(AndroidEnvironment instance) =>
    <String, dynamic>{
      'minSdkVersion': instance.minSdkVersion,
    };

IosEnvironment _$IosEnvironmentFromJson(Map json) => $checkedCreate(
      'IosEnvironment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['minOSVersion'],
        );
        final val = IosEnvironment(
          minOSVersion: $checkedConvert('minOSVersion', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$IosEnvironmentToJson(IosEnvironment instance) =>
    <String, dynamic>{
      'minOSVersion': instance.minOSVersion,
    };

MacOSEnvironment _$MacOSEnvironmentFromJson(Map json) => $checkedCreate(
      'MacOSEnvironment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['minOSVersion'],
        );
        final val = MacOSEnvironment(
          minOSVersion: $checkedConvert('minOSVersion', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$MacOSEnvironmentToJson(MacOSEnvironment instance) =>
    <String, dynamic>{
      'minOSVersion': instance.minOSVersion,
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
          allowedKeys: const ['ref', 'apis', 'plugins'],
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
          plugins: $checkedConvert(
              'plugins',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$SdkConfigToJson(SdkConfig instance) => <String, dynamic>{
      'ref': instance.ref,
      'apis': instance.apis.map((k, e) =>
          MapEntry(k, e?.map(const ShapeIdConverter().toJson).toList())),
      'plugins': instance.plugins,
    };
