// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_ipv6_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesIpv6Address extends ScheduledInstancesIpv6Address {
  @override
  final String? ipv6Address;

  factory _$ScheduledInstancesIpv6Address(
          [void Function(ScheduledInstancesIpv6AddressBuilder)? updates]) =>
      (new ScheduledInstancesIpv6AddressBuilder()..update(updates))._build();

  _$ScheduledInstancesIpv6Address._({this.ipv6Address}) : super._();

  @override
  ScheduledInstancesIpv6Address rebuild(
          void Function(ScheduledInstancesIpv6AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesIpv6AddressBuilder toBuilder() =>
      new ScheduledInstancesIpv6AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesIpv6Address &&
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

class ScheduledInstancesIpv6AddressBuilder
    implements
        Builder<ScheduledInstancesIpv6Address,
            ScheduledInstancesIpv6AddressBuilder> {
  _$ScheduledInstancesIpv6Address? _$v;

  String? _ipv6Address;
  String? get ipv6Address => _$this._ipv6Address;
  set ipv6Address(String? ipv6Address) => _$this._ipv6Address = ipv6Address;

  ScheduledInstancesIpv6AddressBuilder();

  ScheduledInstancesIpv6AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Address = $v.ipv6Address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesIpv6Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesIpv6Address;
  }

  @override
  void update(void Function(ScheduledInstancesIpv6AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesIpv6Address build() => _build();

  _$ScheduledInstancesIpv6Address _build() {
    final _$result =
        _$v ?? new _$ScheduledInstancesIpv6Address._(ipv6Address: ipv6Address);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
