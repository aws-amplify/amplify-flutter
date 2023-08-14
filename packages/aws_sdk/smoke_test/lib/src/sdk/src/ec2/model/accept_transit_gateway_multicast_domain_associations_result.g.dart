// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_transit_gateway_multicast_domain_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptTransitGatewayMulticastDomainAssociationsResult
    extends AcceptTransitGatewayMulticastDomainAssociationsResult {
  @override
  final TransitGatewayMulticastDomainAssociations? associations;

  factory _$AcceptTransitGatewayMulticastDomainAssociationsResult(
          [void Function(
                  AcceptTransitGatewayMulticastDomainAssociationsResultBuilder)?
              updates]) =>
      (new AcceptTransitGatewayMulticastDomainAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$AcceptTransitGatewayMulticastDomainAssociationsResult._({this.associations})
      : super._();

  @override
  AcceptTransitGatewayMulticastDomainAssociationsResult rebuild(
          void Function(
                  AcceptTransitGatewayMulticastDomainAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptTransitGatewayMulticastDomainAssociationsResultBuilder toBuilder() =>
      new AcceptTransitGatewayMulticastDomainAssociationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptTransitGatewayMulticastDomainAssociationsResult &&
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

class AcceptTransitGatewayMulticastDomainAssociationsResultBuilder
    implements
        Builder<AcceptTransitGatewayMulticastDomainAssociationsResult,
            AcceptTransitGatewayMulticastDomainAssociationsResultBuilder> {
  _$AcceptTransitGatewayMulticastDomainAssociationsResult? _$v;

  TransitGatewayMulticastDomainAssociationsBuilder? _associations;
  TransitGatewayMulticastDomainAssociationsBuilder get associations =>
      _$this._associations ??=
          new TransitGatewayMulticastDomainAssociationsBuilder();
  set associations(
          TransitGatewayMulticastDomainAssociationsBuilder? associations) =>
      _$this._associations = associations;

  AcceptTransitGatewayMulticastDomainAssociationsResultBuilder();

  AcceptTransitGatewayMulticastDomainAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptTransitGatewayMulticastDomainAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptTransitGatewayMulticastDomainAssociationsResult;
  }

  @override
  void update(
      void Function(
              AcceptTransitGatewayMulticastDomainAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptTransitGatewayMulticastDomainAssociationsResult build() => _build();

  _$AcceptTransitGatewayMulticastDomainAssociationsResult _build() {
    _$AcceptTransitGatewayMulticastDomainAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$AcceptTransitGatewayMulticastDomainAssociationsResult._(
              associations: _associations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptTransitGatewayMulticastDomainAssociationsResult',
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
