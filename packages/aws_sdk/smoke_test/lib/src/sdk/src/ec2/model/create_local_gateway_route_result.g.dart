// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_local_gateway_route_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteResult extends CreateLocalGatewayRouteResult {
  @override
  final LocalGatewayRoute? route;

  factory _$CreateLocalGatewayRouteResult(
          [void Function(CreateLocalGatewayRouteResultBuilder)? updates]) =>
      (new CreateLocalGatewayRouteResultBuilder()..update(updates))._build();

  _$CreateLocalGatewayRouteResult._({this.route}) : super._();

  @override
  CreateLocalGatewayRouteResult rebuild(
          void Function(CreateLocalGatewayRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteResultBuilder toBuilder() =>
      new CreateLocalGatewayRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLocalGatewayRouteResult && route == other.route;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLocalGatewayRouteResultBuilder
    implements
        Builder<CreateLocalGatewayRouteResult,
            CreateLocalGatewayRouteResultBuilder> {
  _$CreateLocalGatewayRouteResult? _$v;

  LocalGatewayRouteBuilder? _route;
  LocalGatewayRouteBuilder get route =>
      _$this._route ??= new LocalGatewayRouteBuilder();
  set route(LocalGatewayRouteBuilder? route) => _$this._route = route;

  CreateLocalGatewayRouteResultBuilder();

  CreateLocalGatewayRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLocalGatewayRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLocalGatewayRouteResult;
  }

  @override
  void update(void Function(CreateLocalGatewayRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteResult build() => _build();

  _$CreateLocalGatewayRouteResult _build() {
    _$CreateLocalGatewayRouteResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateLocalGatewayRouteResult._(route: _route?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLocalGatewayRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
