// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessEndpointRequest
    extends CreateVerifiedAccessEndpointRequest {
  @override
  final String? verifiedAccessGroupId;
  @override
  final VerifiedAccessEndpointType? endpointType;
  @override
  final VerifiedAccessEndpointAttachmentType? attachmentType;
  @override
  final String? domainCertificateArn;
  @override
  final String? applicationDomain;
  @override
  final String? endpointDomainPrefix;
  @override
  final _i3.BuiltList<String>? securityGroupIds;
  @override
  final CreateVerifiedAccessEndpointLoadBalancerOptions? loadBalancerOptions;
  @override
  final CreateVerifiedAccessEndpointEniOptions? networkInterfaceOptions;
  @override
  final String? description;
  @override
  final String? policyDocument;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$CreateVerifiedAccessEndpointRequest(
          [void Function(CreateVerifiedAccessEndpointRequestBuilder)?
              updates]) =>
      (new CreateVerifiedAccessEndpointRequestBuilder()..update(updates))
          ._build();

  _$CreateVerifiedAccessEndpointRequest._(
      {this.verifiedAccessGroupId,
      this.endpointType,
      this.attachmentType,
      this.domainCertificateArn,
      this.applicationDomain,
      this.endpointDomainPrefix,
      this.securityGroupIds,
      this.loadBalancerOptions,
      this.networkInterfaceOptions,
      this.description,
      this.policyDocument,
      this.tagSpecifications,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVerifiedAccessEndpointRequest', 'dryRun');
  }

  @override
  CreateVerifiedAccessEndpointRequest rebuild(
          void Function(CreateVerifiedAccessEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessEndpointRequestBuilder toBuilder() =>
      new CreateVerifiedAccessEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessEndpointRequest &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        endpointType == other.endpointType &&
        attachmentType == other.attachmentType &&
        domainCertificateArn == other.domainCertificateArn &&
        applicationDomain == other.applicationDomain &&
        endpointDomainPrefix == other.endpointDomainPrefix &&
        securityGroupIds == other.securityGroupIds &&
        loadBalancerOptions == other.loadBalancerOptions &&
        networkInterfaceOptions == other.networkInterfaceOptions &&
        description == other.description &&
        policyDocument == other.policyDocument &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, endpointType.hashCode);
    _$hash = $jc(_$hash, attachmentType.hashCode);
    _$hash = $jc(_$hash, domainCertificateArn.hashCode);
    _$hash = $jc(_$hash, applicationDomain.hashCode);
    _$hash = $jc(_$hash, endpointDomainPrefix.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, loadBalancerOptions.hashCode);
    _$hash = $jc(_$hash, networkInterfaceOptions.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVerifiedAccessEndpointRequestBuilder
    implements
        Builder<CreateVerifiedAccessEndpointRequest,
            CreateVerifiedAccessEndpointRequestBuilder> {
  _$CreateVerifiedAccessEndpointRequest? _$v;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

  VerifiedAccessEndpointType? _endpointType;
  VerifiedAccessEndpointType? get endpointType => _$this._endpointType;
  set endpointType(VerifiedAccessEndpointType? endpointType) =>
      _$this._endpointType = endpointType;

  VerifiedAccessEndpointAttachmentType? _attachmentType;
  VerifiedAccessEndpointAttachmentType? get attachmentType =>
      _$this._attachmentType;
  set attachmentType(VerifiedAccessEndpointAttachmentType? attachmentType) =>
      _$this._attachmentType = attachmentType;

  String? _domainCertificateArn;
  String? get domainCertificateArn => _$this._domainCertificateArn;
  set domainCertificateArn(String? domainCertificateArn) =>
      _$this._domainCertificateArn = domainCertificateArn;

  String? _applicationDomain;
  String? get applicationDomain => _$this._applicationDomain;
  set applicationDomain(String? applicationDomain) =>
      _$this._applicationDomain = applicationDomain;

  String? _endpointDomainPrefix;
  String? get endpointDomainPrefix => _$this._endpointDomainPrefix;
  set endpointDomainPrefix(String? endpointDomainPrefix) =>
      _$this._endpointDomainPrefix = endpointDomainPrefix;

  _i3.ListBuilder<String>? _securityGroupIds;
  _i3.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i3.ListBuilder<String>();
  set securityGroupIds(_i3.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder? _loadBalancerOptions;
  CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder
      get loadBalancerOptions => _$this._loadBalancerOptions ??=
          new CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder();
  set loadBalancerOptions(
          CreateVerifiedAccessEndpointLoadBalancerOptionsBuilder?
              loadBalancerOptions) =>
      _$this._loadBalancerOptions = loadBalancerOptions;

  CreateVerifiedAccessEndpointEniOptionsBuilder? _networkInterfaceOptions;
  CreateVerifiedAccessEndpointEniOptionsBuilder get networkInterfaceOptions =>
      _$this._networkInterfaceOptions ??=
          new CreateVerifiedAccessEndpointEniOptionsBuilder();
  set networkInterfaceOptions(
          CreateVerifiedAccessEndpointEniOptionsBuilder?
              networkInterfaceOptions) =>
      _$this._networkInterfaceOptions = networkInterfaceOptions;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateVerifiedAccessEndpointRequestBuilder() {
    CreateVerifiedAccessEndpointRequest._init(this);
  }

  CreateVerifiedAccessEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _endpointType = $v.endpointType;
      _attachmentType = $v.attachmentType;
      _domainCertificateArn = $v.domainCertificateArn;
      _applicationDomain = $v.applicationDomain;
      _endpointDomainPrefix = $v.endpointDomainPrefix;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _loadBalancerOptions = $v.loadBalancerOptions?.toBuilder();
      _networkInterfaceOptions = $v.networkInterfaceOptions?.toBuilder();
      _description = $v.description;
      _policyDocument = $v.policyDocument;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessEndpointRequest;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessEndpointRequest build() => _build();

  _$CreateVerifiedAccessEndpointRequest _build() {
    _$CreateVerifiedAccessEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessEndpointRequest._(
              verifiedAccessGroupId: verifiedAccessGroupId,
              endpointType: endpointType,
              attachmentType: attachmentType,
              domainCertificateArn: domainCertificateArn,
              applicationDomain: applicationDomain,
              endpointDomainPrefix: endpointDomainPrefix,
              securityGroupIds: _securityGroupIds?.build(),
              loadBalancerOptions: _loadBalancerOptions?.build(),
              networkInterfaceOptions: _networkInterfaceOptions?.build(),
              description: description,
              policyDocument: policyDocument,
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVerifiedAccessEndpointRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'loadBalancerOptions';
        _loadBalancerOptions?.build();
        _$failedField = 'networkInterfaceOptions';
        _networkInterfaceOptions?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessEndpointRequest',
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
