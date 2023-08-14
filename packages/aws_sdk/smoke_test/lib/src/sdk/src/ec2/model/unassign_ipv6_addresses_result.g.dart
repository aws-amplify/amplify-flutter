// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unassign_ipv6_addresses_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnassignIpv6AddressesResult extends UnassignIpv6AddressesResult {
  @override
  final String? networkInterfaceId;
  @override
  final _i2.BuiltList<String>? unassignedIpv6Addresses;
  @override
  final _i2.BuiltList<String>? unassignedIpv6Prefixes;

  factory _$UnassignIpv6AddressesResult(
          [void Function(UnassignIpv6AddressesResultBuilder)? updates]) =>
      (new UnassignIpv6AddressesResultBuilder()..update(updates))._build();

  _$UnassignIpv6AddressesResult._(
      {this.networkInterfaceId,
      this.unassignedIpv6Addresses,
      this.unassignedIpv6Prefixes})
      : super._();

  @override
  UnassignIpv6AddressesResult rebuild(
          void Function(UnassignIpv6AddressesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnassignIpv6AddressesResultBuilder toBuilder() =>
      new UnassignIpv6AddressesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnassignIpv6AddressesResult &&
        networkInterfaceId == other.networkInterfaceId &&
        unassignedIpv6Addresses == other.unassignedIpv6Addresses &&
        unassignedIpv6Prefixes == other.unassignedIpv6Prefixes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, unassignedIpv6Addresses.hashCode);
    _$hash = $jc(_$hash, unassignedIpv6Prefixes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnassignIpv6AddressesResultBuilder
    implements
        Builder<UnassignIpv6AddressesResult,
            UnassignIpv6AddressesResultBuilder> {
  _$UnassignIpv6AddressesResult? _$v;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  _i2.ListBuilder<String>? _unassignedIpv6Addresses;
  _i2.ListBuilder<String> get unassignedIpv6Addresses =>
      _$this._unassignedIpv6Addresses ??= new _i2.ListBuilder<String>();
  set unassignedIpv6Addresses(
          _i2.ListBuilder<String>? unassignedIpv6Addresses) =>
      _$this._unassignedIpv6Addresses = unassignedIpv6Addresses;

  _i2.ListBuilder<String>? _unassignedIpv6Prefixes;
  _i2.ListBuilder<String> get unassignedIpv6Prefixes =>
      _$this._unassignedIpv6Prefixes ??= new _i2.ListBuilder<String>();
  set unassignedIpv6Prefixes(_i2.ListBuilder<String>? unassignedIpv6Prefixes) =>
      _$this._unassignedIpv6Prefixes = unassignedIpv6Prefixes;

  UnassignIpv6AddressesResultBuilder();

  UnassignIpv6AddressesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaceId = $v.networkInterfaceId;
      _unassignedIpv6Addresses = $v.unassignedIpv6Addresses?.toBuilder();
      _unassignedIpv6Prefixes = $v.unassignedIpv6Prefixes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnassignIpv6AddressesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnassignIpv6AddressesResult;
  }

  @override
  void update(void Function(UnassignIpv6AddressesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnassignIpv6AddressesResult build() => _build();

  _$UnassignIpv6AddressesResult _build() {
    _$UnassignIpv6AddressesResult _$result;
    try {
      _$result = _$v ??
          new _$UnassignIpv6AddressesResult._(
              networkInterfaceId: networkInterfaceId,
              unassignedIpv6Addresses: _unassignedIpv6Addresses?.build(),
              unassignedIpv6Prefixes: _unassignedIpv6Prefixes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unassignedIpv6Addresses';
        _unassignedIpv6Addresses?.build();
        _$failedField = 'unassignedIpv6Prefixes';
        _unassignedIpv6Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnassignIpv6AddressesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
