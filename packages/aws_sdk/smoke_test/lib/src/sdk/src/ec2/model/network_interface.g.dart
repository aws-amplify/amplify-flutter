// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_interface.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterface extends NetworkInterface {
  @override
  final NetworkInterfaceAssociation? association;
  @override
  final NetworkInterfaceAttachment? attachment;
  @override
  final String? availabilityZone;
  @override
  final String? description;
  @override
  final _i2.BuiltList<GroupIdentifier>? groups;
  @override
  final NetworkInterfaceType? interfaceType;
  @override
  final _i2.BuiltList<NetworkInterfaceIpv6Address>? ipv6Addresses;
  @override
  final String? macAddress;
  @override
  final String? networkInterfaceId;
  @override
  final String? outpostArn;
  @override
  final String? ownerId;
  @override
  final String? privateDnsName;
  @override
  final String? privateIpAddress;
  @override
  final _i2.BuiltList<NetworkInterfacePrivateIpAddress>? privateIpAddresses;
  @override
  final _i2.BuiltList<Ipv4PrefixSpecification>? ipv4Prefixes;
  @override
  final _i2.BuiltList<Ipv6PrefixSpecification>? ipv6Prefixes;
  @override
  final String? requesterId;
  @override
  final bool requesterManaged;
  @override
  final bool sourceDestCheck;
  @override
  final NetworkInterfaceStatus? status;
  @override
  final String? subnetId;
  @override
  final _i2.BuiltList<Tag>? tagSet;
  @override
  final String? vpcId;
  @override
  final bool denyAllIgwTraffic;
  @override
  final bool ipv6Native;
  @override
  final String? ipv6Address;

  factory _$NetworkInterface(
          [void Function(NetworkInterfaceBuilder)? updates]) =>
      (new NetworkInterfaceBuilder()..update(updates))._build();

  _$NetworkInterface._(
      {this.association,
      this.attachment,
      this.availabilityZone,
      this.description,
      this.groups,
      this.interfaceType,
      this.ipv6Addresses,
      this.macAddress,
      this.networkInterfaceId,
      this.outpostArn,
      this.ownerId,
      this.privateDnsName,
      this.privateIpAddress,
      this.privateIpAddresses,
      this.ipv4Prefixes,
      this.ipv6Prefixes,
      this.requesterId,
      required this.requesterManaged,
      required this.sourceDestCheck,
      this.status,
      this.subnetId,
      this.tagSet,
      this.vpcId,
      required this.denyAllIgwTraffic,
      required this.ipv6Native,
      this.ipv6Address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requesterManaged, r'NetworkInterface', 'requesterManaged');
    BuiltValueNullFieldError.checkNotNull(
        sourceDestCheck, r'NetworkInterface', 'sourceDestCheck');
    BuiltValueNullFieldError.checkNotNull(
        denyAllIgwTraffic, r'NetworkInterface', 'denyAllIgwTraffic');
    BuiltValueNullFieldError.checkNotNull(
        ipv6Native, r'NetworkInterface', 'ipv6Native');
  }

  @override
  NetworkInterface rebuild(void Function(NetworkInterfaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfaceBuilder toBuilder() =>
      new NetworkInterfaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterface &&
        association == other.association &&
        attachment == other.attachment &&
        availabilityZone == other.availabilityZone &&
        description == other.description &&
        groups == other.groups &&
        interfaceType == other.interfaceType &&
        ipv6Addresses == other.ipv6Addresses &&
        macAddress == other.macAddress &&
        networkInterfaceId == other.networkInterfaceId &&
        outpostArn == other.outpostArn &&
        ownerId == other.ownerId &&
        privateDnsName == other.privateDnsName &&
        privateIpAddress == other.privateIpAddress &&
        privateIpAddresses == other.privateIpAddresses &&
        ipv4Prefixes == other.ipv4Prefixes &&
        ipv6Prefixes == other.ipv6Prefixes &&
        requesterId == other.requesterId &&
        requesterManaged == other.requesterManaged &&
        sourceDestCheck == other.sourceDestCheck &&
        status == other.status &&
        subnetId == other.subnetId &&
        tagSet == other.tagSet &&
        vpcId == other.vpcId &&
        denyAllIgwTraffic == other.denyAllIgwTraffic &&
        ipv6Native == other.ipv6Native &&
        ipv6Address == other.ipv6Address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, association.hashCode);
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, interfaceType.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, macAddress.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, ipv4Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv6Prefixes.hashCode);
    _$hash = $jc(_$hash, requesterId.hashCode);
    _$hash = $jc(_$hash, requesterManaged.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, tagSet.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, denyAllIgwTraffic.hashCode);
    _$hash = $jc(_$hash, ipv6Native.hashCode);
    _$hash = $jc(_$hash, ipv6Address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfaceBuilder
    implements Builder<NetworkInterface, NetworkInterfaceBuilder> {
  _$NetworkInterface? _$v;

  NetworkInterfaceAssociationBuilder? _association;
  NetworkInterfaceAssociationBuilder get association =>
      _$this._association ??= new NetworkInterfaceAssociationBuilder();
  set association(NetworkInterfaceAssociationBuilder? association) =>
      _$this._association = association;

  NetworkInterfaceAttachmentBuilder? _attachment;
  NetworkInterfaceAttachmentBuilder get attachment =>
      _$this._attachment ??= new NetworkInterfaceAttachmentBuilder();
  set attachment(NetworkInterfaceAttachmentBuilder? attachment) =>
      _$this._attachment = attachment;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<GroupIdentifier>? _groups;
  _i2.ListBuilder<GroupIdentifier> get groups =>
      _$this._groups ??= new _i2.ListBuilder<GroupIdentifier>();
  set groups(_i2.ListBuilder<GroupIdentifier>? groups) =>
      _$this._groups = groups;

  NetworkInterfaceType? _interfaceType;
  NetworkInterfaceType? get interfaceType => _$this._interfaceType;
  set interfaceType(NetworkInterfaceType? interfaceType) =>
      _$this._interfaceType = interfaceType;

  _i2.ListBuilder<NetworkInterfaceIpv6Address>? _ipv6Addresses;
  _i2.ListBuilder<NetworkInterfaceIpv6Address> get ipv6Addresses =>
      _$this._ipv6Addresses ??=
          new _i2.ListBuilder<NetworkInterfaceIpv6Address>();
  set ipv6Addresses(
          _i2.ListBuilder<NetworkInterfaceIpv6Address>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _macAddress;
  String? get macAddress => _$this._macAddress;
  set macAddress(String? macAddress) => _$this._macAddress = macAddress;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i2.ListBuilder<NetworkInterfacePrivateIpAddress>? _privateIpAddresses;
  _i2.ListBuilder<NetworkInterfacePrivateIpAddress> get privateIpAddresses =>
      _$this._privateIpAddresses ??=
          new _i2.ListBuilder<NetworkInterfacePrivateIpAddress>();
  set privateIpAddresses(
          _i2.ListBuilder<NetworkInterfacePrivateIpAddress>?
              privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  _i2.ListBuilder<Ipv4PrefixSpecification>? _ipv4Prefixes;
  _i2.ListBuilder<Ipv4PrefixSpecification> get ipv4Prefixes =>
      _$this._ipv4Prefixes ??= new _i2.ListBuilder<Ipv4PrefixSpecification>();
  set ipv4Prefixes(_i2.ListBuilder<Ipv4PrefixSpecification>? ipv4Prefixes) =>
      _$this._ipv4Prefixes = ipv4Prefixes;

  _i2.ListBuilder<Ipv6PrefixSpecification>? _ipv6Prefixes;
  _i2.ListBuilder<Ipv6PrefixSpecification> get ipv6Prefixes =>
      _$this._ipv6Prefixes ??= new _i2.ListBuilder<Ipv6PrefixSpecification>();
  set ipv6Prefixes(_i2.ListBuilder<Ipv6PrefixSpecification>? ipv6Prefixes) =>
      _$this._ipv6Prefixes = ipv6Prefixes;

  String? _requesterId;
  String? get requesterId => _$this._requesterId;
  set requesterId(String? requesterId) => _$this._requesterId = requesterId;

  bool? _requesterManaged;
  bool? get requesterManaged => _$this._requesterManaged;
  set requesterManaged(bool? requesterManaged) =>
      _$this._requesterManaged = requesterManaged;

  bool? _sourceDestCheck;
  bool? get sourceDestCheck => _$this._sourceDestCheck;
  set sourceDestCheck(bool? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  NetworkInterfaceStatus? _status;
  NetworkInterfaceStatus? get status => _$this._status;
  set status(NetworkInterfaceStatus? status) => _$this._status = status;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  _i2.ListBuilder<Tag>? _tagSet;
  _i2.ListBuilder<Tag> get tagSet =>
      _$this._tagSet ??= new _i2.ListBuilder<Tag>();
  set tagSet(_i2.ListBuilder<Tag>? tagSet) => _$this._tagSet = tagSet;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  bool? _denyAllIgwTraffic;
  bool? get denyAllIgwTraffic => _$this._denyAllIgwTraffic;
  set denyAllIgwTraffic(bool? denyAllIgwTraffic) =>
      _$this._denyAllIgwTraffic = denyAllIgwTraffic;

  bool? _ipv6Native;
  bool? get ipv6Native => _$this._ipv6Native;
  set ipv6Native(bool? ipv6Native) => _$this._ipv6Native = ipv6Native;

  String? _ipv6Address;
  String? get ipv6Address => _$this._ipv6Address;
  set ipv6Address(String? ipv6Address) => _$this._ipv6Address = ipv6Address;

  NetworkInterfaceBuilder() {
    NetworkInterface._init(this);
  }

  NetworkInterfaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _association = $v.association?.toBuilder();
      _attachment = $v.attachment?.toBuilder();
      _availabilityZone = $v.availabilityZone;
      _description = $v.description;
      _groups = $v.groups?.toBuilder();
      _interfaceType = $v.interfaceType;
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _macAddress = $v.macAddress;
      _networkInterfaceId = $v.networkInterfaceId;
      _outpostArn = $v.outpostArn;
      _ownerId = $v.ownerId;
      _privateDnsName = $v.privateDnsName;
      _privateIpAddress = $v.privateIpAddress;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _ipv4Prefixes = $v.ipv4Prefixes?.toBuilder();
      _ipv6Prefixes = $v.ipv6Prefixes?.toBuilder();
      _requesterId = $v.requesterId;
      _requesterManaged = $v.requesterManaged;
      _sourceDestCheck = $v.sourceDestCheck;
      _status = $v.status;
      _subnetId = $v.subnetId;
      _tagSet = $v.tagSet?.toBuilder();
      _vpcId = $v.vpcId;
      _denyAllIgwTraffic = $v.denyAllIgwTraffic;
      _ipv6Native = $v.ipv6Native;
      _ipv6Address = $v.ipv6Address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterface other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterface;
  }

  @override
  void update(void Function(NetworkInterfaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterface build() => _build();

  _$NetworkInterface _build() {
    _$NetworkInterface _$result;
    try {
      _$result = _$v ??
          new _$NetworkInterface._(
              association: _association?.build(),
              attachment: _attachment?.build(),
              availabilityZone: availabilityZone,
              description: description,
              groups: _groups?.build(),
              interfaceType: interfaceType,
              ipv6Addresses: _ipv6Addresses?.build(),
              macAddress: macAddress,
              networkInterfaceId: networkInterfaceId,
              outpostArn: outpostArn,
              ownerId: ownerId,
              privateDnsName: privateDnsName,
              privateIpAddress: privateIpAddress,
              privateIpAddresses: _privateIpAddresses?.build(),
              ipv4Prefixes: _ipv4Prefixes?.build(),
              ipv6Prefixes: _ipv6Prefixes?.build(),
              requesterId: requesterId,
              requesterManaged: BuiltValueNullFieldError.checkNotNull(
                  requesterManaged, r'NetworkInterface', 'requesterManaged'),
              sourceDestCheck: BuiltValueNullFieldError.checkNotNull(
                  sourceDestCheck, r'NetworkInterface', 'sourceDestCheck'),
              status: status,
              subnetId: subnetId,
              tagSet: _tagSet?.build(),
              vpcId: vpcId,
              denyAllIgwTraffic: BuiltValueNullFieldError.checkNotNull(
                  denyAllIgwTraffic, r'NetworkInterface', 'denyAllIgwTraffic'),
              ipv6Native: BuiltValueNullFieldError.checkNotNull(
                  ipv6Native, r'NetworkInterface', 'ipv6Native'),
              ipv6Address: ipv6Address);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
        _$failedField = 'attachment';
        _attachment?.build();

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

        _$failedField = 'tagSet';
        _tagSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInterface', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
