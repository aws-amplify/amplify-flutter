// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_multicast_domain_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayMulticastDomainAssociationsResult
    extends GetTransitGatewayMulticastDomainAssociationsResult {
  @override
  final _i2.BuiltList<TransitGatewayMulticastDomainAssociation>?
      multicastDomainAssociations;
  @override
  final String? nextToken;

  factory _$GetTransitGatewayMulticastDomainAssociationsResult(
          [void Function(
                  GetTransitGatewayMulticastDomainAssociationsResultBuilder)?
              updates]) =>
      (new GetTransitGatewayMulticastDomainAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayMulticastDomainAssociationsResult._(
      {this.multicastDomainAssociations, this.nextToken})
      : super._();

  @override
  GetTransitGatewayMulticastDomainAssociationsResult rebuild(
          void Function(
                  GetTransitGatewayMulticastDomainAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayMulticastDomainAssociationsResultBuilder toBuilder() =>
      new GetTransitGatewayMulticastDomainAssociationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayMulticastDomainAssociationsResult &&
        multicastDomainAssociations == other.multicastDomainAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, multicastDomainAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayMulticastDomainAssociationsResultBuilder
    implements
        Builder<GetTransitGatewayMulticastDomainAssociationsResult,
            GetTransitGatewayMulticastDomainAssociationsResultBuilder> {
  _$GetTransitGatewayMulticastDomainAssociationsResult? _$v;

  _i2.ListBuilder<TransitGatewayMulticastDomainAssociation>?
      _multicastDomainAssociations;
  _i2.ListBuilder<TransitGatewayMulticastDomainAssociation>
      get multicastDomainAssociations => _$this._multicastDomainAssociations ??=
          new _i2.ListBuilder<TransitGatewayMulticastDomainAssociation>();
  set multicastDomainAssociations(
          _i2.ListBuilder<TransitGatewayMulticastDomainAssociation>?
              multicastDomainAssociations) =>
      _$this._multicastDomainAssociations = multicastDomainAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetTransitGatewayMulticastDomainAssociationsResultBuilder();

  GetTransitGatewayMulticastDomainAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _multicastDomainAssociations =
          $v.multicastDomainAssociations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayMulticastDomainAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayMulticastDomainAssociationsResult;
  }

  @override
  void update(
      void Function(GetTransitGatewayMulticastDomainAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayMulticastDomainAssociationsResult build() => _build();

  _$GetTransitGatewayMulticastDomainAssociationsResult _build() {
    _$GetTransitGatewayMulticastDomainAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayMulticastDomainAssociationsResult._(
              multicastDomainAssociations:
                  _multicastDomainAssociations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'multicastDomainAssociations';
        _multicastDomainAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayMulticastDomainAssociationsResult',
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
