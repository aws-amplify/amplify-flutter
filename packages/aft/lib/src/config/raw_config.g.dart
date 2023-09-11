// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Environment> _$environmentSerializer = new _$EnvironmentSerializer();
Serializer<PlatformEnvironment> _$platformEnvironmentSerializer =
    new _$PlatformEnvironmentSerializer();
Serializer<AndroidEnvironment> _$androidEnvironmentSerializer =
    new _$AndroidEnvironmentSerializer();
Serializer<IosEnvironment> _$iosEnvironmentSerializer =
    new _$IosEnvironmentSerializer();
Serializer<MacOSEnvironment> _$macOSEnvironmentSerializer =
    new _$MacOSEnvironmentSerializer();
Serializer<GitHubPackageConfig> _$gitHubPackageConfigSerializer =
    new _$GitHubPackageConfigSerializer();

class _$EnvironmentSerializer implements StructuredSerializer<Environment> {
  @override
  final Iterable<Type> types = const [Environment, _$Environment];
  @override
  final String wireName = 'Environment';

  @override
  Iterable<Object?> serialize(Serializers serializers, Environment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'sdk',
      serializers.serialize(object.sdk,
          specifiedType: const FullType(VersionConstraint)),
      'flutter',
      serializers.serialize(object.flutter,
          specifiedType: const FullType(VersionConstraint)),
    ];

    return result;
  }

  @override
  Environment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnvironmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sdk':
          result.sdk = serializers.deserialize(value,
                  specifiedType: const FullType(VersionConstraint))!
              as VersionConstraint;
          break;
        case 'flutter':
          result.flutter = serializers.deserialize(value,
                  specifiedType: const FullType(VersionConstraint))!
              as VersionConstraint;
          break;
      }
    }

    return result.build();
  }
}

class _$PlatformEnvironmentSerializer
    implements StructuredSerializer<PlatformEnvironment> {
  @override
  final Iterable<Type> types = const [
    PlatformEnvironment,
    _$PlatformEnvironment
  ];
  @override
  final String wireName = 'PlatformEnvironment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PlatformEnvironment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'android',
      serializers.serialize(object.android,
          specifiedType: const FullType(AndroidEnvironment)),
      'ios',
      serializers.serialize(object.ios,
          specifiedType: const FullType(IosEnvironment)),
      'macOS',
      serializers.serialize(object.macOS,
          specifiedType: const FullType(MacOSEnvironment)),
    ];

    return result;
  }

  @override
  PlatformEnvironment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlatformEnvironmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'android':
          result.android.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AndroidEnvironment))!
              as AndroidEnvironment);
          break;
        case 'ios':
          result.ios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IosEnvironment))!
              as IosEnvironment);
          break;
        case 'macOS':
          result.macOS.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MacOSEnvironment))!
              as MacOSEnvironment);
          break;
      }
    }

    return result.build();
  }
}

class _$AndroidEnvironmentSerializer
    implements StructuredSerializer<AndroidEnvironment> {
  @override
  final Iterable<Type> types = const [AndroidEnvironment, _$AndroidEnvironment];
  @override
  final String wireName = 'AndroidEnvironment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AndroidEnvironment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'minSdkVersion',
      serializers.serialize(object.minSdkVersion,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AndroidEnvironment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AndroidEnvironmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'minSdkVersion':
          result.minSdkVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IosEnvironmentSerializer
    implements StructuredSerializer<IosEnvironment> {
  @override
  final Iterable<Type> types = const [IosEnvironment, _$IosEnvironment];
  @override
  final String wireName = 'IosEnvironment';

  @override
  Iterable<Object?> serialize(Serializers serializers, IosEnvironment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'minOSVersion',
      serializers.serialize(object.minOSVersion,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  IosEnvironment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IosEnvironmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'minOSVersion':
          result.minOSVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MacOSEnvironmentSerializer
    implements StructuredSerializer<MacOSEnvironment> {
  @override
  final Iterable<Type> types = const [MacOSEnvironment, _$MacOSEnvironment];
  @override
  final String wireName = 'MacOSEnvironment';

  @override
  Iterable<Object?> serialize(Serializers serializers, MacOSEnvironment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'minOSVersion',
      serializers.serialize(object.minOSVersion,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MacOSEnvironment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MacOSEnvironmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'minOSVersion':
          result.minOSVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GitHubPackageConfigSerializer
    implements StructuredSerializer<GitHubPackageConfig> {
  @override
  final Iterable<Type> types = const [
    GitHubPackageConfig,
    _$GitHubPackageConfig
  ];
  @override
  final String wireName = 'GitHubPackageConfig';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GitHubPackageConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'custom',
      serializers.serialize(object.custom, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GitHubPackageConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitHubPackageConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'custom':
          result.custom = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Environment extends Environment {
  @override
  final VersionConstraint sdk;
  @override
  final VersionConstraint flutter;

  factory _$Environment([void Function(EnvironmentBuilder)? updates]) =>
      (new EnvironmentBuilder()..update(updates))._build();

  _$Environment._({required this.sdk, required this.flutter}) : super._() {
    BuiltValueNullFieldError.checkNotNull(sdk, r'Environment', 'sdk');
    BuiltValueNullFieldError.checkNotNull(flutter, r'Environment', 'flutter');
  }

  @override
  Environment rebuild(void Function(EnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentBuilder toBuilder() => new EnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Environment && sdk == other.sdk && flutter == other.flutter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sdk.hashCode);
    _$hash = $jc(_$hash, flutter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnvironmentBuilder implements Builder<Environment, EnvironmentBuilder> {
  _$Environment? _$v;

  VersionConstraint? _sdk;
  VersionConstraint? get sdk => _$this._sdk;
  set sdk(VersionConstraint? sdk) => _$this._sdk = sdk;

  VersionConstraint? _flutter;
  VersionConstraint? get flutter => _$this._flutter;
  set flutter(VersionConstraint? flutter) => _$this._flutter = flutter;

  EnvironmentBuilder();

  EnvironmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sdk = $v.sdk;
      _flutter = $v.flutter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Environment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Environment;
  }

  @override
  void update(void Function(EnvironmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Environment build() => _build();

  _$Environment _build() {
    Environment._finalize(this);
    final _$result = _$v ??
        new _$Environment._(
            sdk: BuiltValueNullFieldError.checkNotNull(
                sdk, r'Environment', 'sdk'),
            flutter: BuiltValueNullFieldError.checkNotNull(
                flutter, r'Environment', 'flutter'));
    replace(_$result);
    return _$result;
  }
}

class _$PlatformEnvironment extends PlatformEnvironment {
  @override
  final AndroidEnvironment android;
  @override
  final IosEnvironment ios;
  @override
  final MacOSEnvironment macOS;

  factory _$PlatformEnvironment(
          [void Function(PlatformEnvironmentBuilder)? updates]) =>
      (new PlatformEnvironmentBuilder()..update(updates))._build();

  _$PlatformEnvironment._(
      {required this.android, required this.ios, required this.macOS})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        android, r'PlatformEnvironment', 'android');
    BuiltValueNullFieldError.checkNotNull(ios, r'PlatformEnvironment', 'ios');
    BuiltValueNullFieldError.checkNotNull(
        macOS, r'PlatformEnvironment', 'macOS');
  }

  @override
  PlatformEnvironment rebuild(
          void Function(PlatformEnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformEnvironmentBuilder toBuilder() =>
      new PlatformEnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformEnvironment &&
        android == other.android &&
        ios == other.ios &&
        macOS == other.macOS;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, android.hashCode);
    _$hash = $jc(_$hash, ios.hashCode);
    _$hash = $jc(_$hash, macOS.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformEnvironment')
          ..add('android', android)
          ..add('ios', ios)
          ..add('macOS', macOS))
        .toString();
  }
}

class PlatformEnvironmentBuilder
    implements Builder<PlatformEnvironment, PlatformEnvironmentBuilder> {
  _$PlatformEnvironment? _$v;

  AndroidEnvironmentBuilder? _android;
  AndroidEnvironmentBuilder get android =>
      _$this._android ??= new AndroidEnvironmentBuilder();
  set android(AndroidEnvironmentBuilder? android) => _$this._android = android;

  IosEnvironmentBuilder? _ios;
  IosEnvironmentBuilder get ios => _$this._ios ??= new IosEnvironmentBuilder();
  set ios(IosEnvironmentBuilder? ios) => _$this._ios = ios;

  MacOSEnvironmentBuilder? _macOS;
  MacOSEnvironmentBuilder get macOS =>
      _$this._macOS ??= new MacOSEnvironmentBuilder();
  set macOS(MacOSEnvironmentBuilder? macOS) => _$this._macOS = macOS;

  PlatformEnvironmentBuilder();

  PlatformEnvironmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _android = $v.android.toBuilder();
      _ios = $v.ios.toBuilder();
      _macOS = $v.macOS.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformEnvironment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformEnvironment;
  }

  @override
  void update(void Function(PlatformEnvironmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformEnvironment build() => _build();

  _$PlatformEnvironment _build() {
    _$PlatformEnvironment _$result;
    try {
      _$result = _$v ??
          new _$PlatformEnvironment._(
              android: android.build(), ios: ios.build(), macOS: macOS.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'android';
        android.build();
        _$failedField = 'ios';
        ios.build();
        _$failedField = 'macOS';
        macOS.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlatformEnvironment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AndroidEnvironment extends AndroidEnvironment {
  @override
  final String minSdkVersion;

  factory _$AndroidEnvironment(
          [void Function(AndroidEnvironmentBuilder)? updates]) =>
      (new AndroidEnvironmentBuilder()..update(updates))._build();

  _$AndroidEnvironment._({required this.minSdkVersion}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        minSdkVersion, r'AndroidEnvironment', 'minSdkVersion');
  }

  @override
  AndroidEnvironment rebuild(
          void Function(AndroidEnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AndroidEnvironmentBuilder toBuilder() =>
      new AndroidEnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AndroidEnvironment && minSdkVersion == other.minSdkVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minSdkVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AndroidEnvironmentBuilder
    implements Builder<AndroidEnvironment, AndroidEnvironmentBuilder> {
  _$AndroidEnvironment? _$v;

  String? _minSdkVersion;
  String? get minSdkVersion => _$this._minSdkVersion;
  set minSdkVersion(String? minSdkVersion) =>
      _$this._minSdkVersion = minSdkVersion;

  AndroidEnvironmentBuilder();

  AndroidEnvironmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minSdkVersion = $v.minSdkVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AndroidEnvironment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AndroidEnvironment;
  }

  @override
  void update(void Function(AndroidEnvironmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AndroidEnvironment build() => _build();

  _$AndroidEnvironment _build() {
    final _$result = _$v ??
        new _$AndroidEnvironment._(
            minSdkVersion: BuiltValueNullFieldError.checkNotNull(
                minSdkVersion, r'AndroidEnvironment', 'minSdkVersion'));
    replace(_$result);
    return _$result;
  }
}

class _$IosEnvironment extends IosEnvironment {
  @override
  final String minOSVersion;

  factory _$IosEnvironment([void Function(IosEnvironmentBuilder)? updates]) =>
      (new IosEnvironmentBuilder()..update(updates))._build();

  _$IosEnvironment._({required this.minOSVersion}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        minOSVersion, r'IosEnvironment', 'minOSVersion');
  }

  @override
  IosEnvironment rebuild(void Function(IosEnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IosEnvironmentBuilder toBuilder() =>
      new IosEnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IosEnvironment && minOSVersion == other.minOSVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minOSVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IosEnvironmentBuilder
    implements Builder<IosEnvironment, IosEnvironmentBuilder> {
  _$IosEnvironment? _$v;

  String? _minOSVersion;
  String? get minOSVersion => _$this._minOSVersion;
  set minOSVersion(String? minOSVersion) => _$this._minOSVersion = minOSVersion;

  IosEnvironmentBuilder();

  IosEnvironmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minOSVersion = $v.minOSVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IosEnvironment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IosEnvironment;
  }

  @override
  void update(void Function(IosEnvironmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IosEnvironment build() => _build();

  _$IosEnvironment _build() {
    final _$result = _$v ??
        new _$IosEnvironment._(
            minOSVersion: BuiltValueNullFieldError.checkNotNull(
                minOSVersion, r'IosEnvironment', 'minOSVersion'));
    replace(_$result);
    return _$result;
  }
}

class _$MacOSEnvironment extends MacOSEnvironment {
  @override
  final String minOSVersion;

  factory _$MacOSEnvironment(
          [void Function(MacOSEnvironmentBuilder)? updates]) =>
      (new MacOSEnvironmentBuilder()..update(updates))._build();

  _$MacOSEnvironment._({required this.minOSVersion}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        minOSVersion, r'MacOSEnvironment', 'minOSVersion');
  }

  @override
  MacOSEnvironment rebuild(void Function(MacOSEnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MacOSEnvironmentBuilder toBuilder() =>
      new MacOSEnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MacOSEnvironment && minOSVersion == other.minOSVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minOSVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MacOSEnvironmentBuilder
    implements Builder<MacOSEnvironment, MacOSEnvironmentBuilder> {
  _$MacOSEnvironment? _$v;

  String? _minOSVersion;
  String? get minOSVersion => _$this._minOSVersion;
  set minOSVersion(String? minOSVersion) => _$this._minOSVersion = minOSVersion;

  MacOSEnvironmentBuilder();

  MacOSEnvironmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minOSVersion = $v.minOSVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MacOSEnvironment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MacOSEnvironment;
  }

  @override
  void update(void Function(MacOSEnvironmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MacOSEnvironment build() => _build();

  _$MacOSEnvironment _build() {
    final _$result = _$v ??
        new _$MacOSEnvironment._(
            minOSVersion: BuiltValueNullFieldError.checkNotNull(
                minOSVersion, r'MacOSEnvironment', 'minOSVersion'));
    replace(_$result);
    return _$result;
  }
}

class _$GitHubPackageConfig extends GitHubPackageConfig {
  @override
  final bool custom;

  factory _$GitHubPackageConfig(
          [void Function(GitHubPackageConfigBuilder)? updates]) =>
      (new GitHubPackageConfigBuilder()..update(updates))._build();

  _$GitHubPackageConfig._({required this.custom}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        custom, r'GitHubPackageConfig', 'custom');
  }

  @override
  GitHubPackageConfig rebuild(
          void Function(GitHubPackageConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitHubPackageConfigBuilder toBuilder() =>
      new GitHubPackageConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitHubPackageConfig && custom == other.custom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, custom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GitHubPackageConfigBuilder
    implements Builder<GitHubPackageConfig, GitHubPackageConfigBuilder> {
  _$GitHubPackageConfig? _$v;

  bool? _custom;
  bool? get custom => _$this._custom;
  set custom(bool? custom) => _$this._custom = custom;

  GitHubPackageConfigBuilder() {
    GitHubPackageConfig._initialize(this);
  }

  GitHubPackageConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _custom = $v.custom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitHubPackageConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GitHubPackageConfig;
  }

  @override
  void update(void Function(GitHubPackageConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GitHubPackageConfig build() => _build();

  _$GitHubPackageConfig _build() {
    final _$result = _$v ??
        new _$GitHubPackageConfig._(
            custom: BuiltValueNullFieldError.checkNotNull(
                custom, r'GitHubPackageConfig', 'custom'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RawPubspecConfig _$RawPubspecConfigFromJson(Map json) => $checkedCreate(
      'RawPubspecConfig',
      json,
      ($checkedConvert) {
        final val = RawPubspecConfig(
          dependencies: $checkedConvert('dependencies',
              (v) => v == null ? const {} : parseDeps(v as Map?)),
          environment: $checkedConvert('environment',
              (v) => Environment.fromJson(Map<String, Object?>.from(v as Map))),
          aft: $checkedConvert(
              'aft',
              (v) => v == null
                  ? null
                  : RawAftConfig.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

RawAftConfig _$RawAftConfigFromJson(Map json) => $checkedCreate(
      'RawAftConfig',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'platforms',
            'ignore',
            'components',
            'scripts',
            'github'
          ],
        );
        final val = RawAftConfig(
          platforms: $checkedConvert(
              'platforms',
              (v) => v == null
                  ? null
                  : PlatformEnvironment.fromJson(
                      Map<String, Object?>.from(v as Map))),
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
          github: $checkedConvert(
              'github',
              (v) => v == null
                  ? null
                  : GitHubPackageConfig.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$RawAftConfigToJson(RawAftConfig instance) =>
    <String, dynamic>{
      'platforms': instance.platforms?.toJson(),
      'ignore': instance.ignore,
      'components': instance.components.map((e) => e.toJson()).toList(),
      'scripts': instance.scripts.map((k, e) => MapEntry(k, e.toJson())),
      'github': instance.github?.toJson(),
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
          ref: $checkedConvert('ref', (v) => v as String? ?? 'main'),
          apis: $checkedConvert(
              'apis',
              (v) => (v as Map).map(
                    (k, e) => MapEntry(
                        k as String,
                        (e as List<dynamic>?)
                            ?.map((e) => e as String)
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
      'apis': instance.apis,
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
