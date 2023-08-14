// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Address extends Address {
  @override
  final String? instanceId;
  @override
  final String? publicIp;
  @override
  final String? allocationId;
  @override
  final String? associationId;
  @override
  final DomainType? domain;
  @override
  final String? networkInterfaceId;
  @override
  final String? networkInterfaceOwnerId;
  @override
  final String? privateIpAddress;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? publicIpv4Pool;
  @override
  final String? networkBorderGroup;
  @override
  final String? customerOwnedIp;
  @override
  final String? customerOwnedIpv4Pool;
  @override
  final String? carrierIp;

  factory _$Address([void Function(AddressBuilder)? updates]) =>
      (new AddressBuilder()..update(updates))._build();

  _$Address._(
      {this.instanceId,
      this.publicIp,
      this.allocationId,
      this.associationId,
      this.domain,
      this.networkInterfaceId,
      this.networkInterfaceOwnerId,
      this.privateIpAddress,
      this.tags,
      this.publicIpv4Pool,
      this.networkBorderGroup,
      this.customerOwnedIp,
      this.customerOwnedIpv4Pool,
      this.carrierIp})
      : super._();

  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        instanceId == other.instanceId &&
        publicIp == other.publicIp &&
        allocationId == other.allocationId &&
        associationId == other.associationId &&
        domain == other.domain &&
        networkInterfaceId == other.networkInterfaceId &&
        networkInterfaceOwnerId == other.networkInterfaceOwnerId &&
        privateIpAddress == other.privateIpAddress &&
        tags == other.tags &&
        publicIpv4Pool == other.publicIpv4Pool &&
        networkBorderGroup == other.networkBorderGroup &&
        customerOwnedIp == other.customerOwnedIp &&
        customerOwnedIpv4Pool == other.customerOwnedIpv4Pool &&
        carrierIp == other.carrierIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceOwnerId.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, publicIpv4Pool.hashCode);
    _$hash = $jc(_$hash, networkBorderGroup.hashCode);
    _$hash = $jc(_$hash, customerOwnedIp.hashCode);
    _$hash = $jc(_$hash, customerOwnedIpv4Pool.hashCode);
    _$hash = $jc(_$hash, carrierIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  DomainType? _domain;
  DomainType? get domain => _$this._domain;
  set domain(DomainType? domain) => _$this._domain = domain;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _networkInterfaceOwnerId;
  String? get networkInterfaceOwnerId => _$this._networkInterfaceOwnerId;
  set networkInterfaceOwnerId(String? networkInterfaceOwnerId) =>
      _$this._networkInterfaceOwnerId = networkInterfaceOwnerId;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _publicIpv4Pool;
  String? get publicIpv4Pool => _$this._publicIpv4Pool;
  set publicIpv4Pool(String? publicIpv4Pool) =>
      _$this._publicIpv4Pool = publicIpv4Pool;

  String? _networkBorderGroup;
  String? get networkBorderGroup => _$this._networkBorderGroup;
  set networkBorderGroup(String? networkBorderGroup) =>
      _$this._networkBorderGroup = networkBorderGroup;

  String? _customerOwnedIp;
  String? get customerOwnedIp => _$this._customerOwnedIp;
  set customerOwnedIp(String? customerOwnedIp) =>
      _$this._customerOwnedIp = customerOwnedIp;

  String? _customerOwnedIpv4Pool;
  String? get customerOwnedIpv4Pool => _$this._customerOwnedIpv4Pool;
  set customerOwnedIpv4Pool(String? customerOwnedIpv4Pool) =>
      _$this._customerOwnedIpv4Pool = customerOwnedIpv4Pool;

  String? _carrierIp;
  String? get carrierIp => _$this._carrierIp;
  set carrierIp(String? carrierIp) => _$this._carrierIp = carrierIp;

  AddressBuilder();

  AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _publicIp = $v.publicIp;
      _allocationId = $v.allocationId;
      _associationId = $v.associationId;
      _domain = $v.domain;
      _networkInterfaceId = $v.networkInterfaceId;
      _networkInterfaceOwnerId = $v.networkInterfaceOwnerId;
      _privateIpAddress = $v.privateIpAddress;
      _tags = $v.tags?.toBuilder();
      _publicIpv4Pool = $v.publicIpv4Pool;
      _networkBorderGroup = $v.networkBorderGroup;
      _customerOwnedIp = $v.customerOwnedIp;
      _customerOwnedIpv4Pool = $v.customerOwnedIpv4Pool;
      _carrierIp = $v.carrierIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Address build() => _build();

  _$Address _build() {
    _$Address _$result;
    try {
      _$result = _$v ??
          new _$Address._(
              instanceId: instanceId,
              publicIp: publicIp,
              allocationId: allocationId,
              associationId: associationId,
              domain: domain,
              networkInterfaceId: networkInterfaceId,
              networkInterfaceOwnerId: networkInterfaceOwnerId,
              privateIpAddress: privateIpAddress,
              tags: _tags?.build(),
              publicIpv4Pool: publicIpv4Pool,
              networkBorderGroup: networkBorderGroup,
              customerOwnedIp: customerOwnedIp,
              customerOwnedIpv4Pool: customerOwnedIpv4Pool,
              carrierIp: carrierIp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Address', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
