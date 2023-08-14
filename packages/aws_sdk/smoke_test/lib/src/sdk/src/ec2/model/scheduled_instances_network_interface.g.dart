// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_network_interface.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesNetworkInterface
    extends ScheduledInstancesNetworkInterface {
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
  final _i2.BuiltList<ScheduledInstancesIpv6Address>? ipv6Addresses;
  @override
  final String? networkInterfaceId;
  @override
  final String? privateIpAddress;
  @override
  final _i2.BuiltList<ScheduledInstancesPrivateIpAddressConfig>?
      privateIpAddressConfigs;
  @override
  final int secondaryPrivateIpAddressCount;
  @override
  final String? subnetId;

  factory _$ScheduledInstancesNetworkInterface(
          [void Function(ScheduledInstancesNetworkInterfaceBuilder)?
              updates]) =>
      (new ScheduledInstancesNetworkInterfaceBuilder()..update(updates))
          ._build();

  _$ScheduledInstancesNetworkInterface._(
      {required this.associatePublicIpAddress,
      required this.deleteOnTermination,
      this.description,
      required this.deviceIndex,
      this.groups,
      required this.ipv6AddressCount,
      this.ipv6Addresses,
      this.networkInterfaceId,
      this.privateIpAddress,
      this.privateIpAddressConfigs,
      required this.secondaryPrivateIpAddressCount,
      this.subnetId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(associatePublicIpAddress,
        r'ScheduledInstancesNetworkInterface', 'associatePublicIpAddress');
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'ScheduledInstancesNetworkInterface', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        deviceIndex, r'ScheduledInstancesNetworkInterface', 'deviceIndex');
    BuiltValueNullFieldError.checkNotNull(ipv6AddressCount,
        r'ScheduledInstancesNetworkInterface', 'ipv6AddressCount');
    BuiltValueNullFieldError.checkNotNull(
        secondaryPrivateIpAddressCount,
        r'ScheduledInstancesNetworkInterface',
        'secondaryPrivateIpAddressCount');
  }

  @override
  ScheduledInstancesNetworkInterface rebuild(
          void Function(ScheduledInstancesNetworkInterfaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesNetworkInterfaceBuilder toBuilder() =>
      new ScheduledInstancesNetworkInterfaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesNetworkInterface &&
        associatePublicIpAddress == other.associatePublicIpAddress &&
        deleteOnTermination == other.deleteOnTermination &&
        description == other.description &&
        deviceIndex == other.deviceIndex &&
        groups == other.groups &&
        ipv6AddressCount == other.ipv6AddressCount &&
        ipv6Addresses == other.ipv6Addresses &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIpAddress == other.privateIpAddress &&
        privateIpAddressConfigs == other.privateIpAddressConfigs &&
        secondaryPrivateIpAddressCount ==
            other.secondaryPrivateIpAddressCount &&
        subnetId == other.subnetId;
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
    _$hash = $jc(_$hash, privateIpAddressConfigs.hashCode);
    _$hash = $jc(_$hash, secondaryPrivateIpAddressCount.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesNetworkInterfaceBuilder
    implements
        Builder<ScheduledInstancesNetworkInterface,
            ScheduledInstancesNetworkInterfaceBuilder> {
  _$ScheduledInstancesNetworkInterface? _$v;

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

  _i2.ListBuilder<ScheduledInstancesIpv6Address>? _ipv6Addresses;
  _i2.ListBuilder<ScheduledInstancesIpv6Address> get ipv6Addresses =>
      _$this._ipv6Addresses ??=
          new _i2.ListBuilder<ScheduledInstancesIpv6Address>();
  set ipv6Addresses(
          _i2.ListBuilder<ScheduledInstancesIpv6Address>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i2.ListBuilder<ScheduledInstancesPrivateIpAddressConfig>?
      _privateIpAddressConfigs;
  _i2.ListBuilder<ScheduledInstancesPrivateIpAddressConfig>
      get privateIpAddressConfigs => _$this._privateIpAddressConfigs ??=
          new _i2.ListBuilder<ScheduledInstancesPrivateIpAddressConfig>();
  set privateIpAddressConfigs(
          _i2.ListBuilder<ScheduledInstancesPrivateIpAddressConfig>?
              privateIpAddressConfigs) =>
      _$this._privateIpAddressConfigs = privateIpAddressConfigs;

  int? _secondaryPrivateIpAddressCount;
  int? get secondaryPrivateIpAddressCount =>
      _$this._secondaryPrivateIpAddressCount;
  set secondaryPrivateIpAddressCount(int? secondaryPrivateIpAddressCount) =>
      _$this._secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  ScheduledInstancesNetworkInterfaceBuilder() {
    ScheduledInstancesNetworkInterface._init(this);
  }

  ScheduledInstancesNetworkInterfaceBuilder get _$this {
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
      _privateIpAddressConfigs = $v.privateIpAddressConfigs?.toBuilder();
      _secondaryPrivateIpAddressCount = $v.secondaryPrivateIpAddressCount;
      _subnetId = $v.subnetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesNetworkInterface other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesNetworkInterface;
  }

  @override
  void update(
      void Function(ScheduledInstancesNetworkInterfaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesNetworkInterface build() => _build();

  _$ScheduledInstancesNetworkInterface _build() {
    _$ScheduledInstancesNetworkInterface _$result;
    try {
      _$result = _$v ??
          new _$ScheduledInstancesNetworkInterface._(
              associatePublicIpAddress: BuiltValueNullFieldError.checkNotNull(
                  associatePublicIpAddress,
                  r'ScheduledInstancesNetworkInterface',
                  'associatePublicIpAddress'),
              deleteOnTermination:
                  BuiltValueNullFieldError.checkNotNull(
                      deleteOnTermination,
                      r'ScheduledInstancesNetworkInterface',
                      'deleteOnTermination'),
              description: description,
              deviceIndex: BuiltValueNullFieldError.checkNotNull(
                  deviceIndex, r'ScheduledInstancesNetworkInterface', 'deviceIndex'),
              groups: _groups?.build(),
              ipv6AddressCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6AddressCount, r'ScheduledInstancesNetworkInterface', 'ipv6AddressCount'),
              ipv6Addresses: _ipv6Addresses?.build(),
              networkInterfaceId: networkInterfaceId,
              privateIpAddress: privateIpAddress,
              privateIpAddressConfigs: _privateIpAddressConfigs?.build(),
              secondaryPrivateIpAddressCount:
                  BuiltValueNullFieldError.checkNotNull(
                      secondaryPrivateIpAddressCount,
                      r'ScheduledInstancesNetworkInterface',
                      'secondaryPrivateIpAddressCount'),
              subnetId: subnetId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'ipv6Addresses';
        _ipv6Addresses?.build();

        _$failedField = 'privateIpAddressConfigs';
        _privateIpAddressConfigs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduledInstancesNetworkInterface', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
