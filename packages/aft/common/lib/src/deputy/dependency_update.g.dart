// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependency_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DependencyGroupUpdate extends DependencyGroupUpdate {
  @override
  final String groupName;
  @override
  final BuiltSet<String> dependencies;
  @override
  final BuiltMap<String, VersionConstraint> updatedConstraints;
  @override
  final BuiltMap<String, DependencyMetadata> updates;
  @override
  final Deputy deputy;
  @override
  final BuiltListMultimap<String, void Function(Repo)> pubspecUpdates;

  factory _$DependencyGroupUpdate(
          [void Function(DependencyGroupUpdateBuilder)? updates]) =>
      (new DependencyGroupUpdateBuilder()..update(updates))._build();

  _$DependencyGroupUpdate._(
      {required this.groupName,
      required this.dependencies,
      required this.updatedConstraints,
      required this.updates,
      required this.deputy,
      required this.pubspecUpdates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'DependencyGroupUpdate', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        dependencies, r'DependencyGroupUpdate', 'dependencies');
    BuiltValueNullFieldError.checkNotNull(
        updatedConstraints, r'DependencyGroupUpdate', 'updatedConstraints');
    BuiltValueNullFieldError.checkNotNull(
        updates, r'DependencyGroupUpdate', 'updates');
    BuiltValueNullFieldError.checkNotNull(
        deputy, r'DependencyGroupUpdate', 'deputy');
    BuiltValueNullFieldError.checkNotNull(
        pubspecUpdates, r'DependencyGroupUpdate', 'pubspecUpdates');
  }

  @override
  DependencyGroupUpdate rebuild(
          void Function(DependencyGroupUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DependencyGroupUpdateBuilder toBuilder() =>
      new DependencyGroupUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DependencyGroupUpdate &&
        groupName == other.groupName &&
        dependencies == other.dependencies &&
        updatedConstraints == other.updatedConstraints &&
        updates == other.updates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, dependencies.hashCode);
    _$hash = $jc(_$hash, updatedConstraints.hashCode);
    _$hash = $jc(_$hash, updates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DependencyGroupUpdate')
          ..add('groupName', groupName)
          ..add('dependencies', dependencies)
          ..add('updatedConstraints', updatedConstraints)
          ..add('updates', updates)
          ..add('deputy', deputy)
          ..add('pubspecUpdates', pubspecUpdates))
        .toString();
  }
}

class DependencyGroupUpdateBuilder
    implements Builder<DependencyGroupUpdate, DependencyGroupUpdateBuilder> {
  _$DependencyGroupUpdate? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  SetBuilder<String>? _dependencies;
  SetBuilder<String> get dependencies =>
      _$this._dependencies ??= new SetBuilder<String>();
  set dependencies(SetBuilder<String>? dependencies) =>
      _$this._dependencies = dependencies;

  MapBuilder<String, VersionConstraint>? _updatedConstraints;
  MapBuilder<String, VersionConstraint> get updatedConstraints =>
      _$this._updatedConstraints ??=
          new MapBuilder<String, VersionConstraint>();
  set updatedConstraints(
          MapBuilder<String, VersionConstraint>? updatedConstraints) =>
      _$this._updatedConstraints = updatedConstraints;

  MapBuilder<String, DependencyMetadata>? _updates;
  MapBuilder<String, DependencyMetadata> get updates =>
      _$this._updates ??= new MapBuilder<String, DependencyMetadata>();
  set updates(MapBuilder<String, DependencyMetadata>? updates) =>
      _$this._updates = updates;

  Deputy? _deputy;
  Deputy? get deputy => _$this._deputy;
  set deputy(Deputy? deputy) => _$this._deputy = deputy;

  ListMultimapBuilder<String, void Function(Repo)>? _pubspecUpdates;
  ListMultimapBuilder<String, void Function(Repo)> get pubspecUpdates =>
      _$this._pubspecUpdates ??=
          new ListMultimapBuilder<String, void Function(Repo)>();
  set pubspecUpdates(
          ListMultimapBuilder<String, void Function(Repo)>? pubspecUpdates) =>
      _$this._pubspecUpdates = pubspecUpdates;

  DependencyGroupUpdateBuilder();

  DependencyGroupUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _dependencies = $v.dependencies.toBuilder();
      _updatedConstraints = $v.updatedConstraints.toBuilder();
      _updates = $v.updates.toBuilder();
      _deputy = $v.deputy;
      _pubspecUpdates = $v.pubspecUpdates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DependencyGroupUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DependencyGroupUpdate;
  }

  @override
  void update(void Function(DependencyGroupUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DependencyGroupUpdate build() => _build();

  _$DependencyGroupUpdate _build() {
    _$DependencyGroupUpdate _$result;
    try {
      _$result = _$v ??
          new _$DependencyGroupUpdate._(
              groupName: BuiltValueNullFieldError.checkNotNull(
                  groupName, r'DependencyGroupUpdate', 'groupName'),
              dependencies: dependencies.build(),
              updatedConstraints: updatedConstraints.build(),
              updates: updates.build(),
              deputy: BuiltValueNullFieldError.checkNotNull(
                  deputy, r'DependencyGroupUpdate', 'deputy'),
              pubspecUpdates: pubspecUpdates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dependencies';
        dependencies.build();
        _$failedField = 'updatedConstraints';
        updatedConstraints.build();
        _$failedField = 'updates';
        updates.build();

        _$failedField = 'pubspecUpdates';
        pubspecUpdates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DependencyGroupUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DependencyMetadata extends DependencyMetadata {
  @override
  final String dependencyName;
  @override
  final Version latestVersion;
  @override
  final VersionConstraint? globalConstraint;
  @override
  final BuiltMap<String, VersionConstraint> dependentPackages;

  factory _$DependencyMetadata(
          [void Function(DependencyMetadataBuilder)? updates]) =>
      (new DependencyMetadataBuilder()..update(updates))._build();

  _$DependencyMetadata._(
      {required this.dependencyName,
      required this.latestVersion,
      this.globalConstraint,
      required this.dependentPackages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dependencyName, r'DependencyMetadata', 'dependencyName');
    BuiltValueNullFieldError.checkNotNull(
        latestVersion, r'DependencyMetadata', 'latestVersion');
    BuiltValueNullFieldError.checkNotNull(
        dependentPackages, r'DependencyMetadata', 'dependentPackages');
  }

  @override
  DependencyMetadata rebuild(
          void Function(DependencyMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DependencyMetadataBuilder toBuilder() =>
      new DependencyMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DependencyMetadata &&
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
    return (newBuiltValueToStringHelper(r'DependencyMetadata')
          ..add('dependencyName', dependencyName)
          ..add('latestVersion', latestVersion)
          ..add('globalConstraint', globalConstraint)
          ..add('dependentPackages', dependentPackages))
        .toString();
  }
}

class DependencyMetadataBuilder
    implements Builder<DependencyMetadata, DependencyMetadataBuilder> {
  _$DependencyMetadata? _$v;

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

  DependencyMetadataBuilder();

  DependencyMetadataBuilder get _$this {
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
  void replace(DependencyMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DependencyMetadata;
  }

  @override
  void update(void Function(DependencyMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DependencyMetadata build() => _build();

  _$DependencyMetadata _build() {
    _$DependencyMetadata _$result;
    try {
      _$result = _$v ??
          new _$DependencyMetadata._(
              dependencyName: BuiltValueNullFieldError.checkNotNull(
                  dependencyName, r'DependencyMetadata', 'dependencyName'),
              latestVersion: BuiltValueNullFieldError.checkNotNull(
                  latestVersion, r'DependencyMetadata', 'latestVersion'),
              globalConstraint: globalConstraint,
              dependentPackages: dependentPackages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dependentPackages';
        dependentPackages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DependencyMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
