// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_route_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayRouteResult
    extends DeleteTransitGatewayRouteResult {
  @override
  final TransitGatewayRoute? route;

  factory _$DeleteTransitGatewayRouteResult(
          [void Function(DeleteTransitGatewayRouteResultBuilder)? updates]) =>
      (new DeleteTransitGatewayRouteResultBuilder()..update(updates))._build();

  _$DeleteTransitGatewayRouteResult._({this.route}) : super._();

  @override
  DeleteTransitGatewayRouteResult rebuild(
          void Function(DeleteTransitGatewayRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayRouteResultBuilder toBuilder() =>
      new DeleteTransitGatewayRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayRouteResult && route == other.route;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayRouteResultBuilder
    implements
        Builder<DeleteTransitGatewayRouteResult,
            DeleteTransitGatewayRouteResultBuilder> {
  _$DeleteTransitGatewayRouteResult? _$v;

  TransitGatewayRouteBuilder? _route;
  TransitGatewayRouteBuilder get route =>
      _$this._route ??= new TransitGatewayRouteBuilder();
  set route(TransitGatewayRouteBuilder? route) => _$this._route = route;

  DeleteTransitGatewayRouteResultBuilder();

  DeleteTransitGatewayRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayRouteResult;
  }

  @override
  void update(void Function(DeleteTransitGatewayRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayRouteResult build() => _build();

  _$DeleteTransitGatewayRouteResult _build() {
    _$DeleteTransitGatewayRouteResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayRouteResult._(route: _route?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
