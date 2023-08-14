// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_nat_gateway_address_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateNatGatewayAddressResult
    extends DisassociateNatGatewayAddressResult {
  @override
  final String? natGatewayId;
  @override
  final _i2.BuiltList<NatGatewayAddress>? natGatewayAddresses;

  factory _$DisassociateNatGatewayAddressResult(
          [void Function(DisassociateNatGatewayAddressResultBuilder)?
              updates]) =>
      (new DisassociateNatGatewayAddressResultBuilder()..update(updates))
          ._build();

  _$DisassociateNatGatewayAddressResult._(
      {this.natGatewayId, this.natGatewayAddresses})
      : super._();

  @override
  DisassociateNatGatewayAddressResult rebuild(
          void Function(DisassociateNatGatewayAddressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateNatGatewayAddressResultBuilder toBuilder() =>
      new DisassociateNatGatewayAddressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateNatGatewayAddressResult &&
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

class DisassociateNatGatewayAddressResultBuilder
    implements
        Builder<DisassociateNatGatewayAddressResult,
            DisassociateNatGatewayAddressResultBuilder> {
  _$DisassociateNatGatewayAddressResult? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i2.ListBuilder<NatGatewayAddress>? _natGatewayAddresses;
  _i2.ListBuilder<NatGatewayAddress> get natGatewayAddresses =>
      _$this._natGatewayAddresses ??= new _i2.ListBuilder<NatGatewayAddress>();
  set natGatewayAddresses(
          _i2.ListBuilder<NatGatewayAddress>? natGatewayAddresses) =>
      _$this._natGatewayAddresses = natGatewayAddresses;

  DisassociateNatGatewayAddressResultBuilder();

  DisassociateNatGatewayAddressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _natGatewayAddresses = $v.natGatewayAddresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateNatGatewayAddressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateNatGatewayAddressResult;
  }

  @override
  void update(
      void Function(DisassociateNatGatewayAddressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateNatGatewayAddressResult build() => _build();

  _$DisassociateNatGatewayAddressResult _build() {
    _$DisassociateNatGatewayAddressResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateNatGatewayAddressResult._(
              natGatewayId: natGatewayId,
              natGatewayAddresses: _natGatewayAddresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natGatewayAddresses';
        _natGatewayAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateNatGatewayAddressResult',
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
