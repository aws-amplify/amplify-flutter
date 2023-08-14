// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_transit_gateway_route_table_propagation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableTransitGatewayRouteTablePropagationResult
    extends EnableTransitGatewayRouteTablePropagationResult {
  @override
  final TransitGatewayPropagation? propagation;

  factory _$EnableTransitGatewayRouteTablePropagationResult(
          [void Function(
                  EnableTransitGatewayRouteTablePropagationResultBuilder)?
              updates]) =>
      (new EnableTransitGatewayRouteTablePropagationResultBuilder()
            ..update(updates))
          ._build();

  _$EnableTransitGatewayRouteTablePropagationResult._({this.propagation})
      : super._();

  @override
  EnableTransitGatewayRouteTablePropagationResult rebuild(
          void Function(EnableTransitGatewayRouteTablePropagationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableTransitGatewayRouteTablePropagationResultBuilder toBuilder() =>
      new EnableTransitGatewayRouteTablePropagationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableTransitGatewayRouteTablePropagationResult &&
        propagation == other.propagation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, propagation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableTransitGatewayRouteTablePropagationResultBuilder
    implements
        Builder<EnableTransitGatewayRouteTablePropagationResult,
            EnableTransitGatewayRouteTablePropagationResultBuilder> {
  _$EnableTransitGatewayRouteTablePropagationResult? _$v;

  TransitGatewayPropagationBuilder? _propagation;
  TransitGatewayPropagationBuilder get propagation =>
      _$this._propagation ??= new TransitGatewayPropagationBuilder();
  set propagation(TransitGatewayPropagationBuilder? propagation) =>
      _$this._propagation = propagation;

  EnableTransitGatewayRouteTablePropagationResultBuilder();

  EnableTransitGatewayRouteTablePropagationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _propagation = $v.propagation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableTransitGatewayRouteTablePropagationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableTransitGatewayRouteTablePropagationResult;
  }

  @override
  void update(
      void Function(EnableTransitGatewayRouteTablePropagationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableTransitGatewayRouteTablePropagationResult build() => _build();

  _$EnableTransitGatewayRouteTablePropagationResult _build() {
    _$EnableTransitGatewayRouteTablePropagationResult _$result;
    try {
      _$result = _$v ??
          new _$EnableTransitGatewayRouteTablePropagationResult._(
              propagation: _propagation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'propagation';
        _propagation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnableTransitGatewayRouteTablePropagationResult',
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
