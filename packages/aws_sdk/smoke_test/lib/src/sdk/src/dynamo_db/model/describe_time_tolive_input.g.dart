// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_time_tolive_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTimeToliveInput extends DescribeTimeToliveInput {
  @override
  final String tableName;

  factory _$DescribeTimeToliveInput(
          [void Function(DescribeTimeToliveInputBuilder)? updates]) =>
      (new DescribeTimeToliveInputBuilder()..update(updates))._build();

  _$DescribeTimeToliveInput._({required this.tableName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeTimeToliveInput', 'tableName');
  }

  @override
  DescribeTimeToliveInput rebuild(
          void Function(DescribeTimeToliveInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTimeToliveInputBuilder toBuilder() =>
      new DescribeTimeToliveInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTimeToliveInput && tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tableName.hashCode));
  }
}

class DescribeTimeToliveInputBuilder
    implements
        Builder<DescribeTimeToliveInput, DescribeTimeToliveInputBuilder> {
  _$DescribeTimeToliveInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeTimeToliveInputBuilder() {
    DescribeTimeToliveInput._init(this);
  }

  DescribeTimeToliveInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTimeToliveInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTimeToliveInput;
  }

  @override
  void update(void Function(DescribeTimeToliveInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTimeToliveInput build() => _build();

  _$DescribeTimeToliveInput _build() {
    final _$result = _$v ??
        new _$DescribeTimeToliveInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DescribeTimeToliveInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
