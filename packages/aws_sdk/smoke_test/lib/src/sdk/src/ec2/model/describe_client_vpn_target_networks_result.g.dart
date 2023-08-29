// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_target_networks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnTargetNetworksResult
    extends DescribeClientVpnTargetNetworksResult {
  @override
  final _i2.BuiltList<TargetNetwork>? clientVpnTargetNetworks;
  @override
  final String? nextToken;

  factory _$DescribeClientVpnTargetNetworksResult(
          [void Function(DescribeClientVpnTargetNetworksResultBuilder)?
              updates]) =>
      (new DescribeClientVpnTargetNetworksResultBuilder()..update(updates))
          ._build();

  _$DescribeClientVpnTargetNetworksResult._(
      {this.clientVpnTargetNetworks, this.nextToken})
      : super._();

  @override
  DescribeClientVpnTargetNetworksResult rebuild(
          void Function(DescribeClientVpnTargetNetworksResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnTargetNetworksResultBuilder toBuilder() =>
      new DescribeClientVpnTargetNetworksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnTargetNetworksResult &&
        clientVpnTargetNetworks == other.clientVpnTargetNetworks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnTargetNetworks.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnTargetNetworksResultBuilder
    implements
        Builder<DescribeClientVpnTargetNetworksResult,
            DescribeClientVpnTargetNetworksResultBuilder> {
  _$DescribeClientVpnTargetNetworksResult? _$v;

  _i2.ListBuilder<TargetNetwork>? _clientVpnTargetNetworks;
  _i2.ListBuilder<TargetNetwork> get clientVpnTargetNetworks =>
      _$this._clientVpnTargetNetworks ??= new _i2.ListBuilder<TargetNetwork>();
  set clientVpnTargetNetworks(
          _i2.ListBuilder<TargetNetwork>? clientVpnTargetNetworks) =>
      _$this._clientVpnTargetNetworks = clientVpnTargetNetworks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeClientVpnTargetNetworksResultBuilder();

  DescribeClientVpnTargetNetworksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnTargetNetworks = $v.clientVpnTargetNetworks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnTargetNetworksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnTargetNetworksResult;
  }

  @override
  void update(
      void Function(DescribeClientVpnTargetNetworksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnTargetNetworksResult build() => _build();

  _$DescribeClientVpnTargetNetworksResult _build() {
    _$DescribeClientVpnTargetNetworksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnTargetNetworksResult._(
              clientVpnTargetNetworks: _clientVpnTargetNetworks?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientVpnTargetNetworks';
        _clientVpnTargetNetworks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnTargetNetworksResult',
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
