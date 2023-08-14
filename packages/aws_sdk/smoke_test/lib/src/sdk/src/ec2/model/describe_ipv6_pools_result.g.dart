// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipv6_pools_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpv6PoolsResult extends DescribeIpv6PoolsResult {
  @override
  final _i2.BuiltList<Ipv6Pool>? ipv6Pools;
  @override
  final String? nextToken;

  factory _$DescribeIpv6PoolsResult(
          [void Function(DescribeIpv6PoolsResultBuilder)? updates]) =>
      (new DescribeIpv6PoolsResultBuilder()..update(updates))._build();

  _$DescribeIpv6PoolsResult._({this.ipv6Pools, this.nextToken}) : super._();

  @override
  DescribeIpv6PoolsResult rebuild(
          void Function(DescribeIpv6PoolsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpv6PoolsResultBuilder toBuilder() =>
      new DescribeIpv6PoolsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpv6PoolsResult &&
        ipv6Pools == other.ipv6Pools &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Pools.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpv6PoolsResultBuilder
    implements
        Builder<DescribeIpv6PoolsResult, DescribeIpv6PoolsResultBuilder> {
  _$DescribeIpv6PoolsResult? _$v;

  _i2.ListBuilder<Ipv6Pool>? _ipv6Pools;
  _i2.ListBuilder<Ipv6Pool> get ipv6Pools =>
      _$this._ipv6Pools ??= new _i2.ListBuilder<Ipv6Pool>();
  set ipv6Pools(_i2.ListBuilder<Ipv6Pool>? ipv6Pools) =>
      _$this._ipv6Pools = ipv6Pools;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeIpv6PoolsResultBuilder();

  DescribeIpv6PoolsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Pools = $v.ipv6Pools?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpv6PoolsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpv6PoolsResult;
  }

  @override
  void update(void Function(DescribeIpv6PoolsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpv6PoolsResult build() => _build();

  _$DescribeIpv6PoolsResult _build() {
    _$DescribeIpv6PoolsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpv6PoolsResult._(
              ipv6Pools: _ipv6Pools?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6Pools';
        _ipv6Pools?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpv6PoolsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
