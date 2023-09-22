// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AftConfig> _$aftConfigSerializer = new _$AftConfigSerializer();

class _$AftConfigSerializer implements StructuredSerializer<AftConfig> {
  @override
  final Iterable<Type> types = const [AftConfig, _$AftConfig];
  @override
  final String wireName = 'AftConfig';

  @override
  Iterable<Object?> serialize(Serializers serializers, AftConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rootDirectory',
      serializers.serialize(object.rootDirectory,
          specifiedType: const FullType(Uri)),
      'workingDirectory',
      serializers.serialize(object.workingDirectory,
          specifiedType: const FullType(Uri)),
      'allPackages',
      serializers.serialize(object.allPackages,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(PackageInfo)])),
      'dependencies',
      serializers.serialize(object.dependencies,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(VersionConstraint)
          ])),
      'environment',
      serializers.serialize(object.environment,
          specifiedType: const FullType(Environment)),
      'ignore',
      serializers.serialize(object.ignore,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'components',
      serializers.serialize(object.components,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AftComponent)])),
      'scripts',
      serializers.serialize(object.scripts,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AftScript)])),
    ];
    Object? value;
    value = object.platforms;
    if (value != null) {
      result
        ..add('platforms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PlatformEnvironment)));
    }
    return result;
  }

  @override
  AftConfig deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AftConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rootDirectory':
          result.rootDirectory = serializers.deserialize(value,
              specifiedType: const FullType(Uri))! as Uri;
          break;
        case 'workingDirectory':
          result.workingDirectory = serializers.deserialize(value,
              specifiedType: const FullType(Uri))! as Uri;
          break;
        case 'allPackages':
          result.allPackages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(PackageInfo)
              ]))!);
          break;
        case 'dependencies':
          result.dependencies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(VersionConstraint)
              ]))!);
          break;
        case 'environment':
          result.environment.replace(serializers.deserialize(value,
              specifiedType: const FullType(Environment))! as Environment);
          break;
        case 'platforms':
          result.platforms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PlatformEnvironment))!
              as PlatformEnvironment);
          break;
        case 'ignore':
          result.ignore.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'components':
          result.components.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(AftComponent)
              ]))!);
          break;
        case 'scripts':
          result.scripts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(AftScript)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$AftConfig extends AftConfig {
  @override
  final Uri rootDirectory;
  @override
  final Uri workingDirectory;
  @override
  final BuiltMap<String, PackageInfo> allPackages;
  @override
  final BuiltMap<String, VersionConstraint> dependencies;
  @override
  final Environment environment;
  @override
  final PlatformEnvironment? platforms;
  @override
  final BuiltList<String> ignore;
  @override
  final BuiltMap<String, AftComponent> components;
  @override
  final BuiltMap<String, AftScript> scripts;

  factory _$AftConfig([void Function(AftConfigBuilder)? updates]) =>
      (new AftConfigBuilder()..update(updates))._build();

  _$AftConfig._(
      {required this.rootDirectory,
      required this.workingDirectory,
      required this.allPackages,
      required this.dependencies,
      required this.environment,
      this.platforms,
      required this.ignore,
      required this.components,
      required this.scripts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rootDirectory, r'AftConfig', 'rootDirectory');
    BuiltValueNullFieldError.checkNotNull(
        workingDirectory, r'AftConfig', 'workingDirectory');
    BuiltValueNullFieldError.checkNotNull(
        allPackages, r'AftConfig', 'allPackages');
    BuiltValueNullFieldError.checkNotNull(
        dependencies, r'AftConfig', 'dependencies');
    BuiltValueNullFieldError.checkNotNull(
        environment, r'AftConfig', 'environment');
    BuiltValueNullFieldError.checkNotNull(ignore, r'AftConfig', 'ignore');
    BuiltValueNullFieldError.checkNotNull(
        components, r'AftConfig', 'components');
    BuiltValueNullFieldError.checkNotNull(scripts, r'AftConfig', 'scripts');
  }

  @override
  AftConfig rebuild(void Function(AftConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AftConfigBuilder toBuilder() => new AftConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AftConfig &&
        rootDirectory == other.rootDirectory &&
        workingDirectory == other.workingDirectory &&
        allPackages == other.allPackages &&
        dependencies == other.dependencies &&
        environment == other.environment &&
        platforms == other.platforms &&
        ignore == other.ignore &&
        components == other.components &&
        scripts == other.scripts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rootDirectory.hashCode);
    _$hash = $jc(_$hash, workingDirectory.hashCode);
    _$hash = $jc(_$hash, allPackages.hashCode);
    _$hash = $jc(_$hash, dependencies.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, ignore.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, scripts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AftConfigBuilder implements Builder<AftConfig, AftConfigBuilder> {
  _$AftConfig? _$v;

  Uri? _rootDirectory;
  Uri? get rootDirectory => _$this._rootDirectory;
  set rootDirectory(Uri? rootDirectory) =>
      _$this._rootDirectory = rootDirectory;

  Uri? _workingDirectory;
  Uri? get workingDirectory => _$this._workingDirectory;
  set workingDirectory(Uri? workingDirectory) =>
      _$this._workingDirectory = workingDirectory;

  MapBuilder<String, PackageInfo>? _allPackages;
  MapBuilder<String, PackageInfo> get allPackages =>
      _$this._allPackages ??= new MapBuilder<String, PackageInfo>();
  set allPackages(MapBuilder<String, PackageInfo>? allPackages) =>
      _$this._allPackages = allPackages;

  MapBuilder<String, VersionConstraint>? _dependencies;
  MapBuilder<String, VersionConstraint> get dependencies =>
      _$this._dependencies ??= new MapBuilder<String, VersionConstraint>();
  set dependencies(MapBuilder<String, VersionConstraint>? dependencies) =>
      _$this._dependencies = dependencies;

  EnvironmentBuilder? _environment;
  EnvironmentBuilder get environment =>
      _$this._environment ??= new EnvironmentBuilder();
  set environment(EnvironmentBuilder? environment) =>
      _$this._environment = environment;

  PlatformEnvironmentBuilder? _platforms;
  PlatformEnvironmentBuilder get platforms =>
      _$this._platforms ??= new PlatformEnvironmentBuilder();
  set platforms(PlatformEnvironmentBuilder? platforms) =>
      _$this._platforms = platforms;

  ListBuilder<String>? _ignore;
  ListBuilder<String> get ignore =>
      _$this._ignore ??= new ListBuilder<String>();
  set ignore(ListBuilder<String>? ignore) => _$this._ignore = ignore;

  MapBuilder<String, AftComponent>? _components;
  MapBuilder<String, AftComponent> get components =>
      _$this._components ??= new MapBuilder<String, AftComponent>();
  set components(MapBuilder<String, AftComponent>? components) =>
      _$this._components = components;

  MapBuilder<String, AftScript>? _scripts;
  MapBuilder<String, AftScript> get scripts =>
      _$this._scripts ??= new MapBuilder<String, AftScript>();
  set scripts(MapBuilder<String, AftScript>? scripts) =>
      _$this._scripts = scripts;

  AftConfigBuilder();

  AftConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rootDirectory = $v.rootDirectory;
      _workingDirectory = $v.workingDirectory;
      _allPackages = $v.allPackages.toBuilder();
      _dependencies = $v.dependencies.toBuilder();
      _environment = $v.environment.toBuilder();
      _platforms = $v.platforms?.toBuilder();
      _ignore = $v.ignore.toBuilder();
      _components = $v.components.toBuilder();
      _scripts = $v.scripts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AftConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AftConfig;
  }

  @override
  void update(void Function(AftConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AftConfig build() => _build();

  _$AftConfig _build() {
    _$AftConfig _$result;
    try {
      _$result = _$v ??
          new _$AftConfig._(
              rootDirectory: BuiltValueNullFieldError.checkNotNull(
                  rootDirectory, r'AftConfig', 'rootDirectory'),
              workingDirectory: BuiltValueNullFieldError.checkNotNull(
                  workingDirectory, r'AftConfig', 'workingDirectory'),
              allPackages: allPackages.build(),
              dependencies: dependencies.build(),
              environment: environment.build(),
              platforms: _platforms?.build(),
              ignore: ignore.build(),
              components: components.build(),
              scripts: scripts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allPackages';
        allPackages.build();
        _$failedField = 'dependencies';
        dependencies.build();
        _$failedField = 'environment';
        environment.build();
        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'ignore';
        ignore.build();
        _$failedField = 'components';
        components.build();
        _$failedField = 'scripts';
        scripts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AftConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
            'example',
            'docs'
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
          docs: $checkedConvert(
              'docs',
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
      'docs': instance.docs?.toJson(),
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
          allowedKeys: const ['pubspec', 'uri', 'pubspecYaml', 'pubspecMap'],
        );
        final val = PubspecInfo(
          pubspec: $checkedConvert(
              'pubspec',
              (v) =>
                  const PubspecConverter().fromJson(v as Map<String, Object?>)),
          pubspecYaml: $checkedConvert('pubspecYaml', (v) => v as String),
          pubspecMap: $checkedConvert(
              'pubspecMap',
              (v) =>
                  const YamlMapConverter().fromJson(v as Map<String, Object?>)),
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
      'pubspecMap': const YamlMapConverter().toJson(instance.pubspecMap),
    };
