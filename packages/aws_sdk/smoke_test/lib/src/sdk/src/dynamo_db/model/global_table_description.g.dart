// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_table_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalTableDescription extends GlobalTableDescription {
  @override
  final _i4.BuiltList<_i2.ReplicaDescription>? replicationGroup;
  @override
  final String? globalTableArn;
  @override
  final DateTime? creationDateTime;
  @override
  final _i3.GlobalTableStatus? globalTableStatus;
  @override
  final String? globalTableName;

  factory _$GlobalTableDescription(
          [void Function(GlobalTableDescriptionBuilder)? updates]) =>
      (new GlobalTableDescriptionBuilder()..update(updates))._build();

  _$GlobalTableDescription._(
      {this.replicationGroup,
      this.globalTableArn,
      this.creationDateTime,
      this.globalTableStatus,
      this.globalTableName})
      : super._();

  @override
  GlobalTableDescription rebuild(
          void Function(GlobalTableDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalTableDescriptionBuilder toBuilder() =>
      new GlobalTableDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalTableDescription &&
        replicationGroup == other.replicationGroup &&
        globalTableArn == other.globalTableArn &&
        creationDateTime == other.creationDateTime &&
        globalTableStatus == other.globalTableStatus &&
        globalTableName == other.globalTableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replicationGroup.hashCode);
    _$hash = $jc(_$hash, globalTableArn.hashCode);
    _$hash = $jc(_$hash, creationDateTime.hashCode);
    _$hash = $jc(_$hash, globalTableStatus.hashCode);
    _$hash = $jc(_$hash, globalTableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalTableDescriptionBuilder
    implements Builder<GlobalTableDescription, GlobalTableDescriptionBuilder> {
  _$GlobalTableDescription? _$v;

  _i4.ListBuilder<_i2.ReplicaDescription>? _replicationGroup;
  _i4.ListBuilder<_i2.ReplicaDescription> get replicationGroup =>
      _$this._replicationGroup ??=
          new _i4.ListBuilder<_i2.ReplicaDescription>();
  set replicationGroup(
          _i4.ListBuilder<_i2.ReplicaDescription>? replicationGroup) =>
      _$this._replicationGroup = replicationGroup;

  String? _globalTableArn;
  String? get globalTableArn => _$this._globalTableArn;
  set globalTableArn(String? globalTableArn) =>
      _$this._globalTableArn = globalTableArn;

  DateTime? _creationDateTime;
  DateTime? get creationDateTime => _$this._creationDateTime;
  set creationDateTime(DateTime? creationDateTime) =>
      _$this._creationDateTime = creationDateTime;

  _i3.GlobalTableStatus? _globalTableStatus;
  _i3.GlobalTableStatus? get globalTableStatus => _$this._globalTableStatus;
  set globalTableStatus(_i3.GlobalTableStatus? globalTableStatus) =>
      _$this._globalTableStatus = globalTableStatus;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  GlobalTableDescriptionBuilder() {
    GlobalTableDescription._init(this);
  }

  GlobalTableDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replicationGroup = $v.replicationGroup?.toBuilder();
      _globalTableArn = $v.globalTableArn;
      _creationDateTime = $v.creationDateTime;
      _globalTableStatus = $v.globalTableStatus;
      _globalTableName = $v.globalTableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalTableDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalTableDescription;
  }

  @override
  void update(void Function(GlobalTableDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalTableDescription build() => _build();

  _$GlobalTableDescription _build() {
    _$GlobalTableDescription _$result;
    try {
      _$result = _$v ??
          new _$GlobalTableDescription._(
              replicationGroup: _replicationGroup?.build(),
              globalTableArn: globalTableArn,
              creationDateTime: creationDateTime,
              globalTableStatus: globalTableStatus,
              globalTableName: globalTableName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicationGroup';
        _replicationGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalTableDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
