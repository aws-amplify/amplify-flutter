// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_public_ipv4_pools_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePublicIpv4PoolsResult extends DescribePublicIpv4PoolsResult {
  @override
  final _i2.BuiltList<PublicIpv4Pool>? publicIpv4Pools;
  @override
  final String? nextToken;

  factory _$DescribePublicIpv4PoolsResult(
          [void Function(DescribePublicIpv4PoolsResultBuilder)? updates]) =>
      (new DescribePublicIpv4PoolsResultBuilder()..update(updates))._build();

  _$DescribePublicIpv4PoolsResult._({this.publicIpv4Pools, this.nextToken})
      : super._();

  @override
  DescribePublicIpv4PoolsResult rebuild(
          void Function(DescribePublicIpv4PoolsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePublicIpv4PoolsResultBuilder toBuilder() =>
      new DescribePublicIpv4PoolsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePublicIpv4PoolsResult &&
        publicIpv4Pools == other.publicIpv4Pools &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicIpv4Pools.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePublicIpv4PoolsResultBuilder
    implements
        Builder<DescribePublicIpv4PoolsResult,
            DescribePublicIpv4PoolsResultBuilder> {
  _$DescribePublicIpv4PoolsResult? _$v;

  _i2.ListBuilder<PublicIpv4Pool>? _publicIpv4Pools;
  _i2.ListBuilder<PublicIpv4Pool> get publicIpv4Pools =>
      _$this._publicIpv4Pools ??= new _i2.ListBuilder<PublicIpv4Pool>();
  set publicIpv4Pools(_i2.ListBuilder<PublicIpv4Pool>? publicIpv4Pools) =>
      _$this._publicIpv4Pools = publicIpv4Pools;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribePublicIpv4PoolsResultBuilder();

  DescribePublicIpv4PoolsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicIpv4Pools = $v.publicIpv4Pools?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePublicIpv4PoolsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePublicIpv4PoolsResult;
  }

  @override
  void update(void Function(DescribePublicIpv4PoolsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePublicIpv4PoolsResult build() => _build();

  _$DescribePublicIpv4PoolsResult _build() {
    _$DescribePublicIpv4PoolsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribePublicIpv4PoolsResult._(
              publicIpv4Pools: _publicIpv4Pools?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publicIpv4Pools';
        _publicIpv4Pools?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribePublicIpv4PoolsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
