// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RawAftConfig _$RawAftConfigFromJson(Map json) => $checkedCreate(
      'RawAftConfig',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'dependencies',
            'environment',
            'ignore',
            'components',
            'scripts'
          ],
        );
        final val = RawAftConfig(
          dependencies: $checkedConvert(
              'dependencies',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(
                        k as String,
                        const VersionConstraintConverter()
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
                      ?.map((e) => RawAftComponent.fromJson(
                          Map<String, Object?>.from(e as Map)))
                      .toList() ??
                  const []),
          scripts: $checkedConvert(
              'scripts',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(
                        k as String,
                        AftScript.fromJson(
                            Map<String, Object?>.from(e as Map))),
                  ) ??
                  const {}),
        );
        return val;
      },
    );

Map<String, dynamic> _$RawAftConfigToJson(RawAftConfig instance) =>
    <String, dynamic>{
      'dependencies': instance.dependencies.map(
          (k, e) => MapEntry(k, const VersionConstraintConverter().toJson(e))),
      'environment': instance.environment.toJson(),
      'ignore': instance.ignore,
      'components': instance.components.map((e) => e.toJson()).toList(),
      'scripts': instance.scripts.map((k, e) => MapEntry(k, e.toJson())),
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
              (v) => const VersionConstraintConverter().fromJson(v as String)),
          flutter: $checkedConvert('flutter',
              (v) => const VersionConstraintConverter().fromJson(v as String)),
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
      'sdk': const VersionConstraintConverter().toJson(instance.sdk),
      'flutter': const VersionConstraintConverter().toJson(instance.flutter),
      'android': instance.android.toJson(),
      'ios': instance.ios.toJson(),
      'macOS': instance.macOS.toJson(),
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

RawAftComponent _$RawAftComponentFromJson(Map json) => $checkedCreate(
      'RawAftComponent',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'summary', 'packages', 'propagate'],
        );
        final val = RawAftComponent(
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

Map<String, dynamic> _$RawAftComponentToJson(RawAftComponent instance) =>
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

AftScript _$AftScriptFromJson(Map json) => $checkedCreate(
      'AftScript',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['run', 'description', 'from', 'fail-fast'],
        );
        final val = AftScript(
          run: $checkedConvert('run', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          from: $checkedConvert(
              'from',
              (v) => v == null
                  ? const PackageSelector.development()
                  : const PackageSelectorConverter().fromJson(v)),
          failFast: $checkedConvert('fail-fast', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'failFast': 'fail-fast'},
    );

Map<String, dynamic> _$AftScriptToJson(AftScript instance) => <String, dynamic>{
      'run': instance.run,
      'description': instance.description,
      'from': const PackageSelectorConverter().toJson(instance.from),
      'fail-fast': instance.failFast,
    };
