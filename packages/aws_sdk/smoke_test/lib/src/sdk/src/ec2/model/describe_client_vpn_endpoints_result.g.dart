// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_endpoints_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnEndpointsResult
    extends DescribeClientVpnEndpointsResult {
  @override
  final _i2.BuiltList<ClientVpnEndpoint>? clientVpnEndpoints;
  @override
  final String? nextToken;

  factory _$DescribeClientVpnEndpointsResult(
          [void Function(DescribeClientVpnEndpointsResultBuilder)? updates]) =>
      (new DescribeClientVpnEndpointsResultBuilder()..update(updates))._build();

  _$DescribeClientVpnEndpointsResult._(
      {this.clientVpnEndpoints, this.nextToken})
      : super._();

  @override
  DescribeClientVpnEndpointsResult rebuild(
          void Function(DescribeClientVpnEndpointsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnEndpointsResultBuilder toBuilder() =>
      new DescribeClientVpnEndpointsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnEndpointsResult &&
        clientVpnEndpoints == other.clientVpnEndpoints &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpoints.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnEndpointsResultBuilder
    implements
        Builder<DescribeClientVpnEndpointsResult,
            DescribeClientVpnEndpointsResultBuilder> {
  _$DescribeClientVpnEndpointsResult? _$v;

  _i2.ListBuilder<ClientVpnEndpoint>? _clientVpnEndpoints;
  _i2.ListBuilder<ClientVpnEndpoint> get clientVpnEndpoints =>
      _$this._clientVpnEndpoints ??= new _i2.ListBuilder<ClientVpnEndpoint>();
  set clientVpnEndpoints(
          _i2.ListBuilder<ClientVpnEndpoint>? clientVpnEndpoints) =>
      _$this._clientVpnEndpoints = clientVpnEndpoints;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeClientVpnEndpointsResultBuilder();

  DescribeClientVpnEndpointsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpoints = $v.clientVpnEndpoints?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnEndpointsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnEndpointsResult;
  }

  @override
  void update(void Function(DescribeClientVpnEndpointsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnEndpointsResult build() => _build();

  _$DescribeClientVpnEndpointsResult _build() {
    _$DescribeClientVpnEndpointsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnEndpointsResult._(
              clientVpnEndpoints: _clientVpnEndpoints?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientVpnEndpoints';
        _clientVpnEndpoints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnEndpointsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
