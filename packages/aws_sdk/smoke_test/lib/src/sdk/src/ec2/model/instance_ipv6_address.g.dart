// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_ipv6_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceIpv6Address extends InstanceIpv6Address {
  @override
  final String? ipv6Address;
  @override
  final bool isPrimaryIpv6;

  factory _$InstanceIpv6Address(
          [void Function(InstanceIpv6AddressBuilder)? updates]) =>
      (new InstanceIpv6AddressBuilder()..update(updates))._build();

  _$InstanceIpv6Address._({this.ipv6Address, required this.isPrimaryIpv6})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isPrimaryIpv6, r'InstanceIpv6Address', 'isPrimaryIpv6');
  }

  @override
  InstanceIpv6Address rebuild(
          void Function(InstanceIpv6AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceIpv6AddressBuilder toBuilder() =>
      new InstanceIpv6AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceIpv6Address &&
        ipv6Address == other.ipv6Address &&
        isPrimaryIpv6 == other.isPrimaryIpv6;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Address.hashCode);
    _$hash = $jc(_$hash, isPrimaryIpv6.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceIpv6AddressBuilder
    implements Builder<InstanceIpv6Address, InstanceIpv6AddressBuilder> {
  _$InstanceIpv6Address? _$v;

  String? _ipv6Address;
  String? get ipv6Address => _$this._ipv6Address;
  set ipv6Address(String? ipv6Address) => _$this._ipv6Address = ipv6Address;

  bool? _isPrimaryIpv6;
  bool? get isPrimaryIpv6 => _$this._isPrimaryIpv6;
  set isPrimaryIpv6(bool? isPrimaryIpv6) =>
      _$this._isPrimaryIpv6 = isPrimaryIpv6;

  InstanceIpv6AddressBuilder() {
    InstanceIpv6Address._init(this);
  }

  InstanceIpv6AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Address = $v.ipv6Address;
      _isPrimaryIpv6 = $v.isPrimaryIpv6;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceIpv6Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceIpv6Address;
  }

  @override
  void update(void Function(InstanceIpv6AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceIpv6Address build() => _build();

  _$InstanceIpv6Address _build() {
    final _$result = _$v ??
        new _$InstanceIpv6Address._(
            ipv6Address: ipv6Address,
            isPrimaryIpv6: BuiltValueNullFieldError.checkNotNull(
                isPrimaryIpv6, r'InstanceIpv6Address', 'isPrimaryIpv6'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
