// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_global_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGlobalTableInput extends UpdateGlobalTableInput {
  @override
  final String globalTableName;
  @override
  final _i4.BuiltList<_i3.ReplicaUpdate> replicaUpdates;

  factory _$UpdateGlobalTableInput(
          [void Function(UpdateGlobalTableInputBuilder)? updates]) =>
      (new UpdateGlobalTableInputBuilder()..update(updates))._build();

  _$UpdateGlobalTableInput._(
      {required this.globalTableName, required this.replicaUpdates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        globalTableName, r'UpdateGlobalTableInput', 'globalTableName');
    BuiltValueNullFieldError.checkNotNull(
        replicaUpdates, r'UpdateGlobalTableInput', 'replicaUpdates');
  }

  @override
  UpdateGlobalTableInput rebuild(
          void Function(UpdateGlobalTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGlobalTableInputBuilder toBuilder() =>
      new UpdateGlobalTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGlobalTableInput &&
        globalTableName == other.globalTableName &&
        replicaUpdates == other.replicaUpdates;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, globalTableName.hashCode), replicaUpdates.hashCode));
  }
}

class UpdateGlobalTableInputBuilder
    implements Builder<UpdateGlobalTableInput, UpdateGlobalTableInputBuilder> {
  _$UpdateGlobalTableInput? _$v;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  _i4.ListBuilder<_i3.ReplicaUpdate>? _replicaUpdates;
  _i4.ListBuilder<_i3.ReplicaUpdate> get replicaUpdates =>
      _$this._replicaUpdates ??= new _i4.ListBuilder<_i3.ReplicaUpdate>();
  set replicaUpdates(_i4.ListBuilder<_i3.ReplicaUpdate>? replicaUpdates) =>
      _$this._replicaUpdates = replicaUpdates;

  UpdateGlobalTableInputBuilder() {
    UpdateGlobalTableInput._init(this);
  }

  UpdateGlobalTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _replicaUpdates = $v.replicaUpdates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGlobalTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGlobalTableInput;
  }

  @override
  void update(void Function(UpdateGlobalTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGlobalTableInput build() => _build();

  _$UpdateGlobalTableInput _build() {
    _$UpdateGlobalTableInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateGlobalTableInput._(
              globalTableName: BuiltValueNullFieldError.checkNotNull(
                  globalTableName,
                  r'UpdateGlobalTableInput',
                  'globalTableName'),
              replicaUpdates: replicaUpdates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaUpdates';
        replicaUpdates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGlobalTableInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
