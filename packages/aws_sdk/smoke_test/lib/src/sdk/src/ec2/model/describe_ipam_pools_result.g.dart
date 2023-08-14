// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_pools_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamPoolsResult extends DescribeIpamPoolsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<IpamPool>? ipamPools;

  factory _$DescribeIpamPoolsResult(
          [void Function(DescribeIpamPoolsResultBuilder)? updates]) =>
      (new DescribeIpamPoolsResultBuilder()..update(updates))._build();

  _$DescribeIpamPoolsResult._({this.nextToken, this.ipamPools}) : super._();

  @override
  DescribeIpamPoolsResult rebuild(
          void Function(DescribeIpamPoolsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamPoolsResultBuilder toBuilder() =>
      new DescribeIpamPoolsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamPoolsResult &&
        nextToken == other.nextToken &&
        ipamPools == other.ipamPools;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipamPools.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamPoolsResultBuilder
    implements
        Builder<DescribeIpamPoolsResult, DescribeIpamPoolsResultBuilder> {
  _$DescribeIpamPoolsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<IpamPool>? _ipamPools;
  _i2.ListBuilder<IpamPool> get ipamPools =>
      _$this._ipamPools ??= new _i2.ListBuilder<IpamPool>();
  set ipamPools(_i2.ListBuilder<IpamPool>? ipamPools) =>
      _$this._ipamPools = ipamPools;

  DescribeIpamPoolsResultBuilder();

  DescribeIpamPoolsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _ipamPools = $v.ipamPools?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamPoolsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamPoolsResult;
  }

  @override
  void update(void Function(DescribeIpamPoolsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamPoolsResult build() => _build();

  _$DescribeIpamPoolsResult _build() {
    _$DescribeIpamPoolsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamPoolsResult._(
              nextToken: nextToken, ipamPools: _ipamPools?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPools';
        _ipamPools?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamPoolsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
