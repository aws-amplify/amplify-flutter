// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_account_limits_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAccountLimitsInput extends DescribeAccountLimitsInput {
  @override
  final String? nextToken;

  factory _$DescribeAccountLimitsInput(
          [void Function(DescribeAccountLimitsInputBuilder)? updates]) =>
      (new DescribeAccountLimitsInputBuilder()..update(updates))._build();

  _$DescribeAccountLimitsInput._({this.nextToken}) : super._();

  @override
  DescribeAccountLimitsInput rebuild(
          void Function(DescribeAccountLimitsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAccountLimitsInputBuilder toBuilder() =>
      new DescribeAccountLimitsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAccountLimitsInput && nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAccountLimitsInputBuilder
    implements
        Builder<DescribeAccountLimitsInput, DescribeAccountLimitsInputBuilder> {
  _$DescribeAccountLimitsInput? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAccountLimitsInputBuilder() {
    DescribeAccountLimitsInput._init(this);
  }

  DescribeAccountLimitsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAccountLimitsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAccountLimitsInput;
  }

  @override
  void update(void Function(DescribeAccountLimitsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAccountLimitsInput build() => _build();

  _$DescribeAccountLimitsInput _build() {
    final _$result =
        _$v ?? new _$DescribeAccountLimitsInput._(nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
