// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unassign_private_ip_addresses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnassignPrivateIpAddressesRequest
    extends UnassignPrivateIpAddressesRequest {
  @override
  final String? networkInterfaceId;
  @override
  final _i3.BuiltList<String>? privateIpAddresses;
  @override
  final _i3.BuiltList<String>? ipv4Prefixes;

  factory _$UnassignPrivateIpAddressesRequest(
          [void Function(UnassignPrivateIpAddressesRequestBuilder)? updates]) =>
      (new UnassignPrivateIpAddressesRequestBuilder()..update(updates))
          ._build();

  _$UnassignPrivateIpAddressesRequest._(
      {this.networkInterfaceId, this.privateIpAddresses, this.ipv4Prefixes})
      : super._();

  @override
  UnassignPrivateIpAddressesRequest rebuild(
          void Function(UnassignPrivateIpAddressesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnassignPrivateIpAddressesRequestBuilder toBuilder() =>
      new UnassignPrivateIpAddressesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnassignPrivateIpAddressesRequest &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIpAddresses == other.privateIpAddresses &&
        ipv4Prefixes == other.ipv4Prefixes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, ipv4Prefixes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnassignPrivateIpAddressesRequestBuilder
    implements
        Builder<UnassignPrivateIpAddressesRequest,
            UnassignPrivateIpAddressesRequestBuilder> {
  _$UnassignPrivateIpAddressesRequest? _$v;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  _i3.ListBuilder<String>? _privateIpAddresses;
  _i3.ListBuilder<String> get privateIpAddresses =>
      _$this._privateIpAddresses ??= new _i3.ListBuilder<String>();
  set privateIpAddresses(_i3.ListBuilder<String>? privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  _i3.ListBuilder<String>? _ipv4Prefixes;
  _i3.ListBuilder<String> get ipv4Prefixes =>
      _$this._ipv4Prefixes ??= new _i3.ListBuilder<String>();
  set ipv4Prefixes(_i3.ListBuilder<String>? ipv4Prefixes) =>
      _$this._ipv4Prefixes = ipv4Prefixes;

  UnassignPrivateIpAddressesRequestBuilder();

  UnassignPrivateIpAddressesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaceId = $v.networkInterfaceId;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _ipv4Prefixes = $v.ipv4Prefixes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnassignPrivateIpAddressesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnassignPrivateIpAddressesRequest;
  }

  @override
  void update(
      void Function(UnassignPrivateIpAddressesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnassignPrivateIpAddressesRequest build() => _build();

  _$UnassignPrivateIpAddressesRequest _build() {
    _$UnassignPrivateIpAddressesRequest _$result;
    try {
      _$result = _$v ??
          new _$UnassignPrivateIpAddressesRequest._(
              networkInterfaceId: networkInterfaceId,
              privateIpAddresses: _privateIpAddresses?.build(),
              ipv4Prefixes: _ipv4Prefixes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();
        _$failedField = 'ipv4Prefixes';
        _ipv4Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnassignPrivateIpAddressesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
