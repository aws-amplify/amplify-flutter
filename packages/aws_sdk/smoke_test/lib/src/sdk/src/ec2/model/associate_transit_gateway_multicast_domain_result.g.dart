// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_transit_gateway_multicast_domain_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateTransitGatewayMulticastDomainResult
    extends AssociateTransitGatewayMulticastDomainResult {
  @override
  final TransitGatewayMulticastDomainAssociations? associations;

  factory _$AssociateTransitGatewayMulticastDomainResult(
          [void Function(AssociateTransitGatewayMulticastDomainResultBuilder)?
              updates]) =>
      (new AssociateTransitGatewayMulticastDomainResultBuilder()
            ..update(updates))
          ._build();

  _$AssociateTransitGatewayMulticastDomainResult._({this.associations})
      : super._();

  @override
  AssociateTransitGatewayMulticastDomainResult rebuild(
          void Function(AssociateTransitGatewayMulticastDomainResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateTransitGatewayMulticastDomainResultBuilder toBuilder() =>
      new AssociateTransitGatewayMulticastDomainResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateTransitGatewayMulticastDomainResult &&
        associations == other.associations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateTransitGatewayMulticastDomainResultBuilder
    implements
        Builder<AssociateTransitGatewayMulticastDomainResult,
            AssociateTransitGatewayMulticastDomainResultBuilder> {
  _$AssociateTransitGatewayMulticastDomainResult? _$v;

  TransitGatewayMulticastDomainAssociationsBuilder? _associations;
  TransitGatewayMulticastDomainAssociationsBuilder get associations =>
      _$this._associations ??=
          new TransitGatewayMulticastDomainAssociationsBuilder();
  set associations(
          TransitGatewayMulticastDomainAssociationsBuilder? associations) =>
      _$this._associations = associations;

  AssociateTransitGatewayMulticastDomainResultBuilder();

  AssociateTransitGatewayMulticastDomainResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateTransitGatewayMulticastDomainResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateTransitGatewayMulticastDomainResult;
  }

  @override
  void update(
      void Function(AssociateTransitGatewayMulticastDomainResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateTransitGatewayMulticastDomainResult build() => _build();

  _$AssociateTransitGatewayMulticastDomainResult _build() {
    _$AssociateTransitGatewayMulticastDomainResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateTransitGatewayMulticastDomainResult._(
              associations: _associations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateTransitGatewayMulticastDomainResult',
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
