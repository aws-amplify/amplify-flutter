// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(Group.serializer)
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(VersionConstraint)
          ]),
          () => new MapBuilder<String, VersionConstraint>()))
    .build();
Serializer<Group> _$groupSerializer = new _$GroupSerializer();

class _$GroupSerializer implements StructuredSerializer<Group> {
  @override
  final Iterable<Type> types = const [Group, _$Group];
  @override
  final String wireName = 'Group';

  @override
  Iterable<Object?> serialize(Serializers serializers, Group object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'packageName',
      serializers.serialize(object.packageName,
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
  Group deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'packageName':
          result.packageName = serializers.deserialize(value,
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

class _$Group extends Group {
  @override
  final String packageName;
  @override
  final Version latestVersion;
  @override
  final VersionConstraint? globalConstraint;
  @override
  final BuiltMap<String, VersionConstraint> dependentPackages;

  factory _$Group([void Function(GroupBuilder)? updates]) =>
      (new GroupBuilder()..update(updates))._build();

  _$Group._(
      {required this.packageName,
      required this.latestVersion,
      this.globalConstraint,
      required this.dependentPackages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(packageName, r'Group', 'packageName');
    BuiltValueNullFieldError.checkNotNull(
        latestVersion, r'Group', 'latestVersion');
    BuiltValueNullFieldError.checkNotNull(
        dependentPackages, r'Group', 'dependentPackages');
  }

  @override
  Group rebuild(void Function(GroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBuilder toBuilder() => new GroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Group &&
        packageName == other.packageName &&
        latestVersion == other.latestVersion &&
        globalConstraint == other.globalConstraint &&
        dependentPackages == other.dependentPackages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, packageName.hashCode);
    _$hash = $jc(_$hash, latestVersion.hashCode);
    _$hash = $jc(_$hash, globalConstraint.hashCode);
    _$hash = $jc(_$hash, dependentPackages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Group')
          ..add('packageName', packageName)
          ..add('latestVersion', latestVersion)
          ..add('globalConstraint', globalConstraint)
          ..add('dependentPackages', dependentPackages))
        .toString();
  }
}

class GroupBuilder implements Builder<Group, GroupBuilder> {
  _$Group? _$v;

  String? _packageName;
  String? get packageName => _$this._packageName;
  set packageName(String? packageName) => _$this._packageName = packageName;

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

  GroupBuilder();

  GroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _packageName = $v.packageName;
      _latestVersion = $v.latestVersion;
      _globalConstraint = $v.globalConstraint;
      _dependentPackages = $v.dependentPackages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Group other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Group;
  }

  @override
  void update(void Function(GroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Group build() => _build();

  _$Group _build() {
    _$Group _$result;
    try {
      _$result = _$v ??
          new _$Group._(
              packageName: BuiltValueNullFieldError.checkNotNull(
                  packageName, r'Group', 'packageName'),
              latestVersion: BuiltValueNullFieldError.checkNotNull(
                  latestVersion, r'Group', 'latestVersion'),
              globalConstraint: globalConstraint,
              dependentPackages: dependentPackages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dependentPackages';
        dependentPackages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Group', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
