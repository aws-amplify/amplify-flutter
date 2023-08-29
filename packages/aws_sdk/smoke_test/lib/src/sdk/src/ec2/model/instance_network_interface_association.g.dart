// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_network_interface_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceNetworkInterfaceAssociation
    extends InstanceNetworkInterfaceAssociation {
  @override
  final String? carrierIp;
  @override
  final String? customerOwnedIp;
  @override
  final String? ipOwnerId;
  @override
  final String? publicDnsName;
  @override
  final String? publicIp;

  factory _$InstanceNetworkInterfaceAssociation(
          [void Function(InstanceNetworkInterfaceAssociationBuilder)?
              updates]) =>
      (new InstanceNetworkInterfaceAssociationBuilder()..update(updates))
          ._build();

  _$InstanceNetworkInterfaceAssociation._(
      {this.carrierIp,
      this.customerOwnedIp,
      this.ipOwnerId,
      this.publicDnsName,
      this.publicIp})
      : super._();

  @override
  InstanceNetworkInterfaceAssociation rebuild(
          void Function(InstanceNetworkInterfaceAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceNetworkInterfaceAssociationBuilder toBuilder() =>
      new InstanceNetworkInterfaceAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceNetworkInterfaceAssociation &&
        carrierIp == other.carrierIp &&
        customerOwnedIp == other.customerOwnedIp &&
        ipOwnerId == other.ipOwnerId &&
        publicDnsName == other.publicDnsName &&
        publicIp == other.publicIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, carrierIp.hashCode);
    _$hash = $jc(_$hash, customerOwnedIp.hashCode);
    _$hash = $jc(_$hash, ipOwnerId.hashCode);
    _$hash = $jc(_$hash, publicDnsName.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceNetworkInterfaceAssociationBuilder
    implements
        Builder<InstanceNetworkInterfaceAssociation,
            InstanceNetworkInterfaceAssociationBuilder> {
  _$InstanceNetworkInterfaceAssociation? _$v;

  String? _carrierIp;
  String? get carrierIp => _$this._carrierIp;
  set carrierIp(String? carrierIp) => _$this._carrierIp = carrierIp;

  String? _customerOwnedIp;
  String? get customerOwnedIp => _$this._customerOwnedIp;
  set customerOwnedIp(String? customerOwnedIp) =>
      _$this._customerOwnedIp = customerOwnedIp;

  String? _ipOwnerId;
  String? get ipOwnerId => _$this._ipOwnerId;
  set ipOwnerId(String? ipOwnerId) => _$this._ipOwnerId = ipOwnerId;

  String? _publicDnsName;
  String? get publicDnsName => _$this._publicDnsName;
  set publicDnsName(String? publicDnsName) =>
      _$this._publicDnsName = publicDnsName;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  InstanceNetworkInterfaceAssociationBuilder();

  InstanceNetworkInterfaceAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carrierIp = $v.carrierIp;
      _customerOwnedIp = $v.customerOwnedIp;
      _ipOwnerId = $v.ipOwnerId;
      _publicDnsName = $v.publicDnsName;
      _publicIp = $v.publicIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceNetworkInterfaceAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceNetworkInterfaceAssociation;
  }

  @override
  void update(
      void Function(InstanceNetworkInterfaceAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceNetworkInterfaceAssociation build() => _build();

  _$InstanceNetworkInterfaceAssociation _build() {
    final _$result = _$v ??
        new _$InstanceNetworkInterfaceAssociation._(
            carrierIp: carrierIp,
            customerOwnedIp: customerOwnedIp,
            ipOwnerId: ipOwnerId,
            publicDnsName: publicDnsName,
            publicIp: publicIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
