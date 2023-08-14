// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocate_address_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllocateAddressResult extends AllocateAddressResult {
  @override
  final String? publicIp;
  @override
  final String? allocationId;
  @override
  final String? publicIpv4Pool;
  @override
  final String? networkBorderGroup;
  @override
  final DomainType? domain;
  @override
  final String? customerOwnedIp;
  @override
  final String? customerOwnedIpv4Pool;
  @override
  final String? carrierIp;

  factory _$AllocateAddressResult(
          [void Function(AllocateAddressResultBuilder)? updates]) =>
      (new AllocateAddressResultBuilder()..update(updates))._build();

  _$AllocateAddressResult._(
      {this.publicIp,
      this.allocationId,
      this.publicIpv4Pool,
      this.networkBorderGroup,
      this.domain,
      this.customerOwnedIp,
      this.customerOwnedIpv4Pool,
      this.carrierIp})
      : super._();

  @override
  AllocateAddressResult rebuild(
          void Function(AllocateAddressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocateAddressResultBuilder toBuilder() =>
      new AllocateAddressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllocateAddressResult &&
        publicIp == other.publicIp &&
        allocationId == other.allocationId &&
        publicIpv4Pool == other.publicIpv4Pool &&
        networkBorderGroup == other.networkBorderGroup &&
        domain == other.domain &&
        customerOwnedIp == other.customerOwnedIp &&
        customerOwnedIpv4Pool == other.customerOwnedIpv4Pool &&
        carrierIp == other.carrierIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, publicIpv4Pool.hashCode);
    _$hash = $jc(_$hash, networkBorderGroup.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, customerOwnedIp.hashCode);
    _$hash = $jc(_$hash, customerOwnedIpv4Pool.hashCode);
    _$hash = $jc(_$hash, carrierIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AllocateAddressResultBuilder
    implements Builder<AllocateAddressResult, AllocateAddressResultBuilder> {
  _$AllocateAddressResult? _$v;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _publicIpv4Pool;
  String? get publicIpv4Pool => _$this._publicIpv4Pool;
  set publicIpv4Pool(String? publicIpv4Pool) =>
      _$this._publicIpv4Pool = publicIpv4Pool;

  String? _networkBorderGroup;
  String? get networkBorderGroup => _$this._networkBorderGroup;
  set networkBorderGroup(String? networkBorderGroup) =>
      _$this._networkBorderGroup = networkBorderGroup;

  DomainType? _domain;
  DomainType? get domain => _$this._domain;
  set domain(DomainType? domain) => _$this._domain = domain;

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

  AllocateAddressResultBuilder();

  AllocateAddressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicIp = $v.publicIp;
      _allocationId = $v.allocationId;
      _publicIpv4Pool = $v.publicIpv4Pool;
      _networkBorderGroup = $v.networkBorderGroup;
      _domain = $v.domain;
      _customerOwnedIp = $v.customerOwnedIp;
      _customerOwnedIpv4Pool = $v.customerOwnedIpv4Pool;
      _carrierIp = $v.carrierIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllocateAddressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllocateAddressResult;
  }

  @override
  void update(void Function(AllocateAddressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllocateAddressResult build() => _build();

  _$AllocateAddressResult _build() {
    final _$result = _$v ??
        new _$AllocateAddressResult._(
            publicIp: publicIp,
            allocationId: allocationId,
            publicIpv4Pool: publicIpv4Pool,
            networkBorderGroup: networkBorderGroup,
            domain: domain,
            customerOwnedIp: customerOwnedIp,
            customerOwnedIpv4Pool: customerOwnedIpv4Pool,
            carrierIp: carrierIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
