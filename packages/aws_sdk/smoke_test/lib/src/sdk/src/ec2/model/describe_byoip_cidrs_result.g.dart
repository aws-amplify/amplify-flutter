// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_byoip_cidrs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeByoipCidrsResult extends DescribeByoipCidrsResult {
  @override
  final _i2.BuiltList<ByoipCidr>? byoipCidrs;
  @override
  final String? nextToken;

  factory _$DescribeByoipCidrsResult(
          [void Function(DescribeByoipCidrsResultBuilder)? updates]) =>
      (new DescribeByoipCidrsResultBuilder()..update(updates))._build();

  _$DescribeByoipCidrsResult._({this.byoipCidrs, this.nextToken}) : super._();

  @override
  DescribeByoipCidrsResult rebuild(
          void Function(DescribeByoipCidrsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeByoipCidrsResultBuilder toBuilder() =>
      new DescribeByoipCidrsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeByoipCidrsResult &&
        byoipCidrs == other.byoipCidrs &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byoipCidrs.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeByoipCidrsResultBuilder
    implements
        Builder<DescribeByoipCidrsResult, DescribeByoipCidrsResultBuilder> {
  _$DescribeByoipCidrsResult? _$v;

  _i2.ListBuilder<ByoipCidr>? _byoipCidrs;
  _i2.ListBuilder<ByoipCidr> get byoipCidrs =>
      _$this._byoipCidrs ??= new _i2.ListBuilder<ByoipCidr>();
  set byoipCidrs(_i2.ListBuilder<ByoipCidr>? byoipCidrs) =>
      _$this._byoipCidrs = byoipCidrs;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeByoipCidrsResultBuilder();

  DescribeByoipCidrsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byoipCidrs = $v.byoipCidrs?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeByoipCidrsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeByoipCidrsResult;
  }

  @override
  void update(void Function(DescribeByoipCidrsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeByoipCidrsResult build() => _build();

  _$DescribeByoipCidrsResult _build() {
    _$DescribeByoipCidrsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeByoipCidrsResult._(
              byoipCidrs: _byoipCidrs?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byoipCidrs';
        _byoipCidrs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeByoipCidrsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
