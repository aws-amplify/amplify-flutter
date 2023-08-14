// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_ipv6_addresses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignIpv6AddressesRequest extends AssignIpv6AddressesRequest {
  @override
  final int ipv6AddressCount;
  @override
  final _i3.BuiltList<String>? ipv6Addresses;
  @override
  final int ipv6PrefixCount;
  @override
  final _i3.BuiltList<String>? ipv6Prefixes;
  @override
  final String? networkInterfaceId;

  factory _$AssignIpv6AddressesRequest(
          [void Function(AssignIpv6AddressesRequestBuilder)? updates]) =>
      (new AssignIpv6AddressesRequestBuilder()..update(updates))._build();

  _$AssignIpv6AddressesRequest._(
      {required this.ipv6AddressCount,
      this.ipv6Addresses,
      required this.ipv6PrefixCount,
      this.ipv6Prefixes,
      this.networkInterfaceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ipv6AddressCount, r'AssignIpv6AddressesRequest', 'ipv6AddressCount');
    BuiltValueNullFieldError.checkNotNull(
        ipv6PrefixCount, r'AssignIpv6AddressesRequest', 'ipv6PrefixCount');
  }

  @override
  AssignIpv6AddressesRequest rebuild(
          void Function(AssignIpv6AddressesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignIpv6AddressesRequestBuilder toBuilder() =>
      new AssignIpv6AddressesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignIpv6AddressesRequest &&
        ipv6AddressCount == other.ipv6AddressCount &&
        ipv6Addresses == other.ipv6Addresses &&
        ipv6PrefixCount == other.ipv6PrefixCount &&
        ipv6Prefixes == other.ipv6Prefixes &&
        networkInterfaceId == other.networkInterfaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6AddressCount.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, ipv6PrefixCount.hashCode);
    _$hash = $jc(_$hash, ipv6Prefixes.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssignIpv6AddressesRequestBuilder
    implements
        Builder<AssignIpv6AddressesRequest, AssignIpv6AddressesRequestBuilder> {
  _$AssignIpv6AddressesRequest? _$v;

  int? _ipv6AddressCount;
  int? get ipv6AddressCount => _$this._ipv6AddressCount;
  set ipv6AddressCount(int? ipv6AddressCount) =>
      _$this._ipv6AddressCount = ipv6AddressCount;

  _i3.ListBuilder<String>? _ipv6Addresses;
  _i3.ListBuilder<String> get ipv6Addresses =>
      _$this._ipv6Addresses ??= new _i3.ListBuilder<String>();
  set ipv6Addresses(_i3.ListBuilder<String>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  int? _ipv6PrefixCount;
  int? get ipv6PrefixCount => _$this._ipv6PrefixCount;
  set ipv6PrefixCount(int? ipv6PrefixCount) =>
      _$this._ipv6PrefixCount = ipv6PrefixCount;

  _i3.ListBuilder<String>? _ipv6Prefixes;
  _i3.ListBuilder<String> get ipv6Prefixes =>
      _$this._ipv6Prefixes ??= new _i3.ListBuilder<String>();
  set ipv6Prefixes(_i3.ListBuilder<String>? ipv6Prefixes) =>
      _$this._ipv6Prefixes = ipv6Prefixes;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  AssignIpv6AddressesRequestBuilder() {
    AssignIpv6AddressesRequest._init(this);
  }

  AssignIpv6AddressesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6AddressCount = $v.ipv6AddressCount;
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _ipv6PrefixCount = $v.ipv6PrefixCount;
      _ipv6Prefixes = $v.ipv6Prefixes?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignIpv6AddressesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssignIpv6AddressesRequest;
  }

  @override
  void update(void Function(AssignIpv6AddressesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignIpv6AddressesRequest build() => _build();

  _$AssignIpv6AddressesRequest _build() {
    _$AssignIpv6AddressesRequest _$result;
    try {
      _$result = _$v ??
          new _$AssignIpv6AddressesRequest._(
              ipv6AddressCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6AddressCount,
                  r'AssignIpv6AddressesRequest',
                  'ipv6AddressCount'),
              ipv6Addresses: _ipv6Addresses?.build(),
              ipv6PrefixCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6PrefixCount,
                  r'AssignIpv6AddressesRequest',
                  'ipv6PrefixCount'),
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
            r'AssignIpv6AddressesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
