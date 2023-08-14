// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_interface_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfaceAssociation extends NetworkInterfaceAssociation {
  @override
  final String? allocationId;
  @override
  final String? associationId;
  @override
  final String? ipOwnerId;
  @override
  final String? publicDnsName;
  @override
  final String? publicIp;
  @override
  final String? customerOwnedIp;
  @override
  final String? carrierIp;

  factory _$NetworkInterfaceAssociation(
          [void Function(NetworkInterfaceAssociationBuilder)? updates]) =>
      (new NetworkInterfaceAssociationBuilder()..update(updates))._build();

  _$NetworkInterfaceAssociation._(
      {this.allocationId,
      this.associationId,
      this.ipOwnerId,
      this.publicDnsName,
      this.publicIp,
      this.customerOwnedIp,
      this.carrierIp})
      : super._();

  @override
  NetworkInterfaceAssociation rebuild(
          void Function(NetworkInterfaceAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfaceAssociationBuilder toBuilder() =>
      new NetworkInterfaceAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfaceAssociation &&
        allocationId == other.allocationId &&
        associationId == other.associationId &&
        ipOwnerId == other.ipOwnerId &&
        publicDnsName == other.publicDnsName &&
        publicIp == other.publicIp &&
        customerOwnedIp == other.customerOwnedIp &&
        carrierIp == other.carrierIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, ipOwnerId.hashCode);
    _$hash = $jc(_$hash, publicDnsName.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, customerOwnedIp.hashCode);
    _$hash = $jc(_$hash, carrierIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfaceAssociationBuilder
    implements
        Builder<NetworkInterfaceAssociation,
            NetworkInterfaceAssociationBuilder> {
  _$NetworkInterfaceAssociation? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

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

  String? _customerOwnedIp;
  String? get customerOwnedIp => _$this._customerOwnedIp;
  set customerOwnedIp(String? customerOwnedIp) =>
      _$this._customerOwnedIp = customerOwnedIp;

  String? _carrierIp;
  String? get carrierIp => _$this._carrierIp;
  set carrierIp(String? carrierIp) => _$this._carrierIp = carrierIp;

  NetworkInterfaceAssociationBuilder();

  NetworkInterfaceAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _associationId = $v.associationId;
      _ipOwnerId = $v.ipOwnerId;
      _publicDnsName = $v.publicDnsName;
      _publicIp = $v.publicIp;
      _customerOwnedIp = $v.customerOwnedIp;
      _carrierIp = $v.carrierIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfaceAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfaceAssociation;
  }

  @override
  void update(void Function(NetworkInterfaceAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfaceAssociation build() => _build();

  _$NetworkInterfaceAssociation _build() {
    final _$result = _$v ??
        new _$NetworkInterfaceAssociation._(
            allocationId: allocationId,
            associationId: associationId,
            ipOwnerId: ipOwnerId,
            publicDnsName: publicDnsName,
            publicIp: publicIp,
            customerOwnedIp: customerOwnedIp,
            carrierIp: carrierIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
