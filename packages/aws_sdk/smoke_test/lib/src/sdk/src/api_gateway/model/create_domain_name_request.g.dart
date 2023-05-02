// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_domain_name_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDomainNameRequest extends CreateDomainNameRequest {
  @override
  final String domainName;
  @override
  final String? certificateName;
  @override
  final String? certificateBody;
  @override
  final String? certificatePrivateKey;
  @override
  final String? certificateChain;
  @override
  final String? certificateArn;
  @override
  final String? regionalCertificateName;
  @override
  final String? regionalCertificateArn;
  @override
  final _i3.EndpointConfiguration? endpointConfiguration;
  @override
  final _i6.BuiltMap<String, String>? tags;
  @override
  final _i4.SecurityPolicy? securityPolicy;
  @override
  final _i5.MutualTlsAuthenticationInput? mutualTlsAuthentication;
  @override
  final String? ownershipVerificationCertificateArn;

  factory _$CreateDomainNameRequest(
          [void Function(CreateDomainNameRequestBuilder)? updates]) =>
      (new CreateDomainNameRequestBuilder()..update(updates))._build();

  _$CreateDomainNameRequest._(
      {required this.domainName,
      this.certificateName,
      this.certificateBody,
      this.certificatePrivateKey,
      this.certificateChain,
      this.certificateArn,
      this.regionalCertificateName,
      this.regionalCertificateArn,
      this.endpointConfiguration,
      this.tags,
      this.securityPolicy,
      this.mutualTlsAuthentication,
      this.ownershipVerificationCertificateArn})
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
        domainName == other.domainName &&
        certificateName == other.certificateName &&
        certificateBody == other.certificateBody &&
        certificatePrivateKey == other.certificatePrivateKey &&
        certificateChain == other.certificateChain &&
        certificateArn == other.certificateArn &&
        regionalCertificateName == other.regionalCertificateName &&
        regionalCertificateArn == other.regionalCertificateArn &&
        endpointConfiguration == other.endpointConfiguration &&
        tags == other.tags &&
        securityPolicy == other.securityPolicy &&
        mutualTlsAuthentication == other.mutualTlsAuthentication &&
        ownershipVerificationCertificateArn ==
            other.ownershipVerificationCertificateArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, certificateName.hashCode);
    _$hash = $jc(_$hash, certificateBody.hashCode);
    _$hash = $jc(_$hash, certificatePrivateKey.hashCode);
    _$hash = $jc(_$hash, certificateChain.hashCode);
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jc(_$hash, regionalCertificateName.hashCode);
    _$hash = $jc(_$hash, regionalCertificateArn.hashCode);
    _$hash = $jc(_$hash, endpointConfiguration.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, securityPolicy.hashCode);
    _$hash = $jc(_$hash, mutualTlsAuthentication.hashCode);
    _$hash = $jc(_$hash, ownershipVerificationCertificateArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDomainNameRequestBuilder
    implements
        Builder<CreateDomainNameRequest, CreateDomainNameRequestBuilder> {
  _$CreateDomainNameRequest? _$v;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  String? _certificateName;
  String? get certificateName => _$this._certificateName;
  set certificateName(String? certificateName) =>
      _$this._certificateName = certificateName;

  String? _certificateBody;
  String? get certificateBody => _$this._certificateBody;
  set certificateBody(String? certificateBody) =>
      _$this._certificateBody = certificateBody;

  String? _certificatePrivateKey;
  String? get certificatePrivateKey => _$this._certificatePrivateKey;
  set certificatePrivateKey(String? certificatePrivateKey) =>
      _$this._certificatePrivateKey = certificatePrivateKey;

  String? _certificateChain;
  String? get certificateChain => _$this._certificateChain;
  set certificateChain(String? certificateChain) =>
      _$this._certificateChain = certificateChain;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  String? _regionalCertificateName;
  String? get regionalCertificateName => _$this._regionalCertificateName;
  set regionalCertificateName(String? regionalCertificateName) =>
      _$this._regionalCertificateName = regionalCertificateName;

  String? _regionalCertificateArn;
  String? get regionalCertificateArn => _$this._regionalCertificateArn;
  set regionalCertificateArn(String? regionalCertificateArn) =>
      _$this._regionalCertificateArn = regionalCertificateArn;

  _i3.EndpointConfigurationBuilder? _endpointConfiguration;
  _i3.EndpointConfigurationBuilder get endpointConfiguration =>
      _$this._endpointConfiguration ??= new _i3.EndpointConfigurationBuilder();
  set endpointConfiguration(
          _i3.EndpointConfigurationBuilder? endpointConfiguration) =>
      _$this._endpointConfiguration = endpointConfiguration;

  _i6.MapBuilder<String, String>? _tags;
  _i6.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i6.MapBuilder<String, String>();
  set tags(_i6.MapBuilder<String, String>? tags) => _$this._tags = tags;

  _i4.SecurityPolicy? _securityPolicy;
  _i4.SecurityPolicy? get securityPolicy => _$this._securityPolicy;
  set securityPolicy(_i4.SecurityPolicy? securityPolicy) =>
      _$this._securityPolicy = securityPolicy;

  _i5.MutualTlsAuthenticationInputBuilder? _mutualTlsAuthentication;
  _i5.MutualTlsAuthenticationInputBuilder get mutualTlsAuthentication =>
      _$this._mutualTlsAuthentication ??=
          new _i5.MutualTlsAuthenticationInputBuilder();
  set mutualTlsAuthentication(
          _i5.MutualTlsAuthenticationInputBuilder? mutualTlsAuthentication) =>
      _$this._mutualTlsAuthentication = mutualTlsAuthentication;

  String? _ownershipVerificationCertificateArn;
  String? get ownershipVerificationCertificateArn =>
      _$this._ownershipVerificationCertificateArn;
  set ownershipVerificationCertificateArn(
          String? ownershipVerificationCertificateArn) =>
      _$this._ownershipVerificationCertificateArn =
          ownershipVerificationCertificateArn;

  CreateDomainNameRequestBuilder() {
    CreateDomainNameRequest._init(this);
  }

  CreateDomainNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainName = $v.domainName;
      _certificateName = $v.certificateName;
      _certificateBody = $v.certificateBody;
      _certificatePrivateKey = $v.certificatePrivateKey;
      _certificateChain = $v.certificateChain;
      _certificateArn = $v.certificateArn;
      _regionalCertificateName = $v.regionalCertificateName;
      _regionalCertificateArn = $v.regionalCertificateArn;
      _endpointConfiguration = $v.endpointConfiguration?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _securityPolicy = $v.securityPolicy;
      _mutualTlsAuthentication = $v.mutualTlsAuthentication?.toBuilder();
      _ownershipVerificationCertificateArn =
          $v.ownershipVerificationCertificateArn;
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
              domainName: BuiltValueNullFieldError.checkNotNull(
                  domainName, r'CreateDomainNameRequest', 'domainName'),
              certificateName: certificateName,
              certificateBody: certificateBody,
              certificatePrivateKey: certificatePrivateKey,
              certificateChain: certificateChain,
              certificateArn: certificateArn,
              regionalCertificateName: regionalCertificateName,
              regionalCertificateArn: regionalCertificateArn,
              endpointConfiguration: _endpointConfiguration?.build(),
              tags: _tags?.build(),
              securityPolicy: securityPolicy,
              mutualTlsAuthentication: _mutualTlsAuthentication?.build(),
              ownershipVerificationCertificateArn:
                  ownershipVerificationCertificateArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpointConfiguration';
        _endpointConfiguration?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'mutualTlsAuthentication';
        _mutualTlsAuthentication?.build();
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
