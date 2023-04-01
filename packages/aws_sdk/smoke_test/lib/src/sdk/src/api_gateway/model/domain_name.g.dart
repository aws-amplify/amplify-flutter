// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.domain_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainName extends DomainName {
  @override
  final String? domainName;
  @override
  final String? certificateName;
  @override
  final String? certificateArn;
  @override
  final DateTime? certificateUploadDate;
  @override
  final String? regionalDomainName;
  @override
  final String? regionalHostedZoneId;
  @override
  final String? regionalCertificateName;
  @override
  final String? regionalCertificateArn;
  @override
  final String? distributionDomainName;
  @override
  final String? distributionHostedZoneId;
  @override
  final _i2.EndpointConfiguration? endpointConfiguration;
  @override
  final _i3.DomainNameStatus? domainNameStatus;
  @override
  final String? domainNameStatusMessage;
  @override
  final _i4.SecurityPolicy? securityPolicy;
  @override
  final _i6.BuiltMap<String, String>? tags;
  @override
  final _i5.MutualTlsAuthentication? mutualTlsAuthentication;
  @override
  final String? ownershipVerificationCertificateArn;

  factory _$DomainName([void Function(DomainNameBuilder)? updates]) =>
      (new DomainNameBuilder()..update(updates))._build();

  _$DomainName._(
      {this.domainName,
      this.certificateName,
      this.certificateArn,
      this.certificateUploadDate,
      this.regionalDomainName,
      this.regionalHostedZoneId,
      this.regionalCertificateName,
      this.regionalCertificateArn,
      this.distributionDomainName,
      this.distributionHostedZoneId,
      this.endpointConfiguration,
      this.domainNameStatus,
      this.domainNameStatusMessage,
      this.securityPolicy,
      this.tags,
      this.mutualTlsAuthentication,
      this.ownershipVerificationCertificateArn})
      : super._();

  @override
  DomainName rebuild(void Function(DomainNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainNameBuilder toBuilder() => new DomainNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainName &&
        domainName == other.domainName &&
        certificateName == other.certificateName &&
        certificateArn == other.certificateArn &&
        certificateUploadDate == other.certificateUploadDate &&
        regionalDomainName == other.regionalDomainName &&
        regionalHostedZoneId == other.regionalHostedZoneId &&
        regionalCertificateName == other.regionalCertificateName &&
        regionalCertificateArn == other.regionalCertificateArn &&
        distributionDomainName == other.distributionDomainName &&
        distributionHostedZoneId == other.distributionHostedZoneId &&
        endpointConfiguration == other.endpointConfiguration &&
        domainNameStatus == other.domainNameStatus &&
        domainNameStatusMessage == other.domainNameStatusMessage &&
        securityPolicy == other.securityPolicy &&
        tags == other.tags &&
        mutualTlsAuthentication == other.mutualTlsAuthentication &&
        ownershipVerificationCertificateArn ==
            other.ownershipVerificationCertificateArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, certificateName.hashCode);
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jc(_$hash, certificateUploadDate.hashCode);
    _$hash = $jc(_$hash, regionalDomainName.hashCode);
    _$hash = $jc(_$hash, regionalHostedZoneId.hashCode);
    _$hash = $jc(_$hash, regionalCertificateName.hashCode);
    _$hash = $jc(_$hash, regionalCertificateArn.hashCode);
    _$hash = $jc(_$hash, distributionDomainName.hashCode);
    _$hash = $jc(_$hash, distributionHostedZoneId.hashCode);
    _$hash = $jc(_$hash, endpointConfiguration.hashCode);
    _$hash = $jc(_$hash, domainNameStatus.hashCode);
    _$hash = $jc(_$hash, domainNameStatusMessage.hashCode);
    _$hash = $jc(_$hash, securityPolicy.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, mutualTlsAuthentication.hashCode);
    _$hash = $jc(_$hash, ownershipVerificationCertificateArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DomainNameBuilder implements Builder<DomainName, DomainNameBuilder> {
  _$DomainName? _$v;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  String? _certificateName;
  String? get certificateName => _$this._certificateName;
  set certificateName(String? certificateName) =>
      _$this._certificateName = certificateName;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  DateTime? _certificateUploadDate;
  DateTime? get certificateUploadDate => _$this._certificateUploadDate;
  set certificateUploadDate(DateTime? certificateUploadDate) =>
      _$this._certificateUploadDate = certificateUploadDate;

  String? _regionalDomainName;
  String? get regionalDomainName => _$this._regionalDomainName;
  set regionalDomainName(String? regionalDomainName) =>
      _$this._regionalDomainName = regionalDomainName;

  String? _regionalHostedZoneId;
  String? get regionalHostedZoneId => _$this._regionalHostedZoneId;
  set regionalHostedZoneId(String? regionalHostedZoneId) =>
      _$this._regionalHostedZoneId = regionalHostedZoneId;

  String? _regionalCertificateName;
  String? get regionalCertificateName => _$this._regionalCertificateName;
  set regionalCertificateName(String? regionalCertificateName) =>
      _$this._regionalCertificateName = regionalCertificateName;

  String? _regionalCertificateArn;
  String? get regionalCertificateArn => _$this._regionalCertificateArn;
  set regionalCertificateArn(String? regionalCertificateArn) =>
      _$this._regionalCertificateArn = regionalCertificateArn;

  String? _distributionDomainName;
  String? get distributionDomainName => _$this._distributionDomainName;
  set distributionDomainName(String? distributionDomainName) =>
      _$this._distributionDomainName = distributionDomainName;

  String? _distributionHostedZoneId;
  String? get distributionHostedZoneId => _$this._distributionHostedZoneId;
  set distributionHostedZoneId(String? distributionHostedZoneId) =>
      _$this._distributionHostedZoneId = distributionHostedZoneId;

  _i2.EndpointConfigurationBuilder? _endpointConfiguration;
  _i2.EndpointConfigurationBuilder get endpointConfiguration =>
      _$this._endpointConfiguration ??= new _i2.EndpointConfigurationBuilder();
  set endpointConfiguration(
          _i2.EndpointConfigurationBuilder? endpointConfiguration) =>
      _$this._endpointConfiguration = endpointConfiguration;

  _i3.DomainNameStatus? _domainNameStatus;
  _i3.DomainNameStatus? get domainNameStatus => _$this._domainNameStatus;
  set domainNameStatus(_i3.DomainNameStatus? domainNameStatus) =>
      _$this._domainNameStatus = domainNameStatus;

  String? _domainNameStatusMessage;
  String? get domainNameStatusMessage => _$this._domainNameStatusMessage;
  set domainNameStatusMessage(String? domainNameStatusMessage) =>
      _$this._domainNameStatusMessage = domainNameStatusMessage;

  _i4.SecurityPolicy? _securityPolicy;
  _i4.SecurityPolicy? get securityPolicy => _$this._securityPolicy;
  set securityPolicy(_i4.SecurityPolicy? securityPolicy) =>
      _$this._securityPolicy = securityPolicy;

  _i6.MapBuilder<String, String>? _tags;
  _i6.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i6.MapBuilder<String, String>();
  set tags(_i6.MapBuilder<String, String>? tags) => _$this._tags = tags;

  _i5.MutualTlsAuthenticationBuilder? _mutualTlsAuthentication;
  _i5.MutualTlsAuthenticationBuilder get mutualTlsAuthentication =>
      _$this._mutualTlsAuthentication ??=
          new _i5.MutualTlsAuthenticationBuilder();
  set mutualTlsAuthentication(
          _i5.MutualTlsAuthenticationBuilder? mutualTlsAuthentication) =>
      _$this._mutualTlsAuthentication = mutualTlsAuthentication;

  String? _ownershipVerificationCertificateArn;
  String? get ownershipVerificationCertificateArn =>
      _$this._ownershipVerificationCertificateArn;
  set ownershipVerificationCertificateArn(
          String? ownershipVerificationCertificateArn) =>
      _$this._ownershipVerificationCertificateArn =
          ownershipVerificationCertificateArn;

  DomainNameBuilder() {
    DomainName._init(this);
  }

  DomainNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainName = $v.domainName;
      _certificateName = $v.certificateName;
      _certificateArn = $v.certificateArn;
      _certificateUploadDate = $v.certificateUploadDate;
      _regionalDomainName = $v.regionalDomainName;
      _regionalHostedZoneId = $v.regionalHostedZoneId;
      _regionalCertificateName = $v.regionalCertificateName;
      _regionalCertificateArn = $v.regionalCertificateArn;
      _distributionDomainName = $v.distributionDomainName;
      _distributionHostedZoneId = $v.distributionHostedZoneId;
      _endpointConfiguration = $v.endpointConfiguration?.toBuilder();
      _domainNameStatus = $v.domainNameStatus;
      _domainNameStatusMessage = $v.domainNameStatusMessage;
      _securityPolicy = $v.securityPolicy;
      _tags = $v.tags?.toBuilder();
      _mutualTlsAuthentication = $v.mutualTlsAuthentication?.toBuilder();
      _ownershipVerificationCertificateArn =
          $v.ownershipVerificationCertificateArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainName;
  }

  @override
  void update(void Function(DomainNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DomainName build() => _build();

  _$DomainName _build() {
    _$DomainName _$result;
    try {
      _$result = _$v ??
          new _$DomainName._(
              domainName: domainName,
              certificateName: certificateName,
              certificateArn: certificateArn,
              certificateUploadDate: certificateUploadDate,
              regionalDomainName: regionalDomainName,
              regionalHostedZoneId: regionalHostedZoneId,
              regionalCertificateName: regionalCertificateName,
              regionalCertificateArn: regionalCertificateArn,
              distributionDomainName: distributionDomainName,
              distributionHostedZoneId: distributionHostedZoneId,
              endpointConfiguration: _endpointConfiguration?.build(),
              domainNameStatus: domainNameStatus,
              domainNameStatusMessage: domainNameStatusMessage,
              securityPolicy: securityPolicy,
              tags: _tags?.build(),
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
            r'DomainName', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
