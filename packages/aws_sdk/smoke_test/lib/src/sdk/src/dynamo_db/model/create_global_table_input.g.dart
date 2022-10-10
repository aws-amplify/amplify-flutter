// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_global_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGlobalTableInput extends CreateGlobalTableInput {
  @override
  final String globalTableName;
  @override
  final _i4.BuiltList<_i3.Replica> replicationGroup;

  factory _$CreateGlobalTableInput(
          [void Function(CreateGlobalTableInputBuilder)? updates]) =>
      (new CreateGlobalTableInputBuilder()..update(updates))._build();

  _$CreateGlobalTableInput._(
      {required this.globalTableName, required this.replicationGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        globalTableName, r'CreateGlobalTableInput', 'globalTableName');
    BuiltValueNullFieldError.checkNotNull(
        replicationGroup, r'CreateGlobalTableInput', 'replicationGroup');
  }

  @override
  CreateGlobalTableInput rebuild(
          void Function(CreateGlobalTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGlobalTableInputBuilder toBuilder() =>
      new CreateGlobalTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGlobalTableInput &&
        globalTableName == other.globalTableName &&
        replicationGroup == other.replicationGroup;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, globalTableName.hashCode), replicationGroup.hashCode));
  }
}

class CreateGlobalTableInputBuilder
    implements Builder<CreateGlobalTableInput, CreateGlobalTableInputBuilder> {
  _$CreateGlobalTableInput? _$v;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  _i4.ListBuilder<_i3.Replica>? _replicationGroup;
  _i4.ListBuilder<_i3.Replica> get replicationGroup =>
      _$this._replicationGroup ??= new _i4.ListBuilder<_i3.Replica>();
  set replicationGroup(_i4.ListBuilder<_i3.Replica>? replicationGroup) =>
      _$this._replicationGroup = replicationGroup;

  CreateGlobalTableInputBuilder() {
    CreateGlobalTableInput._init(this);
  }

  CreateGlobalTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _replicationGroup = $v.replicationGroup.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGlobalTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGlobalTableInput;
  }

  @override
  void update(void Function(CreateGlobalTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGlobalTableInput build() => _build();

  _$CreateGlobalTableInput _build() {
    _$CreateGlobalTableInput _$result;
    try {
      _$result = _$v ??
          new _$CreateGlobalTableInput._(
              globalTableName: BuiltValueNullFieldError.checkNotNull(
                  globalTableName,
                  r'CreateGlobalTableInput',
                  'globalTableName'),
              replicationGroup: replicationGroup.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicationGroup';
        replicationGroup.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateGlobalTableInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
