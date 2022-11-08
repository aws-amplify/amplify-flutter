// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_table_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalTableDescription extends GlobalTableDescription {
  @override
  final DateTime? creationDateTime;
  @override
  final String? globalTableArn;
  @override
  final String? globalTableName;
  @override
  final _i2.GlobalTableStatus? globalTableStatus;
  @override
  final _i4.BuiltList<_i3.ReplicaDescription>? replicationGroup;

  factory _$GlobalTableDescription(
          [void Function(GlobalTableDescriptionBuilder)? updates]) =>
      (new GlobalTableDescriptionBuilder()..update(updates))._build();

  _$GlobalTableDescription._(
      {this.creationDateTime,
      this.globalTableArn,
      this.globalTableName,
      this.globalTableStatus,
      this.replicationGroup})
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
        creationDateTime == other.creationDateTime &&
        globalTableArn == other.globalTableArn &&
        globalTableName == other.globalTableName &&
        globalTableStatus == other.globalTableStatus &&
        replicationGroup == other.replicationGroup;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, creationDateTime.hashCode), globalTableArn.hashCode),
                globalTableName.hashCode),
            globalTableStatus.hashCode),
        replicationGroup.hashCode));
  }
}

class GlobalTableDescriptionBuilder
    implements Builder<GlobalTableDescription, GlobalTableDescriptionBuilder> {
  _$GlobalTableDescription? _$v;

  DateTime? _creationDateTime;
  DateTime? get creationDateTime => _$this._creationDateTime;
  set creationDateTime(DateTime? creationDateTime) =>
      _$this._creationDateTime = creationDateTime;

  String? _globalTableArn;
  String? get globalTableArn => _$this._globalTableArn;
  set globalTableArn(String? globalTableArn) =>
      _$this._globalTableArn = globalTableArn;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  _i2.GlobalTableStatus? _globalTableStatus;
  _i2.GlobalTableStatus? get globalTableStatus => _$this._globalTableStatus;
  set globalTableStatus(_i2.GlobalTableStatus? globalTableStatus) =>
      _$this._globalTableStatus = globalTableStatus;

  _i4.ListBuilder<_i3.ReplicaDescription>? _replicationGroup;
  _i4.ListBuilder<_i3.ReplicaDescription> get replicationGroup =>
      _$this._replicationGroup ??=
          new _i4.ListBuilder<_i3.ReplicaDescription>();
  set replicationGroup(
          _i4.ListBuilder<_i3.ReplicaDescription>? replicationGroup) =>
      _$this._replicationGroup = replicationGroup;

  GlobalTableDescriptionBuilder() {
    GlobalTableDescription._init(this);
  }

  GlobalTableDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creationDateTime = $v.creationDateTime;
      _globalTableArn = $v.globalTableArn;
      _globalTableName = $v.globalTableName;
      _globalTableStatus = $v.globalTableStatus;
      _replicationGroup = $v.replicationGroup?.toBuilder();
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
              creationDateTime: creationDateTime,
              globalTableArn: globalTableArn,
              globalTableName: globalTableName,
              globalTableStatus: globalTableStatus,
              replicationGroup: _replicationGroup?.build());
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
