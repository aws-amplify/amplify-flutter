// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_connections_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnConnectionsResult
    extends DescribeClientVpnConnectionsResult {
  @override
  final _i2.BuiltList<ClientVpnConnection>? connections;
  @override
  final String? nextToken;

  factory _$DescribeClientVpnConnectionsResult(
          [void Function(DescribeClientVpnConnectionsResultBuilder)?
              updates]) =>
      (new DescribeClientVpnConnectionsResultBuilder()..update(updates))
          ._build();

  _$DescribeClientVpnConnectionsResult._({this.connections, this.nextToken})
      : super._();

  @override
  DescribeClientVpnConnectionsResult rebuild(
          void Function(DescribeClientVpnConnectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnConnectionsResultBuilder toBuilder() =>
      new DescribeClientVpnConnectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnConnectionsResult &&
        connections == other.connections &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connections.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnConnectionsResultBuilder
    implements
        Builder<DescribeClientVpnConnectionsResult,
            DescribeClientVpnConnectionsResultBuilder> {
  _$DescribeClientVpnConnectionsResult? _$v;

  _i2.ListBuilder<ClientVpnConnection>? _connections;
  _i2.ListBuilder<ClientVpnConnection> get connections =>
      _$this._connections ??= new _i2.ListBuilder<ClientVpnConnection>();
  set connections(_i2.ListBuilder<ClientVpnConnection>? connections) =>
      _$this._connections = connections;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeClientVpnConnectionsResultBuilder();

  DescribeClientVpnConnectionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connections = $v.connections?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnConnectionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnConnectionsResult;
  }

  @override
  void update(
      void Function(DescribeClientVpnConnectionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnConnectionsResult build() => _build();

  _$DescribeClientVpnConnectionsResult _build() {
    _$DescribeClientVpnConnectionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnConnectionsResult._(
              connections: _connections?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connections';
        _connections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnConnectionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
