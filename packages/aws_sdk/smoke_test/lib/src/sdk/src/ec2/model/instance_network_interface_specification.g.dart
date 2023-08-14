// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_network_interface_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceNetworkInterfaceSpecification
    extends InstanceNetworkInterfaceSpecification {
  @override
  final bool associatePublicIpAddress;
  @override
  final bool deleteOnTermination;
  @override
  final String? description;
  @override
  final int deviceIndex;
  @override
  final _i2.BuiltList<String>? groups;
  @override
  final int ipv6AddressCount;
  @override
  final _i2.BuiltList<InstanceIpv6Address>? ipv6Addresses;
  @override
  final String? networkInterfaceId;
  @override
  final String? privateIpAddress;
  @override
  final _i2.BuiltList<PrivateIpAddressSpecification>? privateIpAddresses;
  @override
  final int secondaryPrivateIpAddressCount;
  @override
  final String? subnetId;
  @override
  final bool associateCarrierIpAddress;
  @override
  final String? interfaceType;
  @override
  final int networkCardIndex;
  @override
  final _i2.BuiltList<Ipv4PrefixSpecificationRequest>? ipv4Prefixes;
  @override
  final int ipv4PrefixCount;
  @override
  final _i2.BuiltList<Ipv6PrefixSpecificationRequest>? ipv6Prefixes;
  @override
  final int ipv6PrefixCount;
  @override
  final bool primaryIpv6;

  factory _$InstanceNetworkInterfaceSpecification(
          [void Function(InstanceNetworkInterfaceSpecificationBuilder)?
              updates]) =>
      (new InstanceNetworkInterfaceSpecificationBuilder()..update(updates))
          ._build();

  _$InstanceNetworkInterfaceSpecification._(
      {required this.associatePublicIpAddress,
      required this.deleteOnTermination,
      this.description,
      required this.deviceIndex,
      this.groups,
      required this.ipv6AddressCount,
      this.ipv6Addresses,
      this.networkInterfaceId,
      this.privateIpAddress,
      this.privateIpAddresses,
      required this.secondaryPrivateIpAddressCount,
      this.subnetId,
      required this.associateCarrierIpAddress,
      this.interfaceType,
      required this.networkCardIndex,
      this.ipv4Prefixes,
      required this.ipv4PrefixCount,
      this.ipv6Prefixes,
      required this.ipv6PrefixCount,
      required this.primaryIpv6})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(associatePublicIpAddress,
        r'InstanceNetworkInterfaceSpecification', 'associatePublicIpAddress');
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'InstanceNetworkInterfaceSpecification', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        deviceIndex, r'InstanceNetworkInterfaceSpecification', 'deviceIndex');
    BuiltValueNullFieldError.checkNotNull(ipv6AddressCount,
        r'InstanceNetworkInterfaceSpecification', 'ipv6AddressCount');
    BuiltValueNullFieldError.checkNotNull(
        secondaryPrivateIpAddressCount,
        r'InstanceNetworkInterfaceSpecification',
        'secondaryPrivateIpAddressCount');
    BuiltValueNullFieldError.checkNotNull(associateCarrierIpAddress,
        r'InstanceNetworkInterfaceSpecification', 'associateCarrierIpAddress');
    BuiltValueNullFieldError.checkNotNull(networkCardIndex,
        r'InstanceNetworkInterfaceSpecification', 'networkCardIndex');
    BuiltValueNullFieldError.checkNotNull(ipv4PrefixCount,
        r'InstanceNetworkInterfaceSpecification', 'ipv4PrefixCount');
    BuiltValueNullFieldError.checkNotNull(ipv6PrefixCount,
        r'InstanceNetworkInterfaceSpecification', 'ipv6PrefixCount');
    BuiltValueNullFieldError.checkNotNull(
        primaryIpv6, r'InstanceNetworkInterfaceSpecification', 'primaryIpv6');
  }

  @override
  InstanceNetworkInterfaceSpecification rebuild(
          void Function(InstanceNetworkInterfaceSpecificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceNetworkInterfaceSpecificationBuilder toBuilder() =>
      new InstanceNetworkInterfaceSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceNetworkInterfaceSpecification &&
        associatePublicIpAddress == other.associatePublicIpAddress &&
        deleteOnTermination == other.deleteOnTermination &&
        description == other.description &&
        deviceIndex == other.deviceIndex &&
        groups == other.groups &&
        ipv6AddressCount == other.ipv6AddressCount &&
        ipv6Addresses == other.ipv6Addresses &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIpAddress == other.privateIpAddress &&
        privateIpAddresses == other.privateIpAddresses &&
        secondaryPrivateIpAddressCount ==
            other.secondaryPrivateIpAddressCount &&
        subnetId == other.subnetId &&
        associateCarrierIpAddress == other.associateCarrierIpAddress &&
        interfaceType == other.interfaceType &&
        networkCardIndex == other.networkCardIndex &&
        ipv4Prefixes == other.ipv4Prefixes &&
        ipv4PrefixCount == other.ipv4PrefixCount &&
        ipv6Prefixes == other.ipv6Prefixes &&
        ipv6PrefixCount == other.ipv6PrefixCount &&
        primaryIpv6 == other.primaryIpv6;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associatePublicIpAddress.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, deviceIndex.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ipv6AddressCount.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, secondaryPrivateIpAddressCount.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, associateCarrierIpAddress.hashCode);
    _$hash = $jc(_$hash, interfaceType.hashCode);
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jc(_$hash, ipv4Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv4PrefixCount.hashCode);
    _$hash = $jc(_$hash, ipv6Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv6PrefixCount.hashCode);
    _$hash = $jc(_$hash, primaryIpv6.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceNetworkInterfaceSpecificationBuilder
    implements
        Builder<InstanceNetworkInterfaceSpecification,
            InstanceNetworkInterfaceSpecificationBuilder> {
  _$InstanceNetworkInterfaceSpecification? _$v;

  bool? _associatePublicIpAddress;
  bool? get associatePublicIpAddress => _$this._associatePublicIpAddress;
  set associatePublicIpAddress(bool? associatePublicIpAddress) =>
      _$this._associatePublicIpAddress = associatePublicIpAddress;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _deviceIndex;
  int? get deviceIndex => _$this._deviceIndex;
  set deviceIndex(int? deviceIndex) => _$this._deviceIndex = deviceIndex;

  _i2.ListBuilder<String>? _groups;
  _i2.ListBuilder<String> get groups =>
      _$this._groups ??= new _i2.ListBuilder<String>();
  set groups(_i2.ListBuilder<String>? groups) => _$this._groups = groups;

  int? _ipv6AddressCount;
  int? get ipv6AddressCount => _$this._ipv6AddressCount;
  set ipv6AddressCount(int? ipv6AddressCount) =>
      _$this._ipv6AddressCount = ipv6AddressCount;

  _i2.ListBuilder<InstanceIpv6Address>? _ipv6Addresses;
  _i2.ListBuilder<InstanceIpv6Address> get ipv6Addresses =>
      _$this._ipv6Addresses ??= new _i2.ListBuilder<InstanceIpv6Address>();
  set ipv6Addresses(_i2.ListBuilder<InstanceIpv6Address>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i2.ListBuilder<PrivateIpAddressSpecification>? _privateIpAddresses;
  _i2.ListBuilder<PrivateIpAddressSpecification> get privateIpAddresses =>
      _$this._privateIpAddresses ??=
          new _i2.ListBuilder<PrivateIpAddressSpecification>();
  set privateIpAddresses(
          _i2.ListBuilder<PrivateIpAddressSpecification>? privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  int? _secondaryPrivateIpAddressCount;
  int? get secondaryPrivateIpAddressCount =>
      _$this._secondaryPrivateIpAddressCount;
  set secondaryPrivateIpAddressCount(int? secondaryPrivateIpAddressCount) =>
      _$this._secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  bool? _associateCarrierIpAddress;
  bool? get associateCarrierIpAddress => _$this._associateCarrierIpAddress;
  set associateCarrierIpAddress(bool? associateCarrierIpAddress) =>
      _$this._associateCarrierIpAddress = associateCarrierIpAddress;

  String? _interfaceType;
  String? get interfaceType => _$this._interfaceType;
  set interfaceType(String? interfaceType) =>
      _$this._interfaceType = interfaceType;

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  _i2.ListBuilder<Ipv4PrefixSpecificationRequest>? _ipv4Prefixes;
  _i2.ListBuilder<Ipv4PrefixSpecificationRequest> get ipv4Prefixes =>
      _$this._ipv4Prefixes ??=
          new _i2.ListBuilder<Ipv4PrefixSpecificationRequest>();
  set ipv4Prefixes(
          _i2.ListBuilder<Ipv4PrefixSpecificationRequest>? ipv4Prefixes) =>
      _$this._ipv4Prefixes = ipv4Prefixes;

  int? _ipv4PrefixCount;
  int? get ipv4PrefixCount => _$this._ipv4PrefixCount;
  set ipv4PrefixCount(int? ipv4PrefixCount) =>
      _$this._ipv4PrefixCount = ipv4PrefixCount;

  _i2.ListBuilder<Ipv6PrefixSpecificationRequest>? _ipv6Prefixes;
  _i2.ListBuilder<Ipv6PrefixSpecificationRequest> get ipv6Prefixes =>
      _$this._ipv6Prefixes ??=
          new _i2.ListBuilder<Ipv6PrefixSpecificationRequest>();
  set ipv6Prefixes(
          _i2.ListBuilder<Ipv6PrefixSpecificationRequest>? ipv6Prefixes) =>
      _$this._ipv6Prefixes = ipv6Prefixes;

  int? _ipv6PrefixCount;
  int? get ipv6PrefixCount => _$this._ipv6PrefixCount;
  set ipv6PrefixCount(int? ipv6PrefixCount) =>
      _$this._ipv6PrefixCount = ipv6PrefixCount;

  bool? _primaryIpv6;
  bool? get primaryIpv6 => _$this._primaryIpv6;
  set primaryIpv6(bool? primaryIpv6) => _$this._primaryIpv6 = primaryIpv6;

  InstanceNetworkInterfaceSpecificationBuilder() {
    InstanceNetworkInterfaceSpecification._init(this);
  }

  InstanceNetworkInterfaceSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associatePublicIpAddress = $v.associatePublicIpAddress;
      _deleteOnTermination = $v.deleteOnTermination;
      _description = $v.description;
      _deviceIndex = $v.deviceIndex;
      _groups = $v.groups?.toBuilder();
      _ipv6AddressCount = $v.ipv6AddressCount;
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _privateIpAddress = $v.privateIpAddress;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _secondaryPrivateIpAddressCount = $v.secondaryPrivateIpAddressCount;
      _subnetId = $v.subnetId;
      _associateCarrierIpAddress = $v.associateCarrierIpAddress;
      _interfaceType = $v.interfaceType;
      _networkCardIndex = $v.networkCardIndex;
      _ipv4Prefixes = $v.ipv4Prefixes?.toBuilder();
      _ipv4PrefixCount = $v.ipv4PrefixCount;
      _ipv6Prefixes = $v.ipv6Prefixes?.toBuilder();
      _ipv6PrefixCount = $v.ipv6PrefixCount;
      _primaryIpv6 = $v.primaryIpv6;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceNetworkInterfaceSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceNetworkInterfaceSpecification;
  }

  @override
  void update(
      void Function(InstanceNetworkInterfaceSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceNetworkInterfaceSpecification build() => _build();

  _$InstanceNetworkInterfaceSpecification _build() {
    _$InstanceNetworkInterfaceSpecification _$result;
    try {
      _$result = _$v ??
          new _$InstanceNetworkInterfaceSpecification._(
              associatePublicIpAddress: BuiltValueNullFieldError.checkNotNull(
                  associatePublicIpAddress, r'InstanceNetworkInterfaceSpecification', 'associatePublicIpAddress'),
              deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                  deleteOnTermination, r'InstanceNetworkInterfaceSpecification', 'deleteOnTermination'),
              description: description,
              deviceIndex: BuiltValueNullFieldError.checkNotNull(
                  deviceIndex, r'InstanceNetworkInterfaceSpecification', 'deviceIndex'),
              groups: _groups?.build(),
              ipv6AddressCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6AddressCount, r'InstanceNetworkInterfaceSpecification', 'ipv6AddressCount'),
              ipv6Addresses: _ipv6Addresses?.build(),
              networkInterfaceId: networkInterfaceId,
              privateIpAddress: privateIpAddress,
              privateIpAddresses: _privateIpAddresses?.build(),
              secondaryPrivateIpAddressCount:
                  BuiltValueNullFieldError.checkNotNull(
                      secondaryPrivateIpAddressCount,
                      r'InstanceNetworkInterfaceSpecification',
                      'secondaryPrivateIpAddressCount'),
              subnetId: subnetId,
              associateCarrierIpAddress: BuiltValueNullFieldError.checkNotNull(
                  associateCarrierIpAddress, r'InstanceNetworkInterfaceSpecification', 'associateCarrierIpAddress'),
              interfaceType: interfaceType,
              networkCardIndex: BuiltValueNullFieldError.checkNotNull(networkCardIndex, r'InstanceNetworkInterfaceSpecification', 'networkCardIndex'),
              ipv4Prefixes: _ipv4Prefixes?.build(),
              ipv4PrefixCount: BuiltValueNullFieldError.checkNotNull(ipv4PrefixCount, r'InstanceNetworkInterfaceSpecification', 'ipv4PrefixCount'),
              ipv6Prefixes: _ipv6Prefixes?.build(),
              ipv6PrefixCount: BuiltValueNullFieldError.checkNotNull(ipv6PrefixCount, r'InstanceNetworkInterfaceSpecification', 'ipv6PrefixCount'),
              primaryIpv6: BuiltValueNullFieldError.checkNotNull(primaryIpv6, r'InstanceNetworkInterfaceSpecification', 'primaryIpv6'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'ipv6Addresses';
        _ipv6Addresses?.build();

        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();

        _$failedField = 'ipv4Prefixes';
        _ipv4Prefixes?.build();

        _$failedField = 'ipv6Prefixes';
        _ipv6Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceNetworkInterfaceSpecification',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
