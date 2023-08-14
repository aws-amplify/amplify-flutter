// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_transit_gateway_multicast_domain_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectTransitGatewayMulticastDomainAssociationsResult
    extends RejectTransitGatewayMulticastDomainAssociationsResult {
  @override
  final TransitGatewayMulticastDomainAssociations? associations;

  factory _$RejectTransitGatewayMulticastDomainAssociationsResult(
          [void Function(
                  RejectTransitGatewayMulticastDomainAssociationsResultBuilder)?
              updates]) =>
      (new RejectTransitGatewayMulticastDomainAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$RejectTransitGatewayMulticastDomainAssociationsResult._({this.associations})
      : super._();

  @override
  RejectTransitGatewayMulticastDomainAssociationsResult rebuild(
          void Function(
                  RejectTransitGatewayMulticastDomainAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectTransitGatewayMulticastDomainAssociationsResultBuilder toBuilder() =>
      new RejectTransitGatewayMulticastDomainAssociationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectTransitGatewayMulticastDomainAssociationsResult &&
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

class RejectTransitGatewayMulticastDomainAssociationsResultBuilder
    implements
        Builder<RejectTransitGatewayMulticastDomainAssociationsResult,
            RejectTransitGatewayMulticastDomainAssociationsResultBuilder> {
  _$RejectTransitGatewayMulticastDomainAssociationsResult? _$v;

  TransitGatewayMulticastDomainAssociationsBuilder? _associations;
  TransitGatewayMulticastDomainAssociationsBuilder get associations =>
      _$this._associations ??=
          new TransitGatewayMulticastDomainAssociationsBuilder();
  set associations(
          TransitGatewayMulticastDomainAssociationsBuilder? associations) =>
      _$this._associations = associations;

  RejectTransitGatewayMulticastDomainAssociationsResultBuilder();

  RejectTransitGatewayMulticastDomainAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectTransitGatewayMulticastDomainAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectTransitGatewayMulticastDomainAssociationsResult;
  }

  @override
  void update(
      void Function(
              RejectTransitGatewayMulticastDomainAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectTransitGatewayMulticastDomainAssociationsResult build() => _build();

  _$RejectTransitGatewayMulticastDomainAssociationsResult _build() {
    _$RejectTransitGatewayMulticastDomainAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$RejectTransitGatewayMulticastDomainAssociationsResult._(
              associations: _associations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RejectTransitGatewayMulticastDomainAssociationsResult',
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
