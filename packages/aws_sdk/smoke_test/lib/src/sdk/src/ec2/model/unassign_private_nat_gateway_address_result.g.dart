// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unassign_private_nat_gateway_address_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnassignPrivateNatGatewayAddressResult
    extends UnassignPrivateNatGatewayAddressResult {
  @override
  final String? natGatewayId;
  @override
  final _i2.BuiltList<NatGatewayAddress>? natGatewayAddresses;

  factory _$UnassignPrivateNatGatewayAddressResult(
          [void Function(UnassignPrivateNatGatewayAddressResultBuilder)?
              updates]) =>
      (new UnassignPrivateNatGatewayAddressResultBuilder()..update(updates))
          ._build();

  _$UnassignPrivateNatGatewayAddressResult._(
      {this.natGatewayId, this.natGatewayAddresses})
      : super._();

  @override
  UnassignPrivateNatGatewayAddressResult rebuild(
          void Function(UnassignPrivateNatGatewayAddressResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnassignPrivateNatGatewayAddressResultBuilder toBuilder() =>
      new UnassignPrivateNatGatewayAddressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnassignPrivateNatGatewayAddressResult &&
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

class UnassignPrivateNatGatewayAddressResultBuilder
    implements
        Builder<UnassignPrivateNatGatewayAddressResult,
            UnassignPrivateNatGatewayAddressResultBuilder> {
  _$UnassignPrivateNatGatewayAddressResult? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i2.ListBuilder<NatGatewayAddress>? _natGatewayAddresses;
  _i2.ListBuilder<NatGatewayAddress> get natGatewayAddresses =>
      _$this._natGatewayAddresses ??= new _i2.ListBuilder<NatGatewayAddress>();
  set natGatewayAddresses(
          _i2.ListBuilder<NatGatewayAddress>? natGatewayAddresses) =>
      _$this._natGatewayAddresses = natGatewayAddresses;

  UnassignPrivateNatGatewayAddressResultBuilder();

  UnassignPrivateNatGatewayAddressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _natGatewayAddresses = $v.natGatewayAddresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnassignPrivateNatGatewayAddressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnassignPrivateNatGatewayAddressResult;
  }

  @override
  void update(
      void Function(UnassignPrivateNatGatewayAddressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnassignPrivateNatGatewayAddressResult build() => _build();

  _$UnassignPrivateNatGatewayAddressResult _build() {
    _$UnassignPrivateNatGatewayAddressResult _$result;
    try {
      _$result = _$v ??
          new _$UnassignPrivateNatGatewayAddressResult._(
              natGatewayId: natGatewayId,
              natGatewayAddresses: _natGatewayAddresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natGatewayAddresses';
        _natGatewayAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnassignPrivateNatGatewayAddressResult',
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
