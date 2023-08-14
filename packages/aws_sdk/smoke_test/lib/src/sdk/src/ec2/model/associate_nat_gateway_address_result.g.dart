// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_nat_gateway_address_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateNatGatewayAddressResult
    extends AssociateNatGatewayAddressResult {
  @override
  final String? natGatewayId;
  @override
  final _i2.BuiltList<NatGatewayAddress>? natGatewayAddresses;

  factory _$AssociateNatGatewayAddressResult(
          [void Function(AssociateNatGatewayAddressResultBuilder)? updates]) =>
      (new AssociateNatGatewayAddressResultBuilder()..update(updates))._build();

  _$AssociateNatGatewayAddressResult._(
      {this.natGatewayId, this.natGatewayAddresses})
      : super._();

  @override
  AssociateNatGatewayAddressResult rebuild(
          void Function(AssociateNatGatewayAddressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateNatGatewayAddressResultBuilder toBuilder() =>
      new AssociateNatGatewayAddressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateNatGatewayAddressResult &&
        natGatewayId == other.natGatewayId &&
        natGatewayAddresses == other.natGatewayAddresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, natGatewayAddresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateNatGatewayAddressResultBuilder
    implements
        Builder<AssociateNatGatewayAddressResult,
            AssociateNatGatewayAddressResultBuilder> {
  _$AssociateNatGatewayAddressResult? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i2.ListBuilder<NatGatewayAddress>? _natGatewayAddresses;
  _i2.ListBuilder<NatGatewayAddress> get natGatewayAddresses =>
      _$this._natGatewayAddresses ??= new _i2.ListBuilder<NatGatewayAddress>();
  set natGatewayAddresses(
          _i2.ListBuilder<NatGatewayAddress>? natGatewayAddresses) =>
      _$this._natGatewayAddresses = natGatewayAddresses;

  AssociateNatGatewayAddressResultBuilder();

  AssociateNatGatewayAddressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _natGatewayAddresses = $v.natGatewayAddresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateNatGatewayAddressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateNatGatewayAddressResult;
  }

  @override
  void update(void Function(AssociateNatGatewayAddressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateNatGatewayAddressResult build() => _build();

  _$AssociateNatGatewayAddressResult _build() {
    _$AssociateNatGatewayAddressResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateNatGatewayAddressResult._(
              natGatewayId: natGatewayId,
              natGatewayAddresses: _natGatewayAddresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natGatewayAddresses';
        _natGatewayAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateNatGatewayAddressResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
