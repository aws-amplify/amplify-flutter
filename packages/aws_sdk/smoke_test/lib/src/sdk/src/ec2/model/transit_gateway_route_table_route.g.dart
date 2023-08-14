// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_route_table_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRouteTableRoute extends TransitGatewayRouteTableRoute {
  @override
  final String? destinationCidr;
  @override
  final String? state;
  @override
  final String? routeOrigin;
  @override
  final String? prefixListId;
  @override
  final String? attachmentId;
  @override
  final String? resourceId;
  @override
  final String? resourceType;

  factory _$TransitGatewayRouteTableRoute(
          [void Function(TransitGatewayRouteTableRouteBuilder)? updates]) =>
      (new TransitGatewayRouteTableRouteBuilder()..update(updates))._build();

  _$TransitGatewayRouteTableRoute._(
      {this.destinationCidr,
      this.state,
      this.routeOrigin,
      this.prefixListId,
      this.attachmentId,
      this.resourceId,
      this.resourceType})
      : super._();

  @override
  TransitGatewayRouteTableRoute rebuild(
          void Function(TransitGatewayRouteTableRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRouteTableRouteBuilder toBuilder() =>
      new TransitGatewayRouteTableRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRouteTableRoute &&
        destinationCidr == other.destinationCidr &&
        state == other.state &&
        routeOrigin == other.routeOrigin &&
        prefixListId == other.prefixListId &&
        attachmentId == other.attachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidr.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, routeOrigin.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, attachmentId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRouteTableRouteBuilder
    implements
        Builder<TransitGatewayRouteTableRoute,
            TransitGatewayRouteTableRouteBuilder> {
  _$TransitGatewayRouteTableRoute? _$v;

  String? _destinationCidr;
  String? get destinationCidr => _$this._destinationCidr;
  set destinationCidr(String? destinationCidr) =>
      _$this._destinationCidr = destinationCidr;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _routeOrigin;
  String? get routeOrigin => _$this._routeOrigin;
  set routeOrigin(String? routeOrigin) => _$this._routeOrigin = routeOrigin;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _attachmentId;
  String? get attachmentId => _$this._attachmentId;
  set attachmentId(String? attachmentId) => _$this._attachmentId = attachmentId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  TransitGatewayRouteTableRouteBuilder();

  TransitGatewayRouteTableRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidr = $v.destinationCidr;
      _state = $v.state;
      _routeOrigin = $v.routeOrigin;
      _prefixListId = $v.prefixListId;
      _attachmentId = $v.attachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRouteTableRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRouteTableRoute;
  }

  @override
  void update(void Function(TransitGatewayRouteTableRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRouteTableRoute build() => _build();

  _$TransitGatewayRouteTableRoute _build() {
    final _$result = _$v ??
        new _$TransitGatewayRouteTableRoute._(
            destinationCidr: destinationCidr,
            state: state,
            routeOrigin: routeOrigin,
            prefixListId: prefixListId,
            attachmentId: attachmentId,
            resourceId: resourceId,
            resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
