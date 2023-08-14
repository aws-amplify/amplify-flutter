// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_transit_gateway_multicast_domain_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTransitGatewayMulticastDomainResult
    extends DisassociateTransitGatewayMulticastDomainResult {
  @override
  final TransitGatewayMulticastDomainAssociations? associations;

  factory _$DisassociateTransitGatewayMulticastDomainResult(
          [void Function(
                  DisassociateTransitGatewayMulticastDomainResultBuilder)?
              updates]) =>
      (new DisassociateTransitGatewayMulticastDomainResultBuilder()
            ..update(updates))
          ._build();

  _$DisassociateTransitGatewayMulticastDomainResult._({this.associations})
      : super._();

  @override
  DisassociateTransitGatewayMulticastDomainResult rebuild(
          void Function(DisassociateTransitGatewayMulticastDomainResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTransitGatewayMulticastDomainResultBuilder toBuilder() =>
      new DisassociateTransitGatewayMulticastDomainResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTransitGatewayMulticastDomainResult &&
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

class DisassociateTransitGatewayMulticastDomainResultBuilder
    implements
        Builder<DisassociateTransitGatewayMulticastDomainResult,
            DisassociateTransitGatewayMulticastDomainResultBuilder> {
  _$DisassociateTransitGatewayMulticastDomainResult? _$v;

  TransitGatewayMulticastDomainAssociationsBuilder? _associations;
  TransitGatewayMulticastDomainAssociationsBuilder get associations =>
      _$this._associations ??=
          new TransitGatewayMulticastDomainAssociationsBuilder();
  set associations(
          TransitGatewayMulticastDomainAssociationsBuilder? associations) =>
      _$this._associations = associations;

  DisassociateTransitGatewayMulticastDomainResultBuilder();

  DisassociateTransitGatewayMulticastDomainResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTransitGatewayMulticastDomainResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTransitGatewayMulticastDomainResult;
  }

  @override
  void update(
      void Function(DisassociateTransitGatewayMulticastDomainResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTransitGatewayMulticastDomainResult build() => _build();

  _$DisassociateTransitGatewayMulticastDomainResult _build() {
    _$DisassociateTransitGatewayMulticastDomainResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateTransitGatewayMulticastDomainResult._(
              associations: _associations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateTransitGatewayMulticastDomainResult',
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
