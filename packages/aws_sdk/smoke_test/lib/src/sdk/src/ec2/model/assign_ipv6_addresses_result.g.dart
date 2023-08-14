// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_ipv6_addresses_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignIpv6AddressesResult extends AssignIpv6AddressesResult {
  @override
  final _i2.BuiltList<String>? assignedIpv6Addresses;
  @override
  final _i2.BuiltList<String>? assignedIpv6Prefixes;
  @override
  final String? networkInterfaceId;

  factory _$AssignIpv6AddressesResult(
          [void Function(AssignIpv6AddressesResultBuilder)? updates]) =>
      (new AssignIpv6AddressesResultBuilder()..update(updates))._build();

  _$AssignIpv6AddressesResult._(
      {this.assignedIpv6Addresses,
      this.assignedIpv6Prefixes,
      this.networkInterfaceId})
      : super._();

  @override
  AssignIpv6AddressesResult rebuild(
          void Function(AssignIpv6AddressesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignIpv6AddressesResultBuilder toBuilder() =>
      new AssignIpv6AddressesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignIpv6AddressesResult &&
        assignedIpv6Addresses == other.assignedIpv6Addresses &&
        assignedIpv6Prefixes == other.assignedIpv6Prefixes &&
        networkInterfaceId == other.networkInterfaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assignedIpv6Addresses.hashCode);
    _$hash = $jc(_$hash, assignedIpv6Prefixes.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssignIpv6AddressesResultBuilder
    implements
        Builder<AssignIpv6AddressesResult, AssignIpv6AddressesResultBuilder> {
  _$AssignIpv6AddressesResult? _$v;

  _i2.ListBuilder<String>? _assignedIpv6Addresses;
  _i2.ListBuilder<String> get assignedIpv6Addresses =>
      _$this._assignedIpv6Addresses ??= new _i2.ListBuilder<String>();
  set assignedIpv6Addresses(_i2.ListBuilder<String>? assignedIpv6Addresses) =>
      _$this._assignedIpv6Addresses = assignedIpv6Addresses;

  _i2.ListBuilder<String>? _assignedIpv6Prefixes;
  _i2.ListBuilder<String> get assignedIpv6Prefixes =>
      _$this._assignedIpv6Prefixes ??= new _i2.ListBuilder<String>();
  set assignedIpv6Prefixes(_i2.ListBuilder<String>? assignedIpv6Prefixes) =>
      _$this._assignedIpv6Prefixes = assignedIpv6Prefixes;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  AssignIpv6AddressesResultBuilder();

  AssignIpv6AddressesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assignedIpv6Addresses = $v.assignedIpv6Addresses?.toBuilder();
      _assignedIpv6Prefixes = $v.assignedIpv6Prefixes?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignIpv6AddressesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssignIpv6AddressesResult;
  }

  @override
  void update(void Function(AssignIpv6AddressesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignIpv6AddressesResult build() => _build();

  _$AssignIpv6AddressesResult _build() {
    _$AssignIpv6AddressesResult _$result;
    try {
      _$result = _$v ??
          new _$AssignIpv6AddressesResult._(
              assignedIpv6Addresses: _assignedIpv6Addresses?.build(),
              assignedIpv6Prefixes: _assignedIpv6Prefixes?.build(),
              networkInterfaceId: networkInterfaceId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assignedIpv6Addresses';
        _assignedIpv6Addresses?.build();
        _$failedField = 'assignedIpv6Prefixes';
        _assignedIpv6Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssignIpv6AddressesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
