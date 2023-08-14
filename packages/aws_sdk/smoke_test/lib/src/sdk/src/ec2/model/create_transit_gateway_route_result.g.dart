// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_route_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRouteResult
    extends CreateTransitGatewayRouteResult {
  @override
  final TransitGatewayRoute? route;

  factory _$CreateTransitGatewayRouteResult(
          [void Function(CreateTransitGatewayRouteResultBuilder)? updates]) =>
      (new CreateTransitGatewayRouteResultBuilder()..update(updates))._build();

  _$CreateTransitGatewayRouteResult._({this.route}) : super._();

  @override
  CreateTransitGatewayRouteResult rebuild(
          void Function(CreateTransitGatewayRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRouteResultBuilder toBuilder() =>
      new CreateTransitGatewayRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRouteResult && route == other.route;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayRouteResultBuilder
    implements
        Builder<CreateTransitGatewayRouteResult,
            CreateTransitGatewayRouteResultBuilder> {
  _$CreateTransitGatewayRouteResult? _$v;

  TransitGatewayRouteBuilder? _route;
  TransitGatewayRouteBuilder get route =>
      _$this._route ??= new TransitGatewayRouteBuilder();
  set route(TransitGatewayRouteBuilder? route) => _$this._route = route;

  CreateTransitGatewayRouteResultBuilder();

  CreateTransitGatewayRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRouteResult;
  }

  @override
  void update(void Function(CreateTransitGatewayRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRouteResult build() => _build();

  _$CreateTransitGatewayRouteResult _build() {
    _$CreateTransitGatewayRouteResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayRouteResult._(route: _route?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
