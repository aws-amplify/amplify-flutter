// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_multicast_domains_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayMulticastDomainsResult
    extends DescribeTransitGatewayMulticastDomainsResult {
  @override
  final _i2.BuiltList<TransitGatewayMulticastDomain>?
      transitGatewayMulticastDomains;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayMulticastDomainsResult(
          [void Function(DescribeTransitGatewayMulticastDomainsResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayMulticastDomainsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeTransitGatewayMulticastDomainsResult._(
      {this.transitGatewayMulticastDomains, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayMulticastDomainsResult rebuild(
          void Function(DescribeTransitGatewayMulticastDomainsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayMulticastDomainsResultBuilder toBuilder() =>
      new DescribeTransitGatewayMulticastDomainsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayMulticastDomainsResult &&
        transitGatewayMulticastDomains ==
            other.transitGatewayMulticastDomains &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomains.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayMulticastDomainsResultBuilder
    implements
        Builder<DescribeTransitGatewayMulticastDomainsResult,
            DescribeTransitGatewayMulticastDomainsResultBuilder> {
  _$DescribeTransitGatewayMulticastDomainsResult? _$v;

  _i2.ListBuilder<TransitGatewayMulticastDomain>?
      _transitGatewayMulticastDomains;
  _i2.ListBuilder<TransitGatewayMulticastDomain>
      get transitGatewayMulticastDomains =>
          _$this._transitGatewayMulticastDomains ??=
              new _i2.ListBuilder<TransitGatewayMulticastDomain>();
  set transitGatewayMulticastDomains(
          _i2.ListBuilder<TransitGatewayMulticastDomain>?
              transitGatewayMulticastDomains) =>
      _$this._transitGatewayMulticastDomains = transitGatewayMulticastDomains;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayMulticastDomainsResultBuilder();

  DescribeTransitGatewayMulticastDomainsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomains =
          $v.transitGatewayMulticastDomains?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayMulticastDomainsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayMulticastDomainsResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayMulticastDomainsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayMulticastDomainsResult build() => _build();

  _$DescribeTransitGatewayMulticastDomainsResult _build() {
    _$DescribeTransitGatewayMulticastDomainsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayMulticastDomainsResult._(
              transitGatewayMulticastDomains:
                  _transitGatewayMulticastDomains?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayMulticastDomains';
        _transitGatewayMulticastDomains?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayMulticastDomainsResult',
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
