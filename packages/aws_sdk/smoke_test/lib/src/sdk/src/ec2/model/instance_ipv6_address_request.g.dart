// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_ipv6_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceIpv6AddressRequest extends InstanceIpv6AddressRequest {
  @override
  final String? ipv6Address;

  factory _$InstanceIpv6AddressRequest(
          [void Function(InstanceIpv6AddressRequestBuilder)? updates]) =>
      (new InstanceIpv6AddressRequestBuilder()..update(updates))._build();

  _$InstanceIpv6AddressRequest._({this.ipv6Address}) : super._();

  @override
  InstanceIpv6AddressRequest rebuild(
          void Function(InstanceIpv6AddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceIpv6AddressRequestBuilder toBuilder() =>
      new InstanceIpv6AddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceIpv6AddressRequest &&
        ipv6Address == other.ipv6Address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceIpv6AddressRequestBuilder
    implements
        Builder<InstanceIpv6AddressRequest, InstanceIpv6AddressRequestBuilder> {
  _$InstanceIpv6AddressRequest? _$v;

  String? _ipv6Address;
  String? get ipv6Address => _$this._ipv6Address;
  set ipv6Address(String? ipv6Address) => _$this._ipv6Address = ipv6Address;

  InstanceIpv6AddressRequestBuilder();

  InstanceIpv6AddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Address = $v.ipv6Address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceIpv6AddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceIpv6AddressRequest;
  }

  @override
  void update(void Function(InstanceIpv6AddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceIpv6AddressRequest build() => _build();

  _$InstanceIpv6AddressRequest _build() {
    final _$result =
        _$v ?? new _$InstanceIpv6AddressRequest._(ipv6Address: ipv6Address);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
