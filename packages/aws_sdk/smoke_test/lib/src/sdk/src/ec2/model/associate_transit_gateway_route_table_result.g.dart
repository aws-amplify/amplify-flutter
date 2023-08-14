// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_transit_gateway_route_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateTransitGatewayRouteTableResult
    extends AssociateTransitGatewayRouteTableResult {
  @override
  final TransitGatewayAssociation? association;

  factory _$AssociateTransitGatewayRouteTableResult(
          [void Function(AssociateTransitGatewayRouteTableResultBuilder)?
              updates]) =>
      (new AssociateTransitGatewayRouteTableResultBuilder()..update(updates))
          ._build();

  _$AssociateTransitGatewayRouteTableResult._({this.association}) : super._();

  @override
  AssociateTransitGatewayRouteTableResult rebuild(
          void Function(AssociateTransitGatewayRouteTableResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateTransitGatewayRouteTableResultBuilder toBuilder() =>
      new AssociateTransitGatewayRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateTransitGatewayRouteTableResult &&
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

class AssociateTransitGatewayRouteTableResultBuilder
    implements
        Builder<AssociateTransitGatewayRouteTableResult,
            AssociateTransitGatewayRouteTableResultBuilder> {
  _$AssociateTransitGatewayRouteTableResult? _$v;

  TransitGatewayAssociationBuilder? _association;
  TransitGatewayAssociationBuilder get association =>
      _$this._association ??= new TransitGatewayAssociationBuilder();
  set association(TransitGatewayAssociationBuilder? association) =>
      _$this._association = association;

  AssociateTransitGatewayRouteTableResultBuilder();

  AssociateTransitGatewayRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _association = $v.association?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateTransitGatewayRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateTransitGatewayRouteTableResult;
  }

  @override
  void update(
      void Function(AssociateTransitGatewayRouteTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateTransitGatewayRouteTableResult build() => _build();

  _$AssociateTransitGatewayRouteTableResult _build() {
    _$AssociateTransitGatewayRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateTransitGatewayRouteTableResult._(
              association: _association?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateTransitGatewayRouteTableResult',
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
