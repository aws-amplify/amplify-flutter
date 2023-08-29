// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_interface_private_ip_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfacePrivateIpAddress
    extends NetworkInterfacePrivateIpAddress {
  @override
  final NetworkInterfaceAssociation? association;
  @override
  final bool primary;
  @override
  final String? privateDnsName;
  @override
  final String? privateIpAddress;

  factory _$NetworkInterfacePrivateIpAddress(
          [void Function(NetworkInterfacePrivateIpAddressBuilder)? updates]) =>
      (new NetworkInterfacePrivateIpAddressBuilder()..update(updates))._build();

  _$NetworkInterfacePrivateIpAddress._(
      {this.association,
      required this.primary,
      this.privateDnsName,
      this.privateIpAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        primary, r'NetworkInterfacePrivateIpAddress', 'primary');
  }

  @override
  NetworkInterfacePrivateIpAddress rebuild(
          void Function(NetworkInterfacePrivateIpAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfacePrivateIpAddressBuilder toBuilder() =>
      new NetworkInterfacePrivateIpAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfacePrivateIpAddress &&
        association == other.association &&
        primary == other.primary &&
        privateDnsName == other.privateDnsName &&
        privateIpAddress == other.privateIpAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, association.hashCode);
    _$hash = $jc(_$hash, primary.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfacePrivateIpAddressBuilder
    implements
        Builder<NetworkInterfacePrivateIpAddress,
            NetworkInterfacePrivateIpAddressBuilder> {
  _$NetworkInterfacePrivateIpAddress? _$v;

  NetworkInterfaceAssociationBuilder? _association;
  NetworkInterfaceAssociationBuilder get association =>
      _$this._association ??= new NetworkInterfaceAssociationBuilder();
  set association(NetworkInterfaceAssociationBuilder? association) =>
      _$this._association = association;

  bool? _primary;
  bool? get primary => _$this._primary;
  set primary(bool? primary) => _$this._primary = primary;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  NetworkInterfacePrivateIpAddressBuilder() {
    NetworkInterfacePrivateIpAddress._init(this);
  }

  NetworkInterfacePrivateIpAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _association = $v.association?.toBuilder();
      _primary = $v.primary;
      _privateDnsName = $v.privateDnsName;
      _privateIpAddress = $v.privateIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfacePrivateIpAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfacePrivateIpAddress;
  }

  @override
  void update(void Function(NetworkInterfacePrivateIpAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfacePrivateIpAddress build() => _build();

  _$NetworkInterfacePrivateIpAddress _build() {
    _$NetworkInterfacePrivateIpAddress _$result;
    try {
      _$result = _$v ??
          new _$NetworkInterfacePrivateIpAddress._(
              association: _association?.build(),
              primary: BuiltValueNullFieldError.checkNotNull(
                  primary, r'NetworkInterfacePrivateIpAddress', 'primary'),
              privateDnsName: privateDnsName,
              privateIpAddress: privateIpAddress);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInterfacePrivateIpAddress', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
