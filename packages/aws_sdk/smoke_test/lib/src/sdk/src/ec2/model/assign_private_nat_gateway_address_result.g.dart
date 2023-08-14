// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_private_nat_gateway_address_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignPrivateNatGatewayAddressResult
    extends AssignPrivateNatGatewayAddressResult {
  @override
  final String? natGatewayId;
  @override
  final _i2.BuiltList<NatGatewayAddress>? natGatewayAddresses;

  factory _$AssignPrivateNatGatewayAddressResult(
          [void Function(AssignPrivateNatGatewayAddressResultBuilder)?
              updates]) =>
      (new AssignPrivateNatGatewayAddressResultBuilder()..update(updates))
          ._build();

  _$AssignPrivateNatGatewayAddressResult._(
      {this.natGatewayId, this.natGatewayAddresses})
      : super._();

  @override
  AssignPrivateNatGatewayAddressResult rebuild(
          void Function(AssignPrivateNatGatewayAddressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignPrivateNatGatewayAddressResultBuilder toBuilder() =>
      new AssignPrivateNatGatewayAddressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignPrivateNatGatewayAddressResult &&
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

class AssignPrivateNatGatewayAddressResultBuilder
    implements
        Builder<AssignPrivateNatGatewayAddressResult,
            AssignPrivateNatGatewayAddressResultBuilder> {
  _$AssignPrivateNatGatewayAddressResult? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i2.ListBuilder<NatGatewayAddress>? _natGatewayAddresses;
  _i2.ListBuilder<NatGatewayAddress> get natGatewayAddresses =>
      _$this._natGatewayAddresses ??= new _i2.ListBuilder<NatGatewayAddress>();
  set natGatewayAddresses(
          _i2.ListBuilder<NatGatewayAddress>? natGatewayAddresses) =>
      _$this._natGatewayAddresses = natGatewayAddresses;

  AssignPrivateNatGatewayAddressResultBuilder();

  AssignPrivateNatGatewayAddressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _natGatewayAddresses = $v.natGatewayAddresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignPrivateNatGatewayAddressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssignPrivateNatGatewayAddressResult;
  }

  @override
  void update(
      void Function(AssignPrivateNatGatewayAddressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignPrivateNatGatewayAddressResult build() => _build();

  _$AssignPrivateNatGatewayAddressResult _build() {
    _$AssignPrivateNatGatewayAddressResult _$result;
    try {
      _$result = _$v ??
          new _$AssignPrivateNatGatewayAddressResult._(
              natGatewayId: natGatewayId,
              natGatewayAddresses: _natGatewayAddresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natGatewayAddresses';
        _natGatewayAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssignPrivateNatGatewayAddressResult',
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
