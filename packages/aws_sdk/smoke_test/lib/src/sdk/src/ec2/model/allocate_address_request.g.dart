// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocate_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllocateAddressRequest extends AllocateAddressRequest {
  @override
  final DomainType? domain;
  @override
  final String? address;
  @override
  final String? publicIpv4Pool;
  @override
  final String? networkBorderGroup;
  @override
  final String? customerOwnedIpv4Pool;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$AllocateAddressRequest(
          [void Function(AllocateAddressRequestBuilder)? updates]) =>
      (new AllocateAddressRequestBuilder()..update(updates))._build();

  _$AllocateAddressRequest._(
      {this.domain,
      this.address,
      this.publicIpv4Pool,
      this.networkBorderGroup,
      this.customerOwnedIpv4Pool,
      required this.dryRun,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AllocateAddressRequest', 'dryRun');
  }

  @override
  AllocateAddressRequest rebuild(
          void Function(AllocateAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocateAddressRequestBuilder toBuilder() =>
      new AllocateAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllocateAddressRequest &&
        domain == other.domain &&
        address == other.address &&
        publicIpv4Pool == other.publicIpv4Pool &&
        networkBorderGroup == other.networkBorderGroup &&
        customerOwnedIpv4Pool == other.customerOwnedIpv4Pool &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, publicIpv4Pool.hashCode);
    _$hash = $jc(_$hash, networkBorderGroup.hashCode);
    _$hash = $jc(_$hash, customerOwnedIpv4Pool.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AllocateAddressRequestBuilder
    implements Builder<AllocateAddressRequest, AllocateAddressRequestBuilder> {
  _$AllocateAddressRequest? _$v;

  DomainType? _domain;
  DomainType? get domain => _$this._domain;
  set domain(DomainType? domain) => _$this._domain = domain;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _publicIpv4Pool;
  String? get publicIpv4Pool => _$this._publicIpv4Pool;
  set publicIpv4Pool(String? publicIpv4Pool) =>
      _$this._publicIpv4Pool = publicIpv4Pool;

  String? _networkBorderGroup;
  String? get networkBorderGroup => _$this._networkBorderGroup;
  set networkBorderGroup(String? networkBorderGroup) =>
      _$this._networkBorderGroup = networkBorderGroup;

  String? _customerOwnedIpv4Pool;
  String? get customerOwnedIpv4Pool => _$this._customerOwnedIpv4Pool;
  set customerOwnedIpv4Pool(String? customerOwnedIpv4Pool) =>
      _$this._customerOwnedIpv4Pool = customerOwnedIpv4Pool;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  AllocateAddressRequestBuilder() {
    AllocateAddressRequest._init(this);
  }

  AllocateAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domain = $v.domain;
      _address = $v.address;
      _publicIpv4Pool = $v.publicIpv4Pool;
      _networkBorderGroup = $v.networkBorderGroup;
      _customerOwnedIpv4Pool = $v.customerOwnedIpv4Pool;
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllocateAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllocateAddressRequest;
  }

  @override
  void update(void Function(AllocateAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllocateAddressRequest build() => _build();

  _$AllocateAddressRequest _build() {
    _$AllocateAddressRequest _$result;
    try {
      _$result = _$v ??
          new _$AllocateAddressRequest._(
              domain: domain,
              address: address,
              publicIpv4Pool: publicIpv4Pool,
              networkBorderGroup: networkBorderGroup,
              customerOwnedIpv4Pool: customerOwnedIpv4Pool,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AllocateAddressRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllocateAddressRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
