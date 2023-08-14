// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpn_connections_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpnConnectionsResult extends DescribeVpnConnectionsResult {
  @override
  final _i2.BuiltList<VpnConnection>? vpnConnections;

  factory _$DescribeVpnConnectionsResult(
          [void Function(DescribeVpnConnectionsResultBuilder)? updates]) =>
      (new DescribeVpnConnectionsResultBuilder()..update(updates))._build();

  _$DescribeVpnConnectionsResult._({this.vpnConnections}) : super._();

  @override
  DescribeVpnConnectionsResult rebuild(
          void Function(DescribeVpnConnectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpnConnectionsResultBuilder toBuilder() =>
      new DescribeVpnConnectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpnConnectionsResult &&
        vpnConnections == other.vpnConnections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpnConnectionsResultBuilder
    implements
        Builder<DescribeVpnConnectionsResult,
            DescribeVpnConnectionsResultBuilder> {
  _$DescribeVpnConnectionsResult? _$v;

  _i2.ListBuilder<VpnConnection>? _vpnConnections;
  _i2.ListBuilder<VpnConnection> get vpnConnections =>
      _$this._vpnConnections ??= new _i2.ListBuilder<VpnConnection>();
  set vpnConnections(_i2.ListBuilder<VpnConnection>? vpnConnections) =>
      _$this._vpnConnections = vpnConnections;

  DescribeVpnConnectionsResultBuilder();

  DescribeVpnConnectionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnections = $v.vpnConnections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpnConnectionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpnConnectionsResult;
  }

  @override
  void update(void Function(DescribeVpnConnectionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpnConnectionsResult build() => _build();

  _$DescribeVpnConnectionsResult _build() {
    _$DescribeVpnConnectionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpnConnectionsResult._(
              vpnConnections: _vpnConnections?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnConnections';
        _vpnConnections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpnConnectionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
