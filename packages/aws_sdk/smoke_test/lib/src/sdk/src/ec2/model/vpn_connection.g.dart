// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_connection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnConnection extends VpnConnection {
  @override
  final String? customerGatewayConfiguration;
  @override
  final String? customerGatewayId;
  @override
  final String? category;
  @override
  final VpnState? state;
  @override
  final GatewayType? type;
  @override
  final String? vpnConnectionId;
  @override
  final String? vpnGatewayId;
  @override
  final String? transitGatewayId;
  @override
  final String? coreNetworkArn;
  @override
  final String? coreNetworkAttachmentArn;
  @override
  final GatewayAssociationState? gatewayAssociationState;
  @override
  final VpnConnectionOptions? options;
  @override
  final _i2.BuiltList<VpnStaticRoute>? routes;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final _i2.BuiltList<VgwTelemetry>? vgwTelemetry;

  factory _$VpnConnection([void Function(VpnConnectionBuilder)? updates]) =>
      (new VpnConnectionBuilder()..update(updates))._build();

  _$VpnConnection._(
      {this.customerGatewayConfiguration,
      this.customerGatewayId,
      this.category,
      this.state,
      this.type,
      this.vpnConnectionId,
      this.vpnGatewayId,
      this.transitGatewayId,
      this.coreNetworkArn,
      this.coreNetworkAttachmentArn,
      this.gatewayAssociationState,
      this.options,
      this.routes,
      this.tags,
      this.vgwTelemetry})
      : super._();

  @override
  VpnConnection rebuild(void Function(VpnConnectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnConnectionBuilder toBuilder() => new VpnConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnConnection &&
        customerGatewayConfiguration == other.customerGatewayConfiguration &&
        customerGatewayId == other.customerGatewayId &&
        category == other.category &&
        state == other.state &&
        type == other.type &&
        vpnConnectionId == other.vpnConnectionId &&
        vpnGatewayId == other.vpnGatewayId &&
        transitGatewayId == other.transitGatewayId &&
        coreNetworkArn == other.coreNetworkArn &&
        coreNetworkAttachmentArn == other.coreNetworkAttachmentArn &&
        gatewayAssociationState == other.gatewayAssociationState &&
        options == other.options &&
        routes == other.routes &&
        tags == other.tags &&
        vgwTelemetry == other.vgwTelemetry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerGatewayConfiguration.hashCode);
    _$hash = $jc(_$hash, customerGatewayId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, vpnGatewayId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, coreNetworkArn.hashCode);
    _$hash = $jc(_$hash, coreNetworkAttachmentArn.hashCode);
    _$hash = $jc(_$hash, gatewayAssociationState.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, routes.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, vgwTelemetry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpnConnectionBuilder
    implements Builder<VpnConnection, VpnConnectionBuilder> {
  _$VpnConnection? _$v;

  String? _customerGatewayConfiguration;
  String? get customerGatewayConfiguration =>
      _$this._customerGatewayConfiguration;
  set customerGatewayConfiguration(String? customerGatewayConfiguration) =>
      _$this._customerGatewayConfiguration = customerGatewayConfiguration;

  String? _customerGatewayId;
  String? get customerGatewayId => _$this._customerGatewayId;
  set customerGatewayId(String? customerGatewayId) =>
      _$this._customerGatewayId = customerGatewayId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  VpnState? _state;
  VpnState? get state => _$this._state;
  set state(VpnState? state) => _$this._state = state;

  GatewayType? _type;
  GatewayType? get type => _$this._type;
  set type(GatewayType? type) => _$this._type = type;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _vpnGatewayId;
  String? get vpnGatewayId => _$this._vpnGatewayId;
  set vpnGatewayId(String? vpnGatewayId) => _$this._vpnGatewayId = vpnGatewayId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _coreNetworkArn;
  String? get coreNetworkArn => _$this._coreNetworkArn;
  set coreNetworkArn(String? coreNetworkArn) =>
      _$this._coreNetworkArn = coreNetworkArn;

  String? _coreNetworkAttachmentArn;
  String? get coreNetworkAttachmentArn => _$this._coreNetworkAttachmentArn;
  set coreNetworkAttachmentArn(String? coreNetworkAttachmentArn) =>
      _$this._coreNetworkAttachmentArn = coreNetworkAttachmentArn;

  GatewayAssociationState? _gatewayAssociationState;
  GatewayAssociationState? get gatewayAssociationState =>
      _$this._gatewayAssociationState;
  set gatewayAssociationState(
          GatewayAssociationState? gatewayAssociationState) =>
      _$this._gatewayAssociationState = gatewayAssociationState;

  VpnConnectionOptionsBuilder? _options;
  VpnConnectionOptionsBuilder get options =>
      _$this._options ??= new VpnConnectionOptionsBuilder();
  set options(VpnConnectionOptionsBuilder? options) =>
      _$this._options = options;

  _i2.ListBuilder<VpnStaticRoute>? _routes;
  _i2.ListBuilder<VpnStaticRoute> get routes =>
      _$this._routes ??= new _i2.ListBuilder<VpnStaticRoute>();
  set routes(_i2.ListBuilder<VpnStaticRoute>? routes) =>
      _$this._routes = routes;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  _i2.ListBuilder<VgwTelemetry>? _vgwTelemetry;
  _i2.ListBuilder<VgwTelemetry> get vgwTelemetry =>
      _$this._vgwTelemetry ??= new _i2.ListBuilder<VgwTelemetry>();
  set vgwTelemetry(_i2.ListBuilder<VgwTelemetry>? vgwTelemetry) =>
      _$this._vgwTelemetry = vgwTelemetry;

  VpnConnectionBuilder();

  VpnConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerGatewayConfiguration = $v.customerGatewayConfiguration;
      _customerGatewayId = $v.customerGatewayId;
      _category = $v.category;
      _state = $v.state;
      _type = $v.type;
      _vpnConnectionId = $v.vpnConnectionId;
      _vpnGatewayId = $v.vpnGatewayId;
      _transitGatewayId = $v.transitGatewayId;
      _coreNetworkArn = $v.coreNetworkArn;
      _coreNetworkAttachmentArn = $v.coreNetworkAttachmentArn;
      _gatewayAssociationState = $v.gatewayAssociationState;
      _options = $v.options?.toBuilder();
      _routes = $v.routes?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _vgwTelemetry = $v.vgwTelemetry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnConnection;
  }

  @override
  void update(void Function(VpnConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnConnection build() => _build();

  _$VpnConnection _build() {
    _$VpnConnection _$result;
    try {
      _$result = _$v ??
          new _$VpnConnection._(
              customerGatewayConfiguration: customerGatewayConfiguration,
              customerGatewayId: customerGatewayId,
              category: category,
              state: state,
              type: type,
              vpnConnectionId: vpnConnectionId,
              vpnGatewayId: vpnGatewayId,
              transitGatewayId: transitGatewayId,
              coreNetworkArn: coreNetworkArn,
              coreNetworkAttachmentArn: coreNetworkAttachmentArn,
              gatewayAssociationState: gatewayAssociationState,
              options: _options?.build(),
              routes: _routes?.build(),
              tags: _tags?.build(),
              vgwTelemetry: _vgwTelemetry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'routes';
        _routes?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'vgwTelemetry';
        _vgwTelemetry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpnConnection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
