// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceConfiguration extends ServiceConfiguration {
  @override
  final _i2.BuiltList<ServiceTypeDetail>? serviceType;
  @override
  final String? serviceId;
  @override
  final String? serviceName;
  @override
  final ServiceState? serviceState;
  @override
  final _i2.BuiltList<String>? availabilityZones;
  @override
  final bool acceptanceRequired;
  @override
  final bool managesVpcEndpoints;
  @override
  final _i2.BuiltList<String>? networkLoadBalancerArns;
  @override
  final _i2.BuiltList<String>? gatewayLoadBalancerArns;
  @override
  final _i2.BuiltList<ServiceConnectivityType>? supportedIpAddressTypes;
  @override
  final _i2.BuiltList<String>? baseEndpointDnsNames;
  @override
  final String? privateDnsName;
  @override
  final PrivateDnsNameConfiguration? privateDnsNameConfiguration;
  @override
  final PayerResponsibility? payerResponsibility;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$ServiceConfiguration(
          [void Function(ServiceConfigurationBuilder)? updates]) =>
      (new ServiceConfigurationBuilder()..update(updates))._build();

  _$ServiceConfiguration._(
      {this.serviceType,
      this.serviceId,
      this.serviceName,
      this.serviceState,
      this.availabilityZones,
      required this.acceptanceRequired,
      required this.managesVpcEndpoints,
      this.networkLoadBalancerArns,
      this.gatewayLoadBalancerArns,
      this.supportedIpAddressTypes,
      this.baseEndpointDnsNames,
      this.privateDnsName,
      this.privateDnsNameConfiguration,
      this.payerResponsibility,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        acceptanceRequired, r'ServiceConfiguration', 'acceptanceRequired');
    BuiltValueNullFieldError.checkNotNull(
        managesVpcEndpoints, r'ServiceConfiguration', 'managesVpcEndpoints');
  }

  @override
  ServiceConfiguration rebuild(
          void Function(ServiceConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceConfigurationBuilder toBuilder() =>
      new ServiceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceConfiguration &&
        serviceType == other.serviceType &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        serviceState == other.serviceState &&
        availabilityZones == other.availabilityZones &&
        acceptanceRequired == other.acceptanceRequired &&
        managesVpcEndpoints == other.managesVpcEndpoints &&
        networkLoadBalancerArns == other.networkLoadBalancerArns &&
        gatewayLoadBalancerArns == other.gatewayLoadBalancerArns &&
        supportedIpAddressTypes == other.supportedIpAddressTypes &&
        baseEndpointDnsNames == other.baseEndpointDnsNames &&
        privateDnsName == other.privateDnsName &&
        privateDnsNameConfiguration == other.privateDnsNameConfiguration &&
        payerResponsibility == other.payerResponsibility &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, serviceState.hashCode);
    _$hash = $jc(_$hash, availabilityZones.hashCode);
    _$hash = $jc(_$hash, acceptanceRequired.hashCode);
    _$hash = $jc(_$hash, managesVpcEndpoints.hashCode);
    _$hash = $jc(_$hash, networkLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, gatewayLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, supportedIpAddressTypes.hashCode);
    _$hash = $jc(_$hash, baseEndpointDnsNames.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, privateDnsNameConfiguration.hashCode);
    _$hash = $jc(_$hash, payerResponsibility.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceConfigurationBuilder
    implements Builder<ServiceConfiguration, ServiceConfigurationBuilder> {
  _$ServiceConfiguration? _$v;

  _i2.ListBuilder<ServiceTypeDetail>? _serviceType;
  _i2.ListBuilder<ServiceTypeDetail> get serviceType =>
      _$this._serviceType ??= new _i2.ListBuilder<ServiceTypeDetail>();
  set serviceType(_i2.ListBuilder<ServiceTypeDetail>? serviceType) =>
      _$this._serviceType = serviceType;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  ServiceState? _serviceState;
  ServiceState? get serviceState => _$this._serviceState;
  set serviceState(ServiceState? serviceState) =>
      _$this._serviceState = serviceState;

  _i2.ListBuilder<String>? _availabilityZones;
  _i2.ListBuilder<String> get availabilityZones =>
      _$this._availabilityZones ??= new _i2.ListBuilder<String>();
  set availabilityZones(_i2.ListBuilder<String>? availabilityZones) =>
      _$this._availabilityZones = availabilityZones;

  bool? _acceptanceRequired;
  bool? get acceptanceRequired => _$this._acceptanceRequired;
  set acceptanceRequired(bool? acceptanceRequired) =>
      _$this._acceptanceRequired = acceptanceRequired;

  bool? _managesVpcEndpoints;
  bool? get managesVpcEndpoints => _$this._managesVpcEndpoints;
  set managesVpcEndpoints(bool? managesVpcEndpoints) =>
      _$this._managesVpcEndpoints = managesVpcEndpoints;

  _i2.ListBuilder<String>? _networkLoadBalancerArns;
  _i2.ListBuilder<String> get networkLoadBalancerArns =>
      _$this._networkLoadBalancerArns ??= new _i2.ListBuilder<String>();
  set networkLoadBalancerArns(
          _i2.ListBuilder<String>? networkLoadBalancerArns) =>
      _$this._networkLoadBalancerArns = networkLoadBalancerArns;

  _i2.ListBuilder<String>? _gatewayLoadBalancerArns;
  _i2.ListBuilder<String> get gatewayLoadBalancerArns =>
      _$this._gatewayLoadBalancerArns ??= new _i2.ListBuilder<String>();
  set gatewayLoadBalancerArns(
          _i2.ListBuilder<String>? gatewayLoadBalancerArns) =>
      _$this._gatewayLoadBalancerArns = gatewayLoadBalancerArns;

  _i2.ListBuilder<ServiceConnectivityType>? _supportedIpAddressTypes;
  _i2.ListBuilder<ServiceConnectivityType> get supportedIpAddressTypes =>
      _$this._supportedIpAddressTypes ??=
          new _i2.ListBuilder<ServiceConnectivityType>();
  set supportedIpAddressTypes(
          _i2.ListBuilder<ServiceConnectivityType>? supportedIpAddressTypes) =>
      _$this._supportedIpAddressTypes = supportedIpAddressTypes;

  _i2.ListBuilder<String>? _baseEndpointDnsNames;
  _i2.ListBuilder<String> get baseEndpointDnsNames =>
      _$this._baseEndpointDnsNames ??= new _i2.ListBuilder<String>();
  set baseEndpointDnsNames(_i2.ListBuilder<String>? baseEndpointDnsNames) =>
      _$this._baseEndpointDnsNames = baseEndpointDnsNames;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  PrivateDnsNameConfigurationBuilder? _privateDnsNameConfiguration;
  PrivateDnsNameConfigurationBuilder get privateDnsNameConfiguration =>
      _$this._privateDnsNameConfiguration ??=
          new PrivateDnsNameConfigurationBuilder();
  set privateDnsNameConfiguration(
          PrivateDnsNameConfigurationBuilder? privateDnsNameConfiguration) =>
      _$this._privateDnsNameConfiguration = privateDnsNameConfiguration;

  PayerResponsibility? _payerResponsibility;
  PayerResponsibility? get payerResponsibility => _$this._payerResponsibility;
  set payerResponsibility(PayerResponsibility? payerResponsibility) =>
      _$this._payerResponsibility = payerResponsibility;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ServiceConfigurationBuilder() {
    ServiceConfiguration._init(this);
  }

  ServiceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceType = $v.serviceType?.toBuilder();
      _serviceId = $v.serviceId;
      _serviceName = $v.serviceName;
      _serviceState = $v.serviceState;
      _availabilityZones = $v.availabilityZones?.toBuilder();
      _acceptanceRequired = $v.acceptanceRequired;
      _managesVpcEndpoints = $v.managesVpcEndpoints;
      _networkLoadBalancerArns = $v.networkLoadBalancerArns?.toBuilder();
      _gatewayLoadBalancerArns = $v.gatewayLoadBalancerArns?.toBuilder();
      _supportedIpAddressTypes = $v.supportedIpAddressTypes?.toBuilder();
      _baseEndpointDnsNames = $v.baseEndpointDnsNames?.toBuilder();
      _privateDnsName = $v.privateDnsName;
      _privateDnsNameConfiguration =
          $v.privateDnsNameConfiguration?.toBuilder();
      _payerResponsibility = $v.payerResponsibility;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceConfiguration;
  }

  @override
  void update(void Function(ServiceConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceConfiguration build() => _build();

  _$ServiceConfiguration _build() {
    _$ServiceConfiguration _$result;
    try {
      _$result = _$v ??
          new _$ServiceConfiguration._(
              serviceType: _serviceType?.build(),
              serviceId: serviceId,
              serviceName: serviceName,
              serviceState: serviceState,
              availabilityZones: _availabilityZones?.build(),
              acceptanceRequired: BuiltValueNullFieldError.checkNotNull(
                  acceptanceRequired,
                  r'ServiceConfiguration',
                  'acceptanceRequired'),
              managesVpcEndpoints: BuiltValueNullFieldError.checkNotNull(
                  managesVpcEndpoints,
                  r'ServiceConfiguration',
                  'managesVpcEndpoints'),
              networkLoadBalancerArns: _networkLoadBalancerArns?.build(),
              gatewayLoadBalancerArns: _gatewayLoadBalancerArns?.build(),
              supportedIpAddressTypes: _supportedIpAddressTypes?.build(),
              baseEndpointDnsNames: _baseEndpointDnsNames?.build(),
              privateDnsName: privateDnsName,
              privateDnsNameConfiguration:
                  _privateDnsNameConfiguration?.build(),
              payerResponsibility: payerResponsibility,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceType';
        _serviceType?.build();

        _$failedField = 'availabilityZones';
        _availabilityZones?.build();

        _$failedField = 'networkLoadBalancerArns';
        _networkLoadBalancerArns?.build();
        _$failedField = 'gatewayLoadBalancerArns';
        _gatewayLoadBalancerArns?.build();
        _$failedField = 'supportedIpAddressTypes';
        _supportedIpAddressTypes?.build();
        _$failedField = 'baseEndpointDnsNames';
        _baseEndpointDnsNames?.build();

        _$failedField = 'privateDnsNameConfiguration';
        _privateDnsNameConfiguration?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServiceConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
