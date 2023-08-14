// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assigned_private_ip_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignedPrivateIpAddress extends AssignedPrivateIpAddress {
  @override
  final String? privateIpAddress;

  factory _$AssignedPrivateIpAddress(
          [void Function(AssignedPrivateIpAddressBuilder)? updates]) =>
      (new AssignedPrivateIpAddressBuilder()..update(updates))._build();

  _$AssignedPrivateIpAddress._({this.privateIpAddress}) : super._();

  @override
  AssignedPrivateIpAddress rebuild(
          void Function(AssignedPrivateIpAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignedPrivateIpAddressBuilder toBuilder() =>
      new AssignedPrivateIpAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignedPrivateIpAddress &&
        privateIpAddress == other.privateIpAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssignedPrivateIpAddressBuilder
    implements
        Builder<AssignedPrivateIpAddress, AssignedPrivateIpAddressBuilder> {
  _$AssignedPrivateIpAddress? _$v;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  AssignedPrivateIpAddressBuilder();

  AssignedPrivateIpAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privateIpAddress = $v.privateIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignedPrivateIpAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssignedPrivateIpAddress;
  }

  @override
  void update(void Function(AssignedPrivateIpAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignedPrivateIpAddress build() => _build();

  _$AssignedPrivateIpAddress _build() {
    final _$result = _$v ??
        new _$AssignedPrivateIpAddress._(privateIpAddress: privateIpAddress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
