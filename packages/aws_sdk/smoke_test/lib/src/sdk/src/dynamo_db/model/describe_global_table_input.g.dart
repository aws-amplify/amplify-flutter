// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_global_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeGlobalTableInput extends DescribeGlobalTableInput {
  @override
  final String globalTableName;

  factory _$DescribeGlobalTableInput(
          [void Function(DescribeGlobalTableInputBuilder)? updates]) =>
      (new DescribeGlobalTableInputBuilder()..update(updates))._build();

  _$DescribeGlobalTableInput._({required this.globalTableName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        globalTableName, r'DescribeGlobalTableInput', 'globalTableName');
  }

  @override
  DescribeGlobalTableInput rebuild(
          void Function(DescribeGlobalTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeGlobalTableInputBuilder toBuilder() =>
      new DescribeGlobalTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeGlobalTableInput &&
        globalTableName == other.globalTableName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, globalTableName.hashCode));
  }
}

class DescribeGlobalTableInputBuilder
    implements
        Builder<DescribeGlobalTableInput, DescribeGlobalTableInputBuilder> {
  _$DescribeGlobalTableInput? _$v;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  DescribeGlobalTableInputBuilder() {
    DescribeGlobalTableInput._init(this);
  }

  DescribeGlobalTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeGlobalTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeGlobalTableInput;
  }

  @override
  void update(void Function(DescribeGlobalTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeGlobalTableInput build() => _build();

  _$DescribeGlobalTableInput _build() {
    final _$result = _$v ??
        new _$DescribeGlobalTableInput._(
            globalTableName: BuiltValueNullFieldError.checkNotNull(
                globalTableName,
                r'DescribeGlobalTableInput',
                'globalTableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
