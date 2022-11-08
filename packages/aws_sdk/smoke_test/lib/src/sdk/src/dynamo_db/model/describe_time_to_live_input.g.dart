// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_time_to_live_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTimeToLiveInput extends DescribeTimeToLiveInput {
  @override
  final String tableName;

  factory _$DescribeTimeToLiveInput(
          [void Function(DescribeTimeToLiveInputBuilder)? updates]) =>
      (new DescribeTimeToLiveInputBuilder()..update(updates))._build();

  _$DescribeTimeToLiveInput._({required this.tableName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeTimeToLiveInput', 'tableName');
  }

  @override
  DescribeTimeToLiveInput rebuild(
          void Function(DescribeTimeToLiveInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTimeToLiveInputBuilder toBuilder() =>
      new DescribeTimeToLiveInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTimeToLiveInput && tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tableName.hashCode));
  }
}

class DescribeTimeToLiveInputBuilder
    implements
        Builder<DescribeTimeToLiveInput, DescribeTimeToLiveInputBuilder> {
  _$DescribeTimeToLiveInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeTimeToLiveInputBuilder() {
    DescribeTimeToLiveInput._init(this);
  }

  DescribeTimeToLiveInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTimeToLiveInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTimeToLiveInput;
  }

  @override
  void update(void Function(DescribeTimeToLiveInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTimeToLiveInput build() => _build();

  _$DescribeTimeToLiveInput _build() {
    final _$result = _$v ??
        new _$DescribeTimeToLiveInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DescribeTimeToLiveInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
