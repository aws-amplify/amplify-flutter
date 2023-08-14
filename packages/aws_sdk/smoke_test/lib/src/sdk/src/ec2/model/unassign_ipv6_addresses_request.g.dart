// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unassign_ipv6_addresses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnassignIpv6AddressesRequest extends UnassignIpv6AddressesRequest {
  @override
  final _i3.BuiltList<String>? ipv6Addresses;
  @override
  final _i3.BuiltList<String>? ipv6Prefixes;
  @override
  final String? networkInterfaceId;

  factory _$UnassignIpv6AddressesRequest(
          [void Function(UnassignIpv6AddressesRequestBuilder)? updates]) =>
      (new UnassignIpv6AddressesRequestBuilder()..update(updates))._build();

  _$UnassignIpv6AddressesRequest._(
      {this.ipv6Addresses, this.ipv6Prefixes, this.networkInterfaceId})
      : super._();

  @override
  UnassignIpv6AddressesRequest rebuild(
          void Function(UnassignIpv6AddressesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnassignIpv6AddressesRequestBuilder toBuilder() =>
      new UnassignIpv6AddressesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnassignIpv6AddressesRequest &&
        ipv6Addresses == other.ipv6Addresses &&
        ipv6Prefixes == other.ipv6Prefixes &&
        networkInterfaceId == other.networkInterfaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, ipv6Prefixes.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnassignIpv6AddressesRequestBuilder
    implements
        Builder<UnassignIpv6AddressesRequest,
            UnassignIpv6AddressesRequestBuilder> {
  _$UnassignIpv6AddressesRequest? _$v;

  _i3.ListBuilder<String>? _ipv6Addresses;
  _i3.ListBuilder<String> get ipv6Addresses =>
      _$this._ipv6Addresses ??= new _i3.ListBuilder<String>();
  set ipv6Addresses(_i3.ListBuilder<String>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  _i3.ListBuilder<String>? _ipv6Prefixes;
  _i3.ListBuilder<String> get ipv6Prefixes =>
      _$this._ipv6Prefixes ??= new _i3.ListBuilder<String>();
  set ipv6Prefixes(_i3.ListBuilder<String>? ipv6Prefixes) =>
      _$this._ipv6Prefixes = ipv6Prefixes;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  UnassignIpv6AddressesRequestBuilder();

  UnassignIpv6AddressesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _ipv6Prefixes = $v.ipv6Prefixes?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnassignIpv6AddressesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnassignIpv6AddressesRequest;
  }

  @override
  void update(void Function(UnassignIpv6AddressesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnassignIpv6AddressesRequest build() => _build();

  _$UnassignIpv6AddressesRequest _build() {
    _$UnassignIpv6AddressesRequest _$result;
    try {
      _$result = _$v ??
          new _$UnassignIpv6AddressesRequest._(
              ipv6Addresses: _ipv6Addresses?.build(),
              ipv6Prefixes: _ipv6Prefixes?.build(),
              networkInterfaceId: networkInterfaceId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6Addresses';
        _ipv6Addresses?.build();
        _$failedField = 'ipv6Prefixes';
        _ipv6Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnassignIpv6AddressesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
