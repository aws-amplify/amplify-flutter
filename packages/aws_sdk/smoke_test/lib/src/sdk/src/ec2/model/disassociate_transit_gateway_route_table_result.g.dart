// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_transit_gateway_route_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTransitGatewayRouteTableResult
    extends DisassociateTransitGatewayRouteTableResult {
  @override
  final TransitGatewayAssociation? association;

  factory _$DisassociateTransitGatewayRouteTableResult(
          [void Function(DisassociateTransitGatewayRouteTableResultBuilder)?
              updates]) =>
      (new DisassociateTransitGatewayRouteTableResultBuilder()..update(updates))
          ._build();

  _$DisassociateTransitGatewayRouteTableResult._({this.association})
      : super._();

  @override
  DisassociateTransitGatewayRouteTableResult rebuild(
          void Function(DisassociateTransitGatewayRouteTableResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTransitGatewayRouteTableResultBuilder toBuilder() =>
      new DisassociateTransitGatewayRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTransitGatewayRouteTableResult &&
        association == other.association;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, association.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateTransitGatewayRouteTableResultBuilder
    implements
        Builder<DisassociateTransitGatewayRouteTableResult,
            DisassociateTransitGatewayRouteTableResultBuilder> {
  _$DisassociateTransitGatewayRouteTableResult? _$v;

  TransitGatewayAssociationBuilder? _association;
  TransitGatewayAssociationBuilder get association =>
      _$this._association ??= new TransitGatewayAssociationBuilder();
  set association(TransitGatewayAssociationBuilder? association) =>
      _$this._association = association;

  DisassociateTransitGatewayRouteTableResultBuilder();

  DisassociateTransitGatewayRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _association = $v.association?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTransitGatewayRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTransitGatewayRouteTableResult;
  }

  @override
  void update(
      void Function(DisassociateTransitGatewayRouteTableResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTransitGatewayRouteTableResult build() => _build();

  _$DisassociateTransitGatewayRouteTableResult _build() {
    _$DisassociateTransitGatewayRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateTransitGatewayRouteTableResult._(
              association: _association?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateTransitGatewayRouteTableResult',
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
