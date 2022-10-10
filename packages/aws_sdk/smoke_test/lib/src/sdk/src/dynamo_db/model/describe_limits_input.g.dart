// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_limits_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLimitsInput extends DescribeLimitsInput {
  factory _$DescribeLimitsInput(
          [void Function(DescribeLimitsInputBuilder)? updates]) =>
      (new DescribeLimitsInputBuilder()..update(updates))._build();

  _$DescribeLimitsInput._() : super._();

  @override
  DescribeLimitsInput rebuild(
          void Function(DescribeLimitsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLimitsInputBuilder toBuilder() =>
      new DescribeLimitsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLimitsInput;
  }

  @override
  int get hashCode {
    return 210719222;
  }
}

class DescribeLimitsInputBuilder
    implements Builder<DescribeLimitsInput, DescribeLimitsInputBuilder> {
  _$DescribeLimitsInput? _$v;

  DescribeLimitsInputBuilder() {
    DescribeLimitsInput._init(this);
  }

  @override
  void replace(DescribeLimitsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLimitsInput;
  }

  @override
  void update(void Function(DescribeLimitsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLimitsInput build() => _build();

  _$DescribeLimitsInput _build() {
    final _$result = _$v ?? new _$DescribeLimitsInput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
