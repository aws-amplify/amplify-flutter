// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_resource_discoveries_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamResourceDiscoveriesResult
    extends DescribeIpamResourceDiscoveriesResult {
  @override
  final _i2.BuiltList<IpamResourceDiscovery>? ipamResourceDiscoveries;
  @override
  final String? nextToken;

  factory _$DescribeIpamResourceDiscoveriesResult(
          [void Function(DescribeIpamResourceDiscoveriesResultBuilder)?
              updates]) =>
      (new DescribeIpamResourceDiscoveriesResultBuilder()..update(updates))
          ._build();

  _$DescribeIpamResourceDiscoveriesResult._(
      {this.ipamResourceDiscoveries, this.nextToken})
      : super._();

  @override
  DescribeIpamResourceDiscoveriesResult rebuild(
          void Function(DescribeIpamResourceDiscoveriesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamResourceDiscoveriesResultBuilder toBuilder() =>
      new DescribeIpamResourceDiscoveriesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamResourceDiscoveriesResult &&
        ipamResourceDiscoveries == other.ipamResourceDiscoveries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamResourceDiscoveries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamResourceDiscoveriesResultBuilder
    implements
        Builder<DescribeIpamResourceDiscoveriesResult,
            DescribeIpamResourceDiscoveriesResultBuilder> {
  _$DescribeIpamResourceDiscoveriesResult? _$v;

  _i2.ListBuilder<IpamResourceDiscovery>? _ipamResourceDiscoveries;
  _i2.ListBuilder<IpamResourceDiscovery> get ipamResourceDiscoveries =>
      _$this._ipamResourceDiscoveries ??=
          new _i2.ListBuilder<IpamResourceDiscovery>();
  set ipamResourceDiscoveries(
          _i2.ListBuilder<IpamResourceDiscovery>? ipamResourceDiscoveries) =>
      _$this._ipamResourceDiscoveries = ipamResourceDiscoveries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeIpamResourceDiscoveriesResultBuilder();

  DescribeIpamResourceDiscoveriesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscoveries = $v.ipamResourceDiscoveries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamResourceDiscoveriesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamResourceDiscoveriesResult;
  }

  @override
  void update(
      void Function(DescribeIpamResourceDiscoveriesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamResourceDiscoveriesResult build() => _build();

  _$DescribeIpamResourceDiscoveriesResult _build() {
    _$DescribeIpamResourceDiscoveriesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamResourceDiscoveriesResult._(
              ipamResourceDiscoveries: _ipamResourceDiscoveries?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscoveries';
        _ipamResourceDiscoveries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamResourceDiscoveriesResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
