// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcEndpointRequest extends CreateVpcEndpointRequest {
  @override
  final bool dryRun;
  @override
  final VpcEndpointType? vpcEndpointType;
  @override
  final String? vpcId;
  @override
  final String? serviceName;
  @override
  final String? policyDocument;
  @override
  final _i3.BuiltList<String>? routeTableIds;
  @override
  final _i3.BuiltList<String>? subnetIds;
  @override
  final _i3.BuiltList<String>? securityGroupIds;
  @override
  final IpAddressType? ipAddressType;
  @override
  final DnsOptionsSpecification? dnsOptions;
  @override
  final String? clientToken;
  @override
  final bool privateDnsEnabled;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final _i3.BuiltList<SubnetConfiguration>? subnetConfigurations;

  factory _$CreateVpcEndpointRequest(
          [void Function(CreateVpcEndpointRequestBuilder)? updates]) =>
      (new CreateVpcEndpointRequestBuilder()..update(updates))._build();

  _$CreateVpcEndpointRequest._(
      {required this.dryRun,
      this.vpcEndpointType,
      this.vpcId,
      this.serviceName,
      this.policyDocument,
      this.routeTableIds,
      this.subnetIds,
      this.securityGroupIds,
      this.ipAddressType,
      this.dnsOptions,
      this.clientToken,
      required this.privateDnsEnabled,
      this.tagSpecifications,
      this.subnetConfigurations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVpcEndpointRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        privateDnsEnabled, r'CreateVpcEndpointRequest', 'privateDnsEnabled');
  }

  @override
  CreateVpcEndpointRequest rebuild(
          void Function(CreateVpcEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcEndpointRequestBuilder toBuilder() =>
      new CreateVpcEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcEndpointRequest &&
        dryRun == other.dryRun &&
        vpcEndpointType == other.vpcEndpointType &&
        vpcId == other.vpcId &&
        serviceName == other.serviceName &&
        policyDocument == other.policyDocument &&
        routeTableIds == other.routeTableIds &&
        subnetIds == other.subnetIds &&
        securityGroupIds == other.securityGroupIds &&
        ipAddressType == other.ipAddressType &&
        dnsOptions == other.dnsOptions &&
        clientToken == other.clientToken &&
        privateDnsEnabled == other.privateDnsEnabled &&
        tagSpecifications == other.tagSpecifications &&
        subnetConfigurations == other.subnetConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcEndpointType.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, routeTableIds.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, ipAddressType.hashCode);
    _$hash = $jc(_$hash, dnsOptions.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, privateDnsEnabled.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, subnetConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcEndpointRequestBuilder
    implements
        Builder<CreateVpcEndpointRequest, CreateVpcEndpointRequestBuilder> {
  _$CreateVpcEndpointRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  VpcEndpointType? _vpcEndpointType;
  VpcEndpointType? get vpcEndpointType => _$this._vpcEndpointType;
  set vpcEndpointType(VpcEndpointType? vpcEndpointType) =>
      _$this._vpcEndpointType = vpcEndpointType;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  _i3.ListBuilder<String>? _routeTableIds;
  _i3.ListBuilder<String> get routeTableIds =>
      _$this._routeTableIds ??= new _i3.ListBuilder<String>();
  set routeTableIds(_i3.ListBuilder<String>? routeTableIds) =>
      _$this._routeTableIds = routeTableIds;

  _i3.ListBuilder<String>? _subnetIds;
  _i3.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i3.ListBuilder<String>();
  set subnetIds(_i3.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  _i3.ListBuilder<String>? _securityGroupIds;
  _i3.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i3.ListBuilder<String>();
  set securityGroupIds(_i3.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  IpAddressType? _ipAddressType;
  IpAddressType? get ipAddressType => _$this._ipAddressType;
  set ipAddressType(IpAddressType? ipAddressType) =>
      _$this._ipAddressType = ipAddressType;

  DnsOptionsSpecificationBuilder? _dnsOptions;
  DnsOptionsSpecificationBuilder get dnsOptions =>
      _$this._dnsOptions ??= new DnsOptionsSpecificationBuilder();
  set dnsOptions(DnsOptionsSpecificationBuilder? dnsOptions) =>
      _$this._dnsOptions = dnsOptions;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _privateDnsEnabled;
  bool? get privateDnsEnabled => _$this._privateDnsEnabled;
  set privateDnsEnabled(bool? privateDnsEnabled) =>
      _$this._privateDnsEnabled = privateDnsEnabled;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i3.ListBuilder<SubnetConfiguration>? _subnetConfigurations;
  _i3.ListBuilder<SubnetConfiguration> get subnetConfigurations =>
      _$this._subnetConfigurations ??=
          new _i3.ListBuilder<SubnetConfiguration>();
  set subnetConfigurations(
          _i3.ListBuilder<SubnetConfiguration>? subnetConfigurations) =>
      _$this._subnetConfigurations = subnetConfigurations;

  CreateVpcEndpointRequestBuilder() {
    CreateVpcEndpointRequest._init(this);
  }

  CreateVpcEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcEndpointType = $v.vpcEndpointType;
      _vpcId = $v.vpcId;
      _serviceName = $v.serviceName;
      _policyDocument = $v.policyDocument;
      _routeTableIds = $v.routeTableIds?.toBuilder();
      _subnetIds = $v.subnetIds?.toBuilder();
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _ipAddressType = $v.ipAddressType;
      _dnsOptions = $v.dnsOptions?.toBuilder();
      _clientToken = $v.clientToken;
      _privateDnsEnabled = $v.privateDnsEnabled;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _subnetConfigurations = $v.subnetConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcEndpointRequest;
  }

  @override
  void update(void Function(CreateVpcEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcEndpointRequest build() => _build();

  _$CreateVpcEndpointRequest _build() {
    _$CreateVpcEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcEndpointRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVpcEndpointRequest', 'dryRun'),
              vpcEndpointType: vpcEndpointType,
              vpcId: vpcId,
              serviceName: serviceName,
              policyDocument: policyDocument,
              routeTableIds: _routeTableIds?.build(),
              subnetIds: _subnetIds?.build(),
              securityGroupIds: _securityGroupIds?.build(),
              ipAddressType: ipAddressType,
              dnsOptions: _dnsOptions?.build(),
              clientToken: clientToken,
              privateDnsEnabled: BuiltValueNullFieldError.checkNotNull(
                  privateDnsEnabled,
                  r'CreateVpcEndpointRequest',
                  'privateDnsEnabled'),
              tagSpecifications: _tagSpecifications?.build(),
              subnetConfigurations: _subnetConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routeTableIds';
        _routeTableIds?.build();
        _$failedField = 'subnetIds';
        _subnetIds?.build();
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();

        _$failedField = 'dnsOptions';
        _dnsOptions?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
        _$failedField = 'subnetConfigurations';
        _subnetConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcEndpointRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
