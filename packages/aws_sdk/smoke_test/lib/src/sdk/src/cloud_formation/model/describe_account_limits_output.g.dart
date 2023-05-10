// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_account_limits_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAccountLimitsOutput extends DescribeAccountLimitsOutput {
  @override
  final _i3.BuiltList<_i2.AccountLimit>? accountLimits;
  @override
  final String? nextToken;

  factory _$DescribeAccountLimitsOutput(
          [void Function(DescribeAccountLimitsOutputBuilder)? updates]) =>
      (new DescribeAccountLimitsOutputBuilder()..update(updates))._build();

  _$DescribeAccountLimitsOutput._({this.accountLimits, this.nextToken})
      : super._();

  @override
  DescribeAccountLimitsOutput rebuild(
          void Function(DescribeAccountLimitsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAccountLimitsOutputBuilder toBuilder() =>
      new DescribeAccountLimitsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAccountLimitsOutput &&
        accountLimits == other.accountLimits &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountLimits.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAccountLimitsOutputBuilder
    implements
        Builder<DescribeAccountLimitsOutput,
            DescribeAccountLimitsOutputBuilder> {
  _$DescribeAccountLimitsOutput? _$v;

  _i3.ListBuilder<_i2.AccountLimit>? _accountLimits;
  _i3.ListBuilder<_i2.AccountLimit> get accountLimits =>
      _$this._accountLimits ??= new _i3.ListBuilder<_i2.AccountLimit>();
  set accountLimits(_i3.ListBuilder<_i2.AccountLimit>? accountLimits) =>
      _$this._accountLimits = accountLimits;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAccountLimitsOutputBuilder() {
    DescribeAccountLimitsOutput._init(this);
  }

  DescribeAccountLimitsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountLimits = $v.accountLimits?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAccountLimitsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAccountLimitsOutput;
  }

  @override
  void update(void Function(DescribeAccountLimitsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAccountLimitsOutput build() => _build();

  _$DescribeAccountLimitsOutput _build() {
    _$DescribeAccountLimitsOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeAccountLimitsOutput._(
              accountLimits: _accountLimits?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountLimits';
        _accountLimits?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAccountLimitsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
