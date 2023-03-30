// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

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
            'rootDirectory',
            'workingDirectory',
            'allPackages',
            'dependencies',
            'environment',
            'ignore',
            'components',
            'scripts'
          ],
        );
        final val = AftConfig(
          rootDirectory:
              $checkedConvert('rootDirectory', (v) => Uri.parse(v as String)),
          workingDirectory: $checkedConvert(
              'workingDirectory', (v) => Uri.parse(v as String)),
          allPackages: $checkedConvert(
              'allPackages',
              (v) => (v as Map).map(
                    (k, e) => MapEntry(
                        k as String,
                        PackageInfo.fromJson(
                            Map<String, Object?>.from(e as Map))),
                  )),
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
                  (v as Map?)?.map(
                    (k, e) => MapEntry(
                        k as String,
                        AftComponent.fromJson(
                            Map<String, Object?>.from(e as Map))),
                  ) ??
                  const {}),
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

Map<String, dynamic> _$AftConfigToJson(AftConfig instance) => <String, dynamic>{
      'rootDirectory': instance.rootDirectory.toString(),
      'workingDirectory': instance.workingDirectory.toString(),
      'allPackages':
          instance.allPackages.map((k, e) => MapEntry(k, e.toJson())),
      'dependencies': instance.dependencies.map(
          (k, e) => MapEntry(k, const VersionConstraintConverter().toJson(e))),
      'environment': instance.environment.toJson(),
      'ignore': instance.ignore,
      'components': instance.components.map((k, e) => MapEntry(k, e.toJson())),
      'scripts': instance.scripts.map((k, e) => MapEntry(k, e.toJson())),
    };

AftComponent _$AftComponentFromJson(Map json) => $checkedCreate(
      'AftComponent',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'name',
            'summary',
            'packages',
            'packageGraph',
            'propagate'
          ],
        );
        final val = AftComponent(
          name: $checkedConvert('name', (v) => v as String),
          summary: $checkedConvert(
              'summary',
              (v) => v == null
                  ? null
                  : PackageInfo.fromJson(Map<String, Object?>.from(v as Map))),
          packages: $checkedConvert(
              'packages',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PackageInfo.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          packageGraph: $checkedConvert(
              'packageGraph',
              (v) => (v as Map).map(
                    (k, e) => MapEntry(
                        k as String,
                        (e as List<dynamic>)
                            .map((e) => PackageInfo.fromJson(
                                Map<String, Object?>.from(e as Map)))
                            .toList()),
                  )),
          propagate: $checkedConvert(
              'propagate', (v) => $enumDecode(_$VersionPropagationEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AftComponentToJson(AftComponent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'summary': instance.summary?.toJson(),
      'packages': instance.packages.map((e) => e.toJson()).toList(),
      'packageGraph': instance.packageGraph
          .map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList())),
      'propagate': _$VersionPropagationEnumMap[instance.propagate]!,
    };

const _$VersionPropagationEnumMap = {
  VersionPropagation.major: 'major',
  VersionPropagation.minor: 'minor',
  VersionPropagation.all: 'all',
  VersionPropagation.none: 'none',
};

PackageInfo _$PackageInfoFromJson(Map json) => $checkedCreate(
      'PackageInfo',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'name',
            'path',
            'pubspecInfo',
            'flavor',
            'example'
          ],
        );
        final val = PackageInfo(
          name: $checkedConvert('name', (v) => v as String),
          path: $checkedConvert('path', (v) => v as String),
          pubspecInfo: $checkedConvert('pubspecInfo',
              (v) => PubspecInfo.fromJson(Map<String, Object?>.from(v as Map))),
          flavor: $checkedConvert(
              'flavor', (v) => $enumDecode(_$PackageFlavorEnumMap, v)),
          example: $checkedConvert(
              'example',
              (v) => v == null
                  ? null
                  : PackageInfo.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$PackageInfoToJson(PackageInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'pubspecInfo': instance.pubspecInfo.toJson(),
      'flavor': _$PackageFlavorEnumMap[instance.flavor]!,
      'example': instance.example?.toJson(),
    };

const _$PackageFlavorEnumMap = {
  PackageFlavor.flutter: 'flutter',
  PackageFlavor.dart: 'dart',
};

PubspecInfo _$PubspecInfoFromJson(Map json) => $checkedCreate(
      'PubspecInfo',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['pubspec', 'uri', 'pubspecYaml'],
        );
        final val = PubspecInfo(
          pubspec: $checkedConvert(
              'pubspec',
              (v) =>
                  const PubspecConverter().fromJson(v as Map<String, Object?>)),
          pubspecYaml: $checkedConvert('pubspecYaml', (v) => v as String),
          uri: $checkedConvert('uri', (v) => Uri.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PubspecInfoToJson(PubspecInfo instance) =>
    <String, dynamic>{
      'pubspec': const PubspecConverter().toJson(instance.pubspec),
      'uri': instance.uri.toString(),
      'pubspecYaml': instance.pubspecYaml,
    };
