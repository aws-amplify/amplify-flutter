// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_endpoint_service_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcEndpointServiceConfigurationRequest
    extends CreateVpcEndpointServiceConfigurationRequest {
  @override
  final bool dryRun;
  @override
  final bool acceptanceRequired;
  @override
  final String? privateDnsName;
  @override
  final _i3.BuiltList<String>? networkLoadBalancerArns;
  @override
  final _i3.BuiltList<String>? gatewayLoadBalancerArns;
  @override
  final _i3.BuiltList<String>? supportedIpAddressTypes;
  @override
  final String? clientToken;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateVpcEndpointServiceConfigurationRequest(
          [void Function(CreateVpcEndpointServiceConfigurationRequestBuilder)?
              updates]) =>
      (new CreateVpcEndpointServiceConfigurationRequestBuilder()
            ..update(updates))
          ._build();

  _$CreateVpcEndpointServiceConfigurationRequest._(
      {required this.dryRun,
      required this.acceptanceRequired,
      this.privateDnsName,
      this.networkLoadBalancerArns,
      this.gatewayLoadBalancerArns,
      this.supportedIpAddressTypes,
      this.clientToken,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVpcEndpointServiceConfigurationRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(acceptanceRequired,
        r'CreateVpcEndpointServiceConfigurationRequest', 'acceptanceRequired');
  }

  @override
  CreateVpcEndpointServiceConfigurationRequest rebuild(
          void Function(CreateVpcEndpointServiceConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcEndpointServiceConfigurationRequestBuilder toBuilder() =>
      new CreateVpcEndpointServiceConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcEndpointServiceConfigurationRequest &&
        dryRun == other.dryRun &&
        acceptanceRequired == other.acceptanceRequired &&
        privateDnsName == other.privateDnsName &&
        networkLoadBalancerArns == other.networkLoadBalancerArns &&
        gatewayLoadBalancerArns == other.gatewayLoadBalancerArns &&
        supportedIpAddressTypes == other.supportedIpAddressTypes &&
        clientToken == other.clientToken &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, acceptanceRequired.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, networkLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, gatewayLoadBalancerArns.hashCode);
    _$hash = $jc(_$hash, supportedIpAddressTypes.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcEndpointServiceConfigurationRequestBuilder
    implements
        Builder<CreateVpcEndpointServiceConfigurationRequest,
            CreateVpcEndpointServiceConfigurationRequestBuilder> {
  _$CreateVpcEndpointServiceConfigurationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _acceptanceRequired;
  bool? get acceptanceRequired => _$this._acceptanceRequired;
  set acceptanceRequired(bool? acceptanceRequired) =>
      _$this._acceptanceRequired = acceptanceRequired;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  _i3.ListBuilder<String>? _networkLoadBalancerArns;
  _i3.ListBuilder<String> get networkLoadBalancerArns =>
      _$this._networkLoadBalancerArns ??= new _i3.ListBuilder<String>();
  set networkLoadBalancerArns(
          _i3.ListBuilder<String>? networkLoadBalancerArns) =>
      _$this._networkLoadBalancerArns = networkLoadBalancerArns;

  _i3.ListBuilder<String>? _gatewayLoadBalancerArns;
  _i3.ListBuilder<String> get gatewayLoadBalancerArns =>
      _$this._gatewayLoadBalancerArns ??= new _i3.ListBuilder<String>();
  set gatewayLoadBalancerArns(
          _i3.ListBuilder<String>? gatewayLoadBalancerArns) =>
      _$this._gatewayLoadBalancerArns = gatewayLoadBalancerArns;

  _i3.ListBuilder<String>? _supportedIpAddressTypes;
  _i3.ListBuilder<String> get supportedIpAddressTypes =>
      _$this._supportedIpAddressTypes ??= new _i3.ListBuilder<String>();
  set supportedIpAddressTypes(
          _i3.ListBuilder<String>? supportedIpAddressTypes) =>
      _$this._supportedIpAddressTypes = supportedIpAddressTypes;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateVpcEndpointServiceConfigurationRequestBuilder() {
    CreateVpcEndpointServiceConfigurationRequest._init(this);
  }

  CreateVpcEndpointServiceConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _acceptanceRequired = $v.acceptanceRequired;
      _privateDnsName = $v.privateDnsName;
      _networkLoadBalancerArns = $v.networkLoadBalancerArns?.toBuilder();
      _gatewayLoadBalancerArns = $v.gatewayLoadBalancerArns?.toBuilder();
      _supportedIpAddressTypes = $v.supportedIpAddressTypes?.toBuilder();
      _clientToken = $v.clientToken;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcEndpointServiceConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcEndpointServiceConfigurationRequest;
  }

  @override
  void update(
      void Function(CreateVpcEndpointServiceConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcEndpointServiceConfigurationRequest build() => _build();

  _$CreateVpcEndpointServiceConfigurationRequest _build() {
    _$CreateVpcEndpointServiceConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcEndpointServiceConfigurationRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'CreateVpcEndpointServiceConfigurationRequest', 'dryRun'),
              acceptanceRequired: BuiltValueNullFieldError.checkNotNull(
                  acceptanceRequired,
                  r'CreateVpcEndpointServiceConfigurationRequest',
                  'acceptanceRequired'),
              privateDnsName: privateDnsName,
              networkLoadBalancerArns: _networkLoadBalancerArns?.build(),
              gatewayLoadBalancerArns: _gatewayLoadBalancerArns?.build(),
              supportedIpAddressTypes: _supportedIpAddressTypes?.build(),
              clientToken: clientToken,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkLoadBalancerArns';
        _networkLoadBalancerArns?.build();
        _$failedField = 'gatewayLoadBalancerArns';
        _gatewayLoadBalancerArns?.build();
        _$failedField = 'supportedIpAddressTypes';
        _supportedIpAddressTypes?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcEndpointServiceConfigurationRequest',
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
