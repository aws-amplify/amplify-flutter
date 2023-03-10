// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_domain_name_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDomainNameRequest extends CreateDomainNameRequest {
  @override
  final String? certificateArn;
  @override
  final String? certificateBody;
  @override
  final String? certificateChain;
  @override
  final String? certificateName;
  @override
  final String? certificatePrivateKey;
  @override
  final String domainName;
  @override
  final _i3.EndpointConfiguration? endpointConfiguration;
  @override
  final _i4.MutualTlsAuthenticationInput? mutualTlsAuthentication;
  @override
  final String? ownershipVerificationCertificateArn;
  @override
  final String? regionalCertificateArn;
  @override
  final String? regionalCertificateName;
  @override
  final _i5.SecurityPolicy? securityPolicy;
  @override
  final _i6.BuiltMap<String, String>? tags;

  factory _$CreateDomainNameRequest(
          [void Function(CreateDomainNameRequestBuilder)? updates]) =>
      (new CreateDomainNameRequestBuilder()..update(updates))._build();

  _$CreateDomainNameRequest._(
      {this.certificateArn,
      this.certificateBody,
      this.certificateChain,
      this.certificateName,
      this.certificatePrivateKey,
      required this.domainName,
      this.endpointConfiguration,
      this.mutualTlsAuthentication,
      this.ownershipVerificationCertificateArn,
      this.regionalCertificateArn,
      this.regionalCertificateName,
      this.securityPolicy,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'CreateDomainNameRequest', 'domainName');
  }

  @override
  CreateDomainNameRequest rebuild(
          void Function(CreateDomainNameRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDomainNameRequestBuilder toBuilder() =>
      new CreateDomainNameRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDomainNameRequest &&
        certificateArn == other.certificateArn &&
        certificateBody == other.certificateBody &&
        certificateChain == other.certificateChain &&
        certificateName == other.certificateName &&
        certificatePrivateKey == other.certificatePrivateKey &&
        domainName == other.domainName &&
        endpointConfiguration == other.endpointConfiguration &&
        mutualTlsAuthentication == other.mutualTlsAuthentication &&
        ownershipVerificationCertificateArn ==
            other.ownershipVerificationCertificateArn &&
        regionalCertificateArn == other.regionalCertificateArn &&
        regionalCertificateName == other.regionalCertificateName &&
        securityPolicy == other.securityPolicy &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jc(_$hash, certificateBody.hashCode);
    _$hash = $jc(_$hash, certificateChain.hashCode);
    _$hash = $jc(_$hash, certificateName.hashCode);
    _$hash = $jc(_$hash, certificatePrivateKey.hashCode);
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, endpointConfiguration.hashCode);
    _$hash = $jc(_$hash, mutualTlsAuthentication.hashCode);
    _$hash = $jc(_$hash, ownershipVerificationCertificateArn.hashCode);
    _$hash = $jc(_$hash, regionalCertificateArn.hashCode);
    _$hash = $jc(_$hash, regionalCertificateName.hashCode);
    _$hash = $jc(_$hash, securityPolicy.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDomainNameRequestBuilder
    implements
        Builder<CreateDomainNameRequest, CreateDomainNameRequestBuilder> {
  _$CreateDomainNameRequest? _$v;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  String? _certificateBody;
  String? get certificateBody => _$this._certificateBody;
  set certificateBody(String? certificateBody) =>
      _$this._certificateBody = certificateBody;

  String? _certificateChain;
  String? get certificateChain => _$this._certificateChain;
  set certificateChain(String? certificateChain) =>
      _$this._certificateChain = certificateChain;

  String? _certificateName;
  String? get certificateName => _$this._certificateName;
  set certificateName(String? certificateName) =>
      _$this._certificateName = certificateName;

  String? _certificatePrivateKey;
  String? get certificatePrivateKey => _$this._certificatePrivateKey;
  set certificatePrivateKey(String? certificatePrivateKey) =>
      _$this._certificatePrivateKey = certificatePrivateKey;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  _i3.EndpointConfigurationBuilder? _endpointConfiguration;
  _i3.EndpointConfigurationBuilder get endpointConfiguration =>
      _$this._endpointConfiguration ??= new _i3.EndpointConfigurationBuilder();
  set endpointConfiguration(
          _i3.EndpointConfigurationBuilder? endpointConfiguration) =>
      _$this._endpointConfiguration = endpointConfiguration;

  _i4.MutualTlsAuthenticationInputBuilder? _mutualTlsAuthentication;
  _i4.MutualTlsAuthenticationInputBuilder get mutualTlsAuthentication =>
      _$this._mutualTlsAuthentication ??=
          new _i4.MutualTlsAuthenticationInputBuilder();
  set mutualTlsAuthentication(
          _i4.MutualTlsAuthenticationInputBuilder? mutualTlsAuthentication) =>
      _$this._mutualTlsAuthentication = mutualTlsAuthentication;

  String? _ownershipVerificationCertificateArn;
  String? get ownershipVerificationCertificateArn =>
      _$this._ownershipVerificationCertificateArn;
  set ownershipVerificationCertificateArn(
          String? ownershipVerificationCertificateArn) =>
      _$this._ownershipVerificationCertificateArn =
          ownershipVerificationCertificateArn;

  String? _regionalCertificateArn;
  String? get regionalCertificateArn => _$this._regionalCertificateArn;
  set regionalCertificateArn(String? regionalCertificateArn) =>
      _$this._regionalCertificateArn = regionalCertificateArn;

  String? _regionalCertificateName;
  String? get regionalCertificateName => _$this._regionalCertificateName;
  set regionalCertificateName(String? regionalCertificateName) =>
      _$this._regionalCertificateName = regionalCertificateName;

  _i5.SecurityPolicy? _securityPolicy;
  _i5.SecurityPolicy? get securityPolicy => _$this._securityPolicy;
  set securityPolicy(_i5.SecurityPolicy? securityPolicy) =>
      _$this._securityPolicy = securityPolicy;

  _i6.MapBuilder<String, String>? _tags;
  _i6.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i6.MapBuilder<String, String>();
  set tags(_i6.MapBuilder<String, String>? tags) => _$this._tags = tags;

  CreateDomainNameRequestBuilder() {
    CreateDomainNameRequest._init(this);
  }

  CreateDomainNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificateArn = $v.certificateArn;
      _certificateBody = $v.certificateBody;
      _certificateChain = $v.certificateChain;
      _certificateName = $v.certificateName;
      _certificatePrivateKey = $v.certificatePrivateKey;
      _domainName = $v.domainName;
      _endpointConfiguration = $v.endpointConfiguration?.toBuilder();
      _mutualTlsAuthentication = $v.mutualTlsAuthentication?.toBuilder();
      _ownershipVerificationCertificateArn =
          $v.ownershipVerificationCertificateArn;
      _regionalCertificateArn = $v.regionalCertificateArn;
      _regionalCertificateName = $v.regionalCertificateName;
      _securityPolicy = $v.securityPolicy;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDomainNameRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDomainNameRequest;
  }

  @override
  void update(void Function(CreateDomainNameRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDomainNameRequest build() => _build();

  _$CreateDomainNameRequest _build() {
    _$CreateDomainNameRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateDomainNameRequest._(
              certificateArn: certificateArn,
              certificateBody: certificateBody,
              certificateChain: certificateChain,
              certificateName: certificateName,
              certificatePrivateKey: certificatePrivateKey,
              domainName: BuiltValueNullFieldError.checkNotNull(
                  domainName, r'CreateDomainNameRequest', 'domainName'),
              endpointConfiguration: _endpointConfiguration?.build(),
              mutualTlsAuthentication: _mutualTlsAuthentication?.build(),
              ownershipVerificationCertificateArn:
                  ownershipVerificationCertificateArn,
              regionalCertificateArn: regionalCertificateArn,
              regionalCertificateName: regionalCertificateName,
              securityPolicy: securityPolicy,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpointConfiguration';
        _endpointConfiguration?.build();
        _$failedField = 'mutualTlsAuthentication';
        _mutualTlsAuthentication?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDomainNameRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
