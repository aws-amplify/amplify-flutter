// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_subnet_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySubnetAttributeRequest extends ModifySubnetAttributeRequest {
  @override
  final AttributeBooleanValue? assignIpv6AddressOnCreation;
  @override
  final AttributeBooleanValue? mapPublicIpOnLaunch;
  @override
  final String? subnetId;
  @override
  final AttributeBooleanValue? mapCustomerOwnedIpOnLaunch;
  @override
  final String? customerOwnedIpv4Pool;
  @override
  final AttributeBooleanValue? enableDns64;
  @override
  final HostnameType? privateDnsHostnameTypeOnLaunch;
  @override
  final AttributeBooleanValue? enableResourceNameDnsARecordOnLaunch;
  @override
  final AttributeBooleanValue? enableResourceNameDnsAaaaRecordOnLaunch;
  @override
  final int enableLniAtDeviceIndex;
  @override
  final AttributeBooleanValue? disableLniAtDeviceIndex;

  factory _$ModifySubnetAttributeRequest(
          [void Function(ModifySubnetAttributeRequestBuilder)? updates]) =>
      (new ModifySubnetAttributeRequestBuilder()..update(updates))._build();

  _$ModifySubnetAttributeRequest._(
      {this.assignIpv6AddressOnCreation,
      this.mapPublicIpOnLaunch,
      this.subnetId,
      this.mapCustomerOwnedIpOnLaunch,
      this.customerOwnedIpv4Pool,
      this.enableDns64,
      this.privateDnsHostnameTypeOnLaunch,
      this.enableResourceNameDnsARecordOnLaunch,
      this.enableResourceNameDnsAaaaRecordOnLaunch,
      required this.enableLniAtDeviceIndex,
      this.disableLniAtDeviceIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enableLniAtDeviceIndex,
        r'ModifySubnetAttributeRequest', 'enableLniAtDeviceIndex');
  }

  @override
  ModifySubnetAttributeRequest rebuild(
          void Function(ModifySubnetAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySubnetAttributeRequestBuilder toBuilder() =>
      new ModifySubnetAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySubnetAttributeRequest &&
        assignIpv6AddressOnCreation == other.assignIpv6AddressOnCreation &&
        mapPublicIpOnLaunch == other.mapPublicIpOnLaunch &&
        subnetId == other.subnetId &&
        mapCustomerOwnedIpOnLaunch == other.mapCustomerOwnedIpOnLaunch &&
        customerOwnedIpv4Pool == other.customerOwnedIpv4Pool &&
        enableDns64 == other.enableDns64 &&
        privateDnsHostnameTypeOnLaunch ==
            other.privateDnsHostnameTypeOnLaunch &&
        enableResourceNameDnsARecordOnLaunch ==
            other.enableResourceNameDnsARecordOnLaunch &&
        enableResourceNameDnsAaaaRecordOnLaunch ==
            other.enableResourceNameDnsAaaaRecordOnLaunch &&
        enableLniAtDeviceIndex == other.enableLniAtDeviceIndex &&
        disableLniAtDeviceIndex == other.disableLniAtDeviceIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assignIpv6AddressOnCreation.hashCode);
    _$hash = $jc(_$hash, mapPublicIpOnLaunch.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, mapCustomerOwnedIpOnLaunch.hashCode);
    _$hash = $jc(_$hash, customerOwnedIpv4Pool.hashCode);
    _$hash = $jc(_$hash, enableDns64.hashCode);
    _$hash = $jc(_$hash, privateDnsHostnameTypeOnLaunch.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsARecordOnLaunch.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsAaaaRecordOnLaunch.hashCode);
    _$hash = $jc(_$hash, enableLniAtDeviceIndex.hashCode);
    _$hash = $jc(_$hash, disableLniAtDeviceIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySubnetAttributeRequestBuilder
    implements
        Builder<ModifySubnetAttributeRequest,
            ModifySubnetAttributeRequestBuilder> {
  _$ModifySubnetAttributeRequest? _$v;

  AttributeBooleanValueBuilder? _assignIpv6AddressOnCreation;
  AttributeBooleanValueBuilder get assignIpv6AddressOnCreation =>
      _$this._assignIpv6AddressOnCreation ??=
          new AttributeBooleanValueBuilder();
  set assignIpv6AddressOnCreation(
          AttributeBooleanValueBuilder? assignIpv6AddressOnCreation) =>
      _$this._assignIpv6AddressOnCreation = assignIpv6AddressOnCreation;

  AttributeBooleanValueBuilder? _mapPublicIpOnLaunch;
  AttributeBooleanValueBuilder get mapPublicIpOnLaunch =>
      _$this._mapPublicIpOnLaunch ??= new AttributeBooleanValueBuilder();
  set mapPublicIpOnLaunch(AttributeBooleanValueBuilder? mapPublicIpOnLaunch) =>
      _$this._mapPublicIpOnLaunch = mapPublicIpOnLaunch;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  AttributeBooleanValueBuilder? _mapCustomerOwnedIpOnLaunch;
  AttributeBooleanValueBuilder get mapCustomerOwnedIpOnLaunch =>
      _$this._mapCustomerOwnedIpOnLaunch ??= new AttributeBooleanValueBuilder();
  set mapCustomerOwnedIpOnLaunch(
          AttributeBooleanValueBuilder? mapCustomerOwnedIpOnLaunch) =>
      _$this._mapCustomerOwnedIpOnLaunch = mapCustomerOwnedIpOnLaunch;

  String? _customerOwnedIpv4Pool;
  String? get customerOwnedIpv4Pool => _$this._customerOwnedIpv4Pool;
  set customerOwnedIpv4Pool(String? customerOwnedIpv4Pool) =>
      _$this._customerOwnedIpv4Pool = customerOwnedIpv4Pool;

  AttributeBooleanValueBuilder? _enableDns64;
  AttributeBooleanValueBuilder get enableDns64 =>
      _$this._enableDns64 ??= new AttributeBooleanValueBuilder();
  set enableDns64(AttributeBooleanValueBuilder? enableDns64) =>
      _$this._enableDns64 = enableDns64;

  HostnameType? _privateDnsHostnameTypeOnLaunch;
  HostnameType? get privateDnsHostnameTypeOnLaunch =>
      _$this._privateDnsHostnameTypeOnLaunch;
  set privateDnsHostnameTypeOnLaunch(
          HostnameType? privateDnsHostnameTypeOnLaunch) =>
      _$this._privateDnsHostnameTypeOnLaunch = privateDnsHostnameTypeOnLaunch;

  AttributeBooleanValueBuilder? _enableResourceNameDnsARecordOnLaunch;
  AttributeBooleanValueBuilder get enableResourceNameDnsARecordOnLaunch =>
      _$this._enableResourceNameDnsARecordOnLaunch ??=
          new AttributeBooleanValueBuilder();
  set enableResourceNameDnsARecordOnLaunch(
          AttributeBooleanValueBuilder? enableResourceNameDnsARecordOnLaunch) =>
      _$this._enableResourceNameDnsARecordOnLaunch =
          enableResourceNameDnsARecordOnLaunch;

  AttributeBooleanValueBuilder? _enableResourceNameDnsAaaaRecordOnLaunch;
  AttributeBooleanValueBuilder get enableResourceNameDnsAaaaRecordOnLaunch =>
      _$this._enableResourceNameDnsAaaaRecordOnLaunch ??=
          new AttributeBooleanValueBuilder();
  set enableResourceNameDnsAaaaRecordOnLaunch(
          AttributeBooleanValueBuilder?
              enableResourceNameDnsAaaaRecordOnLaunch) =>
      _$this._enableResourceNameDnsAaaaRecordOnLaunch =
          enableResourceNameDnsAaaaRecordOnLaunch;

  int? _enableLniAtDeviceIndex;
  int? get enableLniAtDeviceIndex => _$this._enableLniAtDeviceIndex;
  set enableLniAtDeviceIndex(int? enableLniAtDeviceIndex) =>
      _$this._enableLniAtDeviceIndex = enableLniAtDeviceIndex;

  AttributeBooleanValueBuilder? _disableLniAtDeviceIndex;
  AttributeBooleanValueBuilder get disableLniAtDeviceIndex =>
      _$this._disableLniAtDeviceIndex ??= new AttributeBooleanValueBuilder();
  set disableLniAtDeviceIndex(
          AttributeBooleanValueBuilder? disableLniAtDeviceIndex) =>
      _$this._disableLniAtDeviceIndex = disableLniAtDeviceIndex;

  ModifySubnetAttributeRequestBuilder() {
    ModifySubnetAttributeRequest._init(this);
  }

  ModifySubnetAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assignIpv6AddressOnCreation =
          $v.assignIpv6AddressOnCreation?.toBuilder();
      _mapPublicIpOnLaunch = $v.mapPublicIpOnLaunch?.toBuilder();
      _subnetId = $v.subnetId;
      _mapCustomerOwnedIpOnLaunch = $v.mapCustomerOwnedIpOnLaunch?.toBuilder();
      _customerOwnedIpv4Pool = $v.customerOwnedIpv4Pool;
      _enableDns64 = $v.enableDns64?.toBuilder();
      _privateDnsHostnameTypeOnLaunch = $v.privateDnsHostnameTypeOnLaunch;
      _enableResourceNameDnsARecordOnLaunch =
          $v.enableResourceNameDnsARecordOnLaunch?.toBuilder();
      _enableResourceNameDnsAaaaRecordOnLaunch =
          $v.enableResourceNameDnsAaaaRecordOnLaunch?.toBuilder();
      _enableLniAtDeviceIndex = $v.enableLniAtDeviceIndex;
      _disableLniAtDeviceIndex = $v.disableLniAtDeviceIndex?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySubnetAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySubnetAttributeRequest;
  }

  @override
  void update(void Function(ModifySubnetAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySubnetAttributeRequest build() => _build();

  _$ModifySubnetAttributeRequest _build() {
    _$ModifySubnetAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifySubnetAttributeRequest._(
              assignIpv6AddressOnCreation:
                  _assignIpv6AddressOnCreation?.build(),
              mapPublicIpOnLaunch: _mapPublicIpOnLaunch?.build(),
              subnetId: subnetId,
              mapCustomerOwnedIpOnLaunch: _mapCustomerOwnedIpOnLaunch?.build(),
              customerOwnedIpv4Pool: customerOwnedIpv4Pool,
              enableDns64: _enableDns64?.build(),
              privateDnsHostnameTypeOnLaunch: privateDnsHostnameTypeOnLaunch,
              enableResourceNameDnsARecordOnLaunch:
                  _enableResourceNameDnsARecordOnLaunch?.build(),
              enableResourceNameDnsAaaaRecordOnLaunch:
                  _enableResourceNameDnsAaaaRecordOnLaunch?.build(),
              enableLniAtDeviceIndex: BuiltValueNullFieldError.checkNotNull(
                  enableLniAtDeviceIndex,
                  r'ModifySubnetAttributeRequest',
                  'enableLniAtDeviceIndex'),
              disableLniAtDeviceIndex: _disableLniAtDeviceIndex?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assignIpv6AddressOnCreation';
        _assignIpv6AddressOnCreation?.build();
        _$failedField = 'mapPublicIpOnLaunch';
        _mapPublicIpOnLaunch?.build();

        _$failedField = 'mapCustomerOwnedIpOnLaunch';
        _mapCustomerOwnedIpOnLaunch?.build();

        _$failedField = 'enableDns64';
        _enableDns64?.build();

        _$failedField = 'enableResourceNameDnsARecordOnLaunch';
        _enableResourceNameDnsARecordOnLaunch?.build();
        _$failedField = 'enableResourceNameDnsAaaaRecordOnLaunch';
        _enableResourceNameDnsAaaaRecordOnLaunch?.build();

        _$failedField = 'disableLniAtDeviceIndex';
        _disableLniAtDeviceIndex?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifySubnetAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
