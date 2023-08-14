// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_private_ip_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstancePrivateIpAddress extends InstancePrivateIpAddress {
  @override
  final InstanceNetworkInterfaceAssociation? association;
  @override
  final bool primary;
  @override
  final String? privateDnsName;
  @override
  final String? privateIpAddress;

  factory _$InstancePrivateIpAddress(
          [void Function(InstancePrivateIpAddressBuilder)? updates]) =>
      (new InstancePrivateIpAddressBuilder()..update(updates))._build();

  _$InstancePrivateIpAddress._(
      {this.association,
      required this.primary,
      this.privateDnsName,
      this.privateIpAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        primary, r'InstancePrivateIpAddress', 'primary');
  }

  @override
  InstancePrivateIpAddress rebuild(
          void Function(InstancePrivateIpAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstancePrivateIpAddressBuilder toBuilder() =>
      new InstancePrivateIpAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstancePrivateIpAddress &&
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

class InstancePrivateIpAddressBuilder
    implements
        Builder<InstancePrivateIpAddress, InstancePrivateIpAddressBuilder> {
  _$InstancePrivateIpAddress? _$v;

  InstanceNetworkInterfaceAssociationBuilder? _association;
  InstanceNetworkInterfaceAssociationBuilder get association =>
      _$this._association ??= new InstanceNetworkInterfaceAssociationBuilder();
  set association(InstanceNetworkInterfaceAssociationBuilder? association) =>
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

  InstancePrivateIpAddressBuilder() {
    InstancePrivateIpAddress._init(this);
  }

  InstancePrivateIpAddressBuilder get _$this {
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
  void replace(InstancePrivateIpAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstancePrivateIpAddress;
  }

  @override
  void update(void Function(InstancePrivateIpAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstancePrivateIpAddress build() => _build();

  _$InstancePrivateIpAddress _build() {
    _$InstancePrivateIpAddress _$result;
    try {
      _$result = _$v ??
          new _$InstancePrivateIpAddress._(
              association: _association?.build(),
              primary: BuiltValueNullFieldError.checkNotNull(
                  primary, r'InstancePrivateIpAddress', 'primary'),
              privateDnsName: privateDnsName,
              privateIpAddress: privateIpAddress);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstancePrivateIpAddress', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
