// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependency_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(DependencyUpdate.serializer)
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(VersionConstraint)
          ]),
          () => new MapBuilder<String, VersionConstraint>()))
    .build();
Serializer<DependencyUpdate> _$dependencyUpdateSerializer =
    new _$DependencyUpdateSerializer();

class _$DependencyUpdateSerializer
    implements StructuredSerializer<DependencyUpdate> {
  @override
  final Iterable<Type> types = const [DependencyUpdate, _$DependencyUpdate];
  @override
  final String wireName = 'DependencyUpdate';

  @override
  Iterable<Object?> serialize(Serializers serializers, DependencyUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dependencyName',
      serializers.serialize(object.dependencyName,
          specifiedType: const FullType(String)),
      'latestVersion',
      serializers.serialize(object.latestVersion,
          specifiedType: const FullType(Version)),
      'dependentPackages',
      serializers.serialize(object.dependentPackages,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(VersionConstraint)
          ])),
    ];
    Object? value;
    value = object.globalConstraint;
    if (value != null) {
      result
        ..add('globalConstraint')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(VersionConstraint)));
    }
    return result;
  }

  @override
  DependencyUpdate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DependencyUpdateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dependencyName':
          result.dependencyName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'latestVersion':
          result.latestVersion = serializers.deserialize(value,
              specifiedType: const FullType(Version))! as Version;
          break;
        case 'globalConstraint':
          result.globalConstraint = serializers.deserialize(value,
                  specifiedType: const FullType(VersionConstraint))
              as VersionConstraint?;
          break;
        case 'dependentPackages':
          result.dependentPackages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(VersionConstraint)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$DependencyUpdate extends DependencyUpdate {
  @override
  final String dependencyName;
  @override
  final Version latestVersion;
  @override
  final VersionConstraint? globalConstraint;
  @override
  final BuiltMap<String, VersionConstraint> dependentPackages;

  factory _$DependencyUpdate(
          [void Function(DependencyUpdateBuilder)? updates]) =>
      (new DependencyUpdateBuilder()..update(updates))._build();

  _$DependencyUpdate._(
      {required this.dependencyName,
      required this.latestVersion,
      this.globalConstraint,
      required this.dependentPackages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dependencyName, r'DependencyUpdate', 'dependencyName');
    BuiltValueNullFieldError.checkNotNull(
        latestVersion, r'DependencyUpdate', 'latestVersion');
    BuiltValueNullFieldError.checkNotNull(
        dependentPackages, r'DependencyUpdate', 'dependentPackages');
  }

  @override
  DependencyUpdate rebuild(void Function(DependencyUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DependencyUpdateBuilder toBuilder() =>
      new DependencyUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DependencyUpdate &&
        dependencyName == other.dependencyName &&
        latestVersion == other.latestVersion &&
        globalConstraint == other.globalConstraint &&
        dependentPackages == other.dependentPackages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dependencyName.hashCode);
    _$hash = $jc(_$hash, latestVersion.hashCode);
    _$hash = $jc(_$hash, globalConstraint.hashCode);
    _$hash = $jc(_$hash, dependentPackages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DependencyUpdate')
          ..add('dependencyName', dependencyName)
          ..add('latestVersion', latestVersion)
          ..add('globalConstraint', globalConstraint)
          ..add('dependentPackages', dependentPackages))
        .toString();
  }
}

class DependencyUpdateBuilder
    implements Builder<DependencyUpdate, DependencyUpdateBuilder> {
  _$DependencyUpdate? _$v;

  String? _dependencyName;
  String? get dependencyName => _$this._dependencyName;
  set dependencyName(String? dependencyName) =>
      _$this._dependencyName = dependencyName;

  Version? _latestVersion;
  Version? get latestVersion => _$this._latestVersion;
  set latestVersion(Version? latestVersion) =>
      _$this._latestVersion = latestVersion;

  VersionConstraint? _globalConstraint;
  VersionConstraint? get globalConstraint => _$this._globalConstraint;
  set globalConstraint(VersionConstraint? globalConstraint) =>
      _$this._globalConstraint = globalConstraint;

  MapBuilder<String, VersionConstraint>? _dependentPackages;
  MapBuilder<String, VersionConstraint> get dependentPackages =>
      _$this._dependentPackages ??= new MapBuilder<String, VersionConstraint>();
  set dependentPackages(
          MapBuilder<String, VersionConstraint>? dependentPackages) =>
      _$this._dependentPackages = dependentPackages;

  DependencyUpdateBuilder();

  DependencyUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dependencyName = $v.dependencyName;
      _latestVersion = $v.latestVersion;
      _globalConstraint = $v.globalConstraint;
      _dependentPackages = $v.dependentPackages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DependencyUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DependencyUpdate;
  }

  @override
  void update(void Function(DependencyUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DependencyUpdate build() => _build();

  _$DependencyUpdate _build() {
    _$DependencyUpdate _$result;
    try {
      _$result = _$v ??
          new _$DependencyUpdate._(
              dependencyName: BuiltValueNullFieldError.checkNotNull(
                  dependencyName, r'DependencyUpdate', 'dependencyName'),
              latestVersion: BuiltValueNullFieldError.checkNotNull(
                  latestVersion, r'DependencyUpdate', 'latestVersion'),
              globalConstraint: globalConstraint,
              dependentPackages: dependentPackages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dependentPackages';
        dependentPackages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DependencyUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
