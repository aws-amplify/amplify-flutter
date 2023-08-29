// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_transit_gateway_route_table_propagation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableTransitGatewayRouteTablePropagationResult
    extends DisableTransitGatewayRouteTablePropagationResult {
  @override
  final TransitGatewayPropagation? propagation;

  factory _$DisableTransitGatewayRouteTablePropagationResult(
          [void Function(
                  DisableTransitGatewayRouteTablePropagationResultBuilder)?
              updates]) =>
      (new DisableTransitGatewayRouteTablePropagationResultBuilder()
            ..update(updates))
          ._build();

  _$DisableTransitGatewayRouteTablePropagationResult._({this.propagation})
      : super._();

  @override
  DisableTransitGatewayRouteTablePropagationResult rebuild(
          void Function(DisableTransitGatewayRouteTablePropagationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableTransitGatewayRouteTablePropagationResultBuilder toBuilder() =>
      new DisableTransitGatewayRouteTablePropagationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableTransitGatewayRouteTablePropagationResult &&
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

class DisableTransitGatewayRouteTablePropagationResultBuilder
    implements
        Builder<DisableTransitGatewayRouteTablePropagationResult,
            DisableTransitGatewayRouteTablePropagationResultBuilder> {
  _$DisableTransitGatewayRouteTablePropagationResult? _$v;

  TransitGatewayPropagationBuilder? _propagation;
  TransitGatewayPropagationBuilder get propagation =>
      _$this._propagation ??= new TransitGatewayPropagationBuilder();
  set propagation(TransitGatewayPropagationBuilder? propagation) =>
      _$this._propagation = propagation;

  DisableTransitGatewayRouteTablePropagationResultBuilder();

  DisableTransitGatewayRouteTablePropagationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _propagation = $v.propagation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableTransitGatewayRouteTablePropagationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableTransitGatewayRouteTablePropagationResult;
  }

  @override
  void update(
      void Function(DisableTransitGatewayRouteTablePropagationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableTransitGatewayRouteTablePropagationResult build() => _build();

  _$DisableTransitGatewayRouteTablePropagationResult _build() {
    _$DisableTransitGatewayRouteTablePropagationResult _$result;
    try {
      _$result = _$v ??
          new _$DisableTransitGatewayRouteTablePropagationResult._(
              propagation: _propagation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'propagation';
        _propagation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisableTransitGatewayRouteTablePropagationResult',
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
