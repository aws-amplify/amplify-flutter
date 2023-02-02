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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
