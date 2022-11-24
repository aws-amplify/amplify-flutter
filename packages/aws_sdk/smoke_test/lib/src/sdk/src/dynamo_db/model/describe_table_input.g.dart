// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTableInput extends DescribeTableInput {
  @override
  final String tableName;

  factory _$DescribeTableInput(
          [void Function(DescribeTableInputBuilder)? updates]) =>
      (new DescribeTableInputBuilder()..update(updates))._build();

  _$DescribeTableInput._({required this.tableName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeTableInput', 'tableName');
  }

  @override
  DescribeTableInput rebuild(
          void Function(DescribeTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTableInputBuilder toBuilder() =>
      new DescribeTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTableInput && tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tableName.hashCode));
  }
}

class DescribeTableInputBuilder
    implements Builder<DescribeTableInput, DescribeTableInputBuilder> {
  _$DescribeTableInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeTableInputBuilder() {
    DescribeTableInput._init(this);
  }

  DescribeTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTableInput;
  }

  @override
  void update(void Function(DescribeTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTableInput build() => _build();

  _$DescribeTableInput _build() {
    final _$result = _$v ??
        new _$DescribeTableInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DescribeTableInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
