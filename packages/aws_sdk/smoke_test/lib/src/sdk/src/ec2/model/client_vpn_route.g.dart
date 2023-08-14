// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnRoute extends ClientVpnRoute {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? destinationCidr;
  @override
  final String? targetSubnet;
  @override
  final String? type;
  @override
  final String? origin;
  @override
  final ClientVpnRouteStatus? status;
  @override
  final String? description;

  factory _$ClientVpnRoute([void Function(ClientVpnRouteBuilder)? updates]) =>
      (new ClientVpnRouteBuilder()..update(updates))._build();

  _$ClientVpnRoute._(
      {this.clientVpnEndpointId,
      this.destinationCidr,
      this.targetSubnet,
      this.type,
      this.origin,
      this.status,
      this.description})
      : super._();

  @override
  ClientVpnRoute rebuild(void Function(ClientVpnRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnRouteBuilder toBuilder() =>
      new ClientVpnRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnRoute &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        destinationCidr == other.destinationCidr &&
        targetSubnet == other.targetSubnet &&
        type == other.type &&
        origin == other.origin &&
        status == other.status &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, destinationCidr.hashCode);
    _$hash = $jc(_$hash, targetSubnet.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientVpnRouteBuilder
    implements Builder<ClientVpnRoute, ClientVpnRouteBuilder> {
  _$ClientVpnRoute? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _destinationCidr;
  String? get destinationCidr => _$this._destinationCidr;
  set destinationCidr(String? destinationCidr) =>
      _$this._destinationCidr = destinationCidr;

  String? _targetSubnet;
  String? get targetSubnet => _$this._targetSubnet;
  set targetSubnet(String? targetSubnet) => _$this._targetSubnet = targetSubnet;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  ClientVpnRouteStatusBuilder? _status;
  ClientVpnRouteStatusBuilder get status =>
      _$this._status ??= new ClientVpnRouteStatusBuilder();
  set status(ClientVpnRouteStatusBuilder? status) => _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ClientVpnRouteBuilder();

  ClientVpnRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _destinationCidr = $v.destinationCidr;
      _targetSubnet = $v.targetSubnet;
      _type = $v.type;
      _origin = $v.origin;
      _status = $v.status?.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnRoute;
  }

  @override
  void update(void Function(ClientVpnRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnRoute build() => _build();

  _$ClientVpnRoute _build() {
    _$ClientVpnRoute _$result;
    try {
      _$result = _$v ??
          new _$ClientVpnRoute._(
              clientVpnEndpointId: clientVpnEndpointId,
              destinationCidr: destinationCidr,
              targetSubnet: targetSubnet,
              type: type,
              origin: origin,
              status: _status?.build(),
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientVpnRoute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
