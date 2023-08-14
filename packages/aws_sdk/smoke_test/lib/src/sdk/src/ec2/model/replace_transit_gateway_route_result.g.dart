// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_transit_gateway_route_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceTransitGatewayRouteResult
    extends ReplaceTransitGatewayRouteResult {
  @override
  final TransitGatewayRoute? route;

  factory _$ReplaceTransitGatewayRouteResult(
          [void Function(ReplaceTransitGatewayRouteResultBuilder)? updates]) =>
      (new ReplaceTransitGatewayRouteResultBuilder()..update(updates))._build();

  _$ReplaceTransitGatewayRouteResult._({this.route}) : super._();

  @override
  ReplaceTransitGatewayRouteResult rebuild(
          void Function(ReplaceTransitGatewayRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceTransitGatewayRouteResultBuilder toBuilder() =>
      new ReplaceTransitGatewayRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceTransitGatewayRouteResult && route == other.route;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceTransitGatewayRouteResultBuilder
    implements
        Builder<ReplaceTransitGatewayRouteResult,
            ReplaceTransitGatewayRouteResultBuilder> {
  _$ReplaceTransitGatewayRouteResult? _$v;

  TransitGatewayRouteBuilder? _route;
  TransitGatewayRouteBuilder get route =>
      _$this._route ??= new TransitGatewayRouteBuilder();
  set route(TransitGatewayRouteBuilder? route) => _$this._route = route;

  ReplaceTransitGatewayRouteResultBuilder();

  ReplaceTransitGatewayRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceTransitGatewayRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceTransitGatewayRouteResult;
  }

  @override
  void update(void Function(ReplaceTransitGatewayRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceTransitGatewayRouteResult build() => _build();

  _$ReplaceTransitGatewayRouteResult _build() {
    _$ReplaceTransitGatewayRouteResult _$result;
    try {
      _$result = _$v ??
          new _$ReplaceTransitGatewayRouteResult._(route: _route?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplaceTransitGatewayRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
