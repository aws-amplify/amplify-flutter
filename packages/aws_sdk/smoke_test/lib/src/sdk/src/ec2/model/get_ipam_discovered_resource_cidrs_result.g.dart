// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_discovered_resource_cidrs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamDiscoveredResourceCidrsResult
    extends GetIpamDiscoveredResourceCidrsResult {
  @override
  final _i2.BuiltList<IpamDiscoveredResourceCidr>? ipamDiscoveredResourceCidrs;
  @override
  final String? nextToken;

  factory _$GetIpamDiscoveredResourceCidrsResult(
          [void Function(GetIpamDiscoveredResourceCidrsResultBuilder)?
              updates]) =>
      (new GetIpamDiscoveredResourceCidrsResultBuilder()..update(updates))
          ._build();

  _$GetIpamDiscoveredResourceCidrsResult._(
      {this.ipamDiscoveredResourceCidrs, this.nextToken})
      : super._();

  @override
  GetIpamDiscoveredResourceCidrsResult rebuild(
          void Function(GetIpamDiscoveredResourceCidrsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamDiscoveredResourceCidrsResultBuilder toBuilder() =>
      new GetIpamDiscoveredResourceCidrsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamDiscoveredResourceCidrsResult &&
        ipamDiscoveredResourceCidrs == other.ipamDiscoveredResourceCidrs &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamDiscoveredResourceCidrs.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamDiscoveredResourceCidrsResultBuilder
    implements
        Builder<GetIpamDiscoveredResourceCidrsResult,
            GetIpamDiscoveredResourceCidrsResultBuilder> {
  _$GetIpamDiscoveredResourceCidrsResult? _$v;

  _i2.ListBuilder<IpamDiscoveredResourceCidr>? _ipamDiscoveredResourceCidrs;
  _i2.ListBuilder<IpamDiscoveredResourceCidr> get ipamDiscoveredResourceCidrs =>
      _$this._ipamDiscoveredResourceCidrs ??=
          new _i2.ListBuilder<IpamDiscoveredResourceCidr>();
  set ipamDiscoveredResourceCidrs(
          _i2.ListBuilder<IpamDiscoveredResourceCidr>?
              ipamDiscoveredResourceCidrs) =>
      _$this._ipamDiscoveredResourceCidrs = ipamDiscoveredResourceCidrs;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetIpamDiscoveredResourceCidrsResultBuilder();

  GetIpamDiscoveredResourceCidrsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamDiscoveredResourceCidrs =
          $v.ipamDiscoveredResourceCidrs?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamDiscoveredResourceCidrsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamDiscoveredResourceCidrsResult;
  }

  @override
  void update(
      void Function(GetIpamDiscoveredResourceCidrsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamDiscoveredResourceCidrsResult build() => _build();

  _$GetIpamDiscoveredResourceCidrsResult _build() {
    _$GetIpamDiscoveredResourceCidrsResult _$result;
    try {
      _$result = _$v ??
          new _$GetIpamDiscoveredResourceCidrsResult._(
              ipamDiscoveredResourceCidrs:
                  _ipamDiscoveredResourceCidrs?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamDiscoveredResourceCidrs';
        _ipamDiscoveredResourceCidrs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamDiscoveredResourceCidrsResult',
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
