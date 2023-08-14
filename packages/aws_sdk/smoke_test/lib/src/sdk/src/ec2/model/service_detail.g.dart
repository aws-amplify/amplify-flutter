// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceDetail extends ServiceDetail {
  @override
  final String? serviceName;
  @override
  final String? serviceId;
  @override
  final _i2.BuiltList<ServiceTypeDetail>? serviceType;
  @override
  final _i2.BuiltList<String>? availabilityZones;
  @override
  final String? owner;
  @override
  final _i2.BuiltList<String>? baseEndpointDnsNames;
  @override
  final String? privateDnsName;
  @override
  final _i2.BuiltList<PrivateDnsDetails>? privateDnsNames;
  @override
  final bool vpcEndpointPolicySupported;
  @override
  final bool acceptanceRequired;
  @override
  final bool managesVpcEndpoints;
  @override
  final PayerResponsibility? payerResponsibility;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final DnsNameState? privateDnsNameVerificationState;
  @override
  final _i2.BuiltList<ServiceConnectivityType>? supportedIpAddressTypes;

  factory _$ServiceDetail([void Function(ServiceDetailBuilder)? updates]) =>
      (new ServiceDetailBuilder()..update(updates))._build();

  _$ServiceDetail._(
      {this.serviceName,
      this.serviceId,
      this.serviceType,
      this.availabilityZones,
      this.owner,
      this.baseEndpointDnsNames,
      this.privateDnsName,
      this.privateDnsNames,
      required this.vpcEndpointPolicySupported,
      required this.acceptanceRequired,
      required this.managesVpcEndpoints,
      this.payerResponsibility,
      this.tags,
      this.privateDnsNameVerificationState,
      this.supportedIpAddressTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vpcEndpointPolicySupported,
        r'ServiceDetail', 'vpcEndpointPolicySupported');
    BuiltValueNullFieldError.checkNotNull(
        acceptanceRequired, r'ServiceDetail', 'acceptanceRequired');
    BuiltValueNullFieldError.checkNotNull(
        managesVpcEndpoints, r'ServiceDetail', 'managesVpcEndpoints');
  }

  @override
  ServiceDetail rebuild(void Function(ServiceDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceDetailBuilder toBuilder() => new ServiceDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceDetail &&
        serviceName == other.serviceName &&
        serviceId == other.serviceId &&
        serviceType == other.serviceType &&
        availabilityZones == other.availabilityZones &&
        owner == other.owner &&
        baseEndpointDnsNames == other.baseEndpointDnsNames &&
        privateDnsName == other.privateDnsName &&
        privateDnsNames == other.privateDnsNames &&
        vpcEndpointPolicySupported == other.vpcEndpointPolicySupported &&
        acceptanceRequired == other.acceptanceRequired &&
        managesVpcEndpoints == other.managesVpcEndpoints &&
        payerResponsibility == other.payerResponsibility &&
        tags == other.tags &&
        privateDnsNameVerificationState ==
            other.privateDnsNameVerificationState &&
        supportedIpAddressTypes == other.supportedIpAddressTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, availabilityZones.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, baseEndpointDnsNames.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, privateDnsNames.hashCode);
    _$hash = $jc(_$hash, vpcEndpointPolicySupported.hashCode);
    _$hash = $jc(_$hash, acceptanceRequired.hashCode);
    _$hash = $jc(_$hash, managesVpcEndpoints.hashCode);
    _$hash = $jc(_$hash, payerResponsibility.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, privateDnsNameVerificationState.hashCode);
    _$hash = $jc(_$hash, supportedIpAddressTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceDetailBuilder
    implements Builder<ServiceDetail, ServiceDetailBuilder> {
  _$ServiceDetail? _$v;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  _i2.ListBuilder<ServiceTypeDetail>? _serviceType;
  _i2.ListBuilder<ServiceTypeDetail> get serviceType =>
      _$this._serviceType ??= new _i2.ListBuilder<ServiceTypeDetail>();
  set serviceType(_i2.ListBuilder<ServiceTypeDetail>? serviceType) =>
      _$this._serviceType = serviceType;

  _i2.ListBuilder<String>? _availabilityZones;
  _i2.ListBuilder<String> get availabilityZones =>
      _$this._availabilityZones ??= new _i2.ListBuilder<String>();
  set availabilityZones(_i2.ListBuilder<String>? availabilityZones) =>
      _$this._availabilityZones = availabilityZones;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  _i2.ListBuilder<String>? _baseEndpointDnsNames;
  _i2.ListBuilder<String> get baseEndpointDnsNames =>
      _$this._baseEndpointDnsNames ??= new _i2.ListBuilder<String>();
  set baseEndpointDnsNames(_i2.ListBuilder<String>? baseEndpointDnsNames) =>
      _$this._baseEndpointDnsNames = baseEndpointDnsNames;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  _i2.ListBuilder<PrivateDnsDetails>? _privateDnsNames;
  _i2.ListBuilder<PrivateDnsDetails> get privateDnsNames =>
      _$this._privateDnsNames ??= new _i2.ListBuilder<PrivateDnsDetails>();
  set privateDnsNames(_i2.ListBuilder<PrivateDnsDetails>? privateDnsNames) =>
      _$this._privateDnsNames = privateDnsNames;

  bool? _vpcEndpointPolicySupported;
  bool? get vpcEndpointPolicySupported => _$this._vpcEndpointPolicySupported;
  set vpcEndpointPolicySupported(bool? vpcEndpointPolicySupported) =>
      _$this._vpcEndpointPolicySupported = vpcEndpointPolicySupported;

  bool? _acceptanceRequired;
  bool? get acceptanceRequired => _$this._acceptanceRequired;
  set acceptanceRequired(bool? acceptanceRequired) =>
      _$this._acceptanceRequired = acceptanceRequired;

  bool? _managesVpcEndpoints;
  bool? get managesVpcEndpoints => _$this._managesVpcEndpoints;
  set managesVpcEndpoints(bool? managesVpcEndpoints) =>
      _$this._managesVpcEndpoints = managesVpcEndpoints;

  PayerResponsibility? _payerResponsibility;
  PayerResponsibility? get payerResponsibility => _$this._payerResponsibility;
  set payerResponsibility(PayerResponsibility? payerResponsibility) =>
      _$this._payerResponsibility = payerResponsibility;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  DnsNameState? _privateDnsNameVerificationState;
  DnsNameState? get privateDnsNameVerificationState =>
      _$this._privateDnsNameVerificationState;
  set privateDnsNameVerificationState(
          DnsNameState? privateDnsNameVerificationState) =>
      _$this._privateDnsNameVerificationState = privateDnsNameVerificationState;

  _i2.ListBuilder<ServiceConnectivityType>? _supportedIpAddressTypes;
  _i2.ListBuilder<ServiceConnectivityType> get supportedIpAddressTypes =>
      _$this._supportedIpAddressTypes ??=
          new _i2.ListBuilder<ServiceConnectivityType>();
  set supportedIpAddressTypes(
          _i2.ListBuilder<ServiceConnectivityType>? supportedIpAddressTypes) =>
      _$this._supportedIpAddressTypes = supportedIpAddressTypes;

  ServiceDetailBuilder() {
    ServiceDetail._init(this);
  }

  ServiceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceName = $v.serviceName;
      _serviceId = $v.serviceId;
      _serviceType = $v.serviceType?.toBuilder();
      _availabilityZones = $v.availabilityZones?.toBuilder();
      _owner = $v.owner;
      _baseEndpointDnsNames = $v.baseEndpointDnsNames?.toBuilder();
      _privateDnsName = $v.privateDnsName;
      _privateDnsNames = $v.privateDnsNames?.toBuilder();
      _vpcEndpointPolicySupported = $v.vpcEndpointPolicySupported;
      _acceptanceRequired = $v.acceptanceRequired;
      _managesVpcEndpoints = $v.managesVpcEndpoints;
      _payerResponsibility = $v.payerResponsibility;
      _tags = $v.tags?.toBuilder();
      _privateDnsNameVerificationState = $v.privateDnsNameVerificationState;
      _supportedIpAddressTypes = $v.supportedIpAddressTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceDetail;
  }

  @override
  void update(void Function(ServiceDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceDetail build() => _build();

  _$ServiceDetail _build() {
    _$ServiceDetail _$result;
    try {
      _$result = _$v ??
          new _$ServiceDetail._(
              serviceName: serviceName,
              serviceId: serviceId,
              serviceType: _serviceType?.build(),
              availabilityZones: _availabilityZones?.build(),
              owner: owner,
              baseEndpointDnsNames: _baseEndpointDnsNames?.build(),
              privateDnsName: privateDnsName,
              privateDnsNames: _privateDnsNames?.build(),
              vpcEndpointPolicySupported: BuiltValueNullFieldError.checkNotNull(
                  vpcEndpointPolicySupported,
                  r'ServiceDetail',
                  'vpcEndpointPolicySupported'),
              acceptanceRequired: BuiltValueNullFieldError.checkNotNull(
                  acceptanceRequired, r'ServiceDetail', 'acceptanceRequired'),
              managesVpcEndpoints: BuiltValueNullFieldError.checkNotNull(
                  managesVpcEndpoints, r'ServiceDetail', 'managesVpcEndpoints'),
              payerResponsibility: payerResponsibility,
              tags: _tags?.build(),
              privateDnsNameVerificationState: privateDnsNameVerificationState,
              supportedIpAddressTypes: _supportedIpAddressTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceType';
        _serviceType?.build();
        _$failedField = 'availabilityZones';
        _availabilityZones?.build();

        _$failedField = 'baseEndpointDnsNames';
        _baseEndpointDnsNames?.build();

        _$failedField = 'privateDnsNames';
        _privateDnsNames?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'supportedIpAddressTypes';
        _supportedIpAddressTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServiceDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
