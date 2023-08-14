// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subnet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Subnet extends Subnet {
  @override
  final String? availabilityZone;
  @override
  final String? availabilityZoneId;
  @override
  final int availableIpAddressCount;
  @override
  final String? cidrBlock;
  @override
  final bool defaultForAz;
  @override
  final int enableLniAtDeviceIndex;
  @override
  final bool mapPublicIpOnLaunch;
  @override
  final bool mapCustomerOwnedIpOnLaunch;
  @override
  final String? customerOwnedIpv4Pool;
  @override
  final SubnetState? state;
  @override
  final String? subnetId;
  @override
  final String? vpcId;
  @override
  final String? ownerId;
  @override
  final bool assignIpv6AddressOnCreation;
  @override
  final _i2.BuiltList<SubnetIpv6CidrBlockAssociation>?
      ipv6CidrBlockAssociationSet;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? subnetArn;
  @override
  final String? outpostArn;
  @override
  final bool enableDns64;
  @override
  final bool ipv6Native;
  @override
  final PrivateDnsNameOptionsOnLaunch? privateDnsNameOptionsOnLaunch;

  factory _$Subnet([void Function(SubnetBuilder)? updates]) =>
      (new SubnetBuilder()..update(updates))._build();

  _$Subnet._(
      {this.availabilityZone,
      this.availabilityZoneId,
      required this.availableIpAddressCount,
      this.cidrBlock,
      required this.defaultForAz,
      required this.enableLniAtDeviceIndex,
      required this.mapPublicIpOnLaunch,
      required this.mapCustomerOwnedIpOnLaunch,
      this.customerOwnedIpv4Pool,
      this.state,
      this.subnetId,
      this.vpcId,
      this.ownerId,
      required this.assignIpv6AddressOnCreation,
      this.ipv6CidrBlockAssociationSet,
      this.tags,
      this.subnetArn,
      this.outpostArn,
      required this.enableDns64,
      required this.ipv6Native,
      this.privateDnsNameOptionsOnLaunch})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        availableIpAddressCount, r'Subnet', 'availableIpAddressCount');
    BuiltValueNullFieldError.checkNotNull(
        defaultForAz, r'Subnet', 'defaultForAz');
    BuiltValueNullFieldError.checkNotNull(
        enableLniAtDeviceIndex, r'Subnet', 'enableLniAtDeviceIndex');
    BuiltValueNullFieldError.checkNotNull(
        mapPublicIpOnLaunch, r'Subnet', 'mapPublicIpOnLaunch');
    BuiltValueNullFieldError.checkNotNull(
        mapCustomerOwnedIpOnLaunch, r'Subnet', 'mapCustomerOwnedIpOnLaunch');
    BuiltValueNullFieldError.checkNotNull(
        assignIpv6AddressOnCreation, r'Subnet', 'assignIpv6AddressOnCreation');
    BuiltValueNullFieldError.checkNotNull(
        enableDns64, r'Subnet', 'enableDns64');
    BuiltValueNullFieldError.checkNotNull(ipv6Native, r'Subnet', 'ipv6Native');
  }

  @override
  Subnet rebuild(void Function(SubnetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubnetBuilder toBuilder() => new SubnetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subnet &&
        availabilityZone == other.availabilityZone &&
        availabilityZoneId == other.availabilityZoneId &&
        availableIpAddressCount == other.availableIpAddressCount &&
        cidrBlock == other.cidrBlock &&
        defaultForAz == other.defaultForAz &&
        enableLniAtDeviceIndex == other.enableLniAtDeviceIndex &&
        mapPublicIpOnLaunch == other.mapPublicIpOnLaunch &&
        mapCustomerOwnedIpOnLaunch == other.mapCustomerOwnedIpOnLaunch &&
        customerOwnedIpv4Pool == other.customerOwnedIpv4Pool &&
        state == other.state &&
        subnetId == other.subnetId &&
        vpcId == other.vpcId &&
        ownerId == other.ownerId &&
        assignIpv6AddressOnCreation == other.assignIpv6AddressOnCreation &&
        ipv6CidrBlockAssociationSet == other.ipv6CidrBlockAssociationSet &&
        tags == other.tags &&
        subnetArn == other.subnetArn &&
        outpostArn == other.outpostArn &&
        enableDns64 == other.enableDns64 &&
        ipv6Native == other.ipv6Native &&
        privateDnsNameOptionsOnLaunch == other.privateDnsNameOptionsOnLaunch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, availableIpAddressCount.hashCode);
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, defaultForAz.hashCode);
    _$hash = $jc(_$hash, enableLniAtDeviceIndex.hashCode);
    _$hash = $jc(_$hash, mapPublicIpOnLaunch.hashCode);
    _$hash = $jc(_$hash, mapCustomerOwnedIpOnLaunch.hashCode);
    _$hash = $jc(_$hash, customerOwnedIpv4Pool.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, assignIpv6AddressOnCreation.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlockAssociationSet.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, subnetArn.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, enableDns64.hashCode);
    _$hash = $jc(_$hash, ipv6Native.hashCode);
    _$hash = $jc(_$hash, privateDnsNameOptionsOnLaunch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubnetBuilder implements Builder<Subnet, SubnetBuilder> {
  _$Subnet? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  int? _availableIpAddressCount;
  int? get availableIpAddressCount => _$this._availableIpAddressCount;
  set availableIpAddressCount(int? availableIpAddressCount) =>
      _$this._availableIpAddressCount = availableIpAddressCount;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  bool? _defaultForAz;
  bool? get defaultForAz => _$this._defaultForAz;
  set defaultForAz(bool? defaultForAz) => _$this._defaultForAz = defaultForAz;

  int? _enableLniAtDeviceIndex;
  int? get enableLniAtDeviceIndex => _$this._enableLniAtDeviceIndex;
  set enableLniAtDeviceIndex(int? enableLniAtDeviceIndex) =>
      _$this._enableLniAtDeviceIndex = enableLniAtDeviceIndex;

  bool? _mapPublicIpOnLaunch;
  bool? get mapPublicIpOnLaunch => _$this._mapPublicIpOnLaunch;
  set mapPublicIpOnLaunch(bool? mapPublicIpOnLaunch) =>
      _$this._mapPublicIpOnLaunch = mapPublicIpOnLaunch;

  bool? _mapCustomerOwnedIpOnLaunch;
  bool? get mapCustomerOwnedIpOnLaunch => _$this._mapCustomerOwnedIpOnLaunch;
  set mapCustomerOwnedIpOnLaunch(bool? mapCustomerOwnedIpOnLaunch) =>
      _$this._mapCustomerOwnedIpOnLaunch = mapCustomerOwnedIpOnLaunch;

  String? _customerOwnedIpv4Pool;
  String? get customerOwnedIpv4Pool => _$this._customerOwnedIpv4Pool;
  set customerOwnedIpv4Pool(String? customerOwnedIpv4Pool) =>
      _$this._customerOwnedIpv4Pool = customerOwnedIpv4Pool;

  SubnetState? _state;
  SubnetState? get state => _$this._state;
  set state(SubnetState? state) => _$this._state = state;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  bool? _assignIpv6AddressOnCreation;
  bool? get assignIpv6AddressOnCreation => _$this._assignIpv6AddressOnCreation;
  set assignIpv6AddressOnCreation(bool? assignIpv6AddressOnCreation) =>
      _$this._assignIpv6AddressOnCreation = assignIpv6AddressOnCreation;

  _i2.ListBuilder<SubnetIpv6CidrBlockAssociation>? _ipv6CidrBlockAssociationSet;
  _i2.ListBuilder<SubnetIpv6CidrBlockAssociation>
      get ipv6CidrBlockAssociationSet => _$this._ipv6CidrBlockAssociationSet ??=
          new _i2.ListBuilder<SubnetIpv6CidrBlockAssociation>();
  set ipv6CidrBlockAssociationSet(
          _i2.ListBuilder<SubnetIpv6CidrBlockAssociation>?
              ipv6CidrBlockAssociationSet) =>
      _$this._ipv6CidrBlockAssociationSet = ipv6CidrBlockAssociationSet;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _subnetArn;
  String? get subnetArn => _$this._subnetArn;
  set subnetArn(String? subnetArn) => _$this._subnetArn = subnetArn;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  bool? _enableDns64;
  bool? get enableDns64 => _$this._enableDns64;
  set enableDns64(bool? enableDns64) => _$this._enableDns64 = enableDns64;

  bool? _ipv6Native;
  bool? get ipv6Native => _$this._ipv6Native;
  set ipv6Native(bool? ipv6Native) => _$this._ipv6Native = ipv6Native;

  PrivateDnsNameOptionsOnLaunchBuilder? _privateDnsNameOptionsOnLaunch;
  PrivateDnsNameOptionsOnLaunchBuilder get privateDnsNameOptionsOnLaunch =>
      _$this._privateDnsNameOptionsOnLaunch ??=
          new PrivateDnsNameOptionsOnLaunchBuilder();
  set privateDnsNameOptionsOnLaunch(
          PrivateDnsNameOptionsOnLaunchBuilder?
              privateDnsNameOptionsOnLaunch) =>
      _$this._privateDnsNameOptionsOnLaunch = privateDnsNameOptionsOnLaunch;

  SubnetBuilder() {
    Subnet._init(this);
  }

  SubnetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _availabilityZoneId = $v.availabilityZoneId;
      _availableIpAddressCount = $v.availableIpAddressCount;
      _cidrBlock = $v.cidrBlock;
      _defaultForAz = $v.defaultForAz;
      _enableLniAtDeviceIndex = $v.enableLniAtDeviceIndex;
      _mapPublicIpOnLaunch = $v.mapPublicIpOnLaunch;
      _mapCustomerOwnedIpOnLaunch = $v.mapCustomerOwnedIpOnLaunch;
      _customerOwnedIpv4Pool = $v.customerOwnedIpv4Pool;
      _state = $v.state;
      _subnetId = $v.subnetId;
      _vpcId = $v.vpcId;
      _ownerId = $v.ownerId;
      _assignIpv6AddressOnCreation = $v.assignIpv6AddressOnCreation;
      _ipv6CidrBlockAssociationSet =
          $v.ipv6CidrBlockAssociationSet?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _subnetArn = $v.subnetArn;
      _outpostArn = $v.outpostArn;
      _enableDns64 = $v.enableDns64;
      _ipv6Native = $v.ipv6Native;
      _privateDnsNameOptionsOnLaunch =
          $v.privateDnsNameOptionsOnLaunch?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Subnet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Subnet;
  }

  @override
  void update(void Function(SubnetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Subnet build() => _build();

  _$Subnet _build() {
    _$Subnet _$result;
    try {
      _$result = _$v ??
          new _$Subnet._(
              availabilityZone: availabilityZone,
              availabilityZoneId: availabilityZoneId,
              availableIpAddressCount: BuiltValueNullFieldError.checkNotNull(
                  availableIpAddressCount, r'Subnet', 'availableIpAddressCount'),
              cidrBlock: cidrBlock,
              defaultForAz: BuiltValueNullFieldError.checkNotNull(
                  defaultForAz, r'Subnet', 'defaultForAz'),
              enableLniAtDeviceIndex: BuiltValueNullFieldError.checkNotNull(
                  enableLniAtDeviceIndex, r'Subnet', 'enableLniAtDeviceIndex'),
              mapPublicIpOnLaunch: BuiltValueNullFieldError.checkNotNull(
                  mapPublicIpOnLaunch, r'Subnet', 'mapPublicIpOnLaunch'),
              mapCustomerOwnedIpOnLaunch: BuiltValueNullFieldError.checkNotNull(
                  mapCustomerOwnedIpOnLaunch,
                  r'Subnet',
                  'mapCustomerOwnedIpOnLaunch'),
              customerOwnedIpv4Pool: customerOwnedIpv4Pool,
              state: state,
              subnetId: subnetId,
              vpcId: vpcId,
              ownerId: ownerId,
              assignIpv6AddressOnCreation:
                  BuiltValueNullFieldError.checkNotNull(
                      assignIpv6AddressOnCreation,
                      r'Subnet',
                      'assignIpv6AddressOnCreation'),
              ipv6CidrBlockAssociationSet: _ipv6CidrBlockAssociationSet?.build(),
              tags: _tags?.build(),
              subnetArn: subnetArn,
              outpostArn: outpostArn,
              enableDns64: BuiltValueNullFieldError.checkNotNull(enableDns64, r'Subnet', 'enableDns64'),
              ipv6Native: BuiltValueNullFieldError.checkNotNull(ipv6Native, r'Subnet', 'ipv6Native'),
              privateDnsNameOptionsOnLaunch: _privateDnsNameOptionsOnLaunch?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockAssociationSet';
        _ipv6CidrBlockAssociationSet?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'privateDnsNameOptionsOnLaunch';
        _privateDnsNameOptionsOnLaunch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Subnet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
