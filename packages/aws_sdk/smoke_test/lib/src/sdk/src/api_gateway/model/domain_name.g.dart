// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.domain_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainName extends DomainName {
  @override
  final String? certificateArn;
  @override
  final String? certificateName;
  @override
  final DateTime? certificateUploadDate;
  @override
  final String? distributionDomainName;
  @override
  final String? distributionHostedZoneId;
  @override
  final String? domainName;
  @override
  final _i2.DomainNameStatus? domainNameStatus;
  @override
  final String? domainNameStatusMessage;
  @override
  final _i3.EndpointConfiguration? endpointConfiguration;
  @override
  final _i4.MutualTlsAuthentication? mutualTlsAuthentication;
  @override
  final String? ownershipVerificationCertificateArn;
  @override
  final String? regionalCertificateArn;
  @override
  final String? regionalCertificateName;
  @override
  final String? regionalDomainName;
  @override
  final String? regionalHostedZoneId;
  @override
  final _i5.SecurityPolicy? securityPolicy;
  @override
  final _i6.BuiltMap<String, String>? tags;

  factory _$DomainName([void Function(DomainNameBuilder)? updates]) =>
      (new DomainNameBuilder()..update(updates))._build();

  _$DomainName._(
      {this.certificateArn,
      this.certificateName,
      this.certificateUploadDate,
      this.distributionDomainName,
      this.distributionHostedZoneId,
      this.domainName,
      this.domainNameStatus,
      this.domainNameStatusMessage,
      this.endpointConfiguration,
      this.mutualTlsAuthentication,
      this.ownershipVerificationCertificateArn,
      this.regionalCertificateArn,
      this.regionalCertificateName,
      this.regionalDomainName,
      this.regionalHostedZoneId,
      this.securityPolicy,
      this.tags})
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
        certificateArn == other.certificateArn &&
        certificateName == other.certificateName &&
        certificateUploadDate == other.certificateUploadDate &&
        distributionDomainName == other.distributionDomainName &&
        distributionHostedZoneId == other.distributionHostedZoneId &&
        domainName == other.domainName &&
        domainNameStatus == other.domainNameStatus &&
        domainNameStatusMessage == other.domainNameStatusMessage &&
        endpointConfiguration == other.endpointConfiguration &&
        mutualTlsAuthentication == other.mutualTlsAuthentication &&
        ownershipVerificationCertificateArn ==
            other.ownershipVerificationCertificateArn &&
        regionalCertificateArn == other.regionalCertificateArn &&
        regionalCertificateName == other.regionalCertificateName &&
        regionalDomainName == other.regionalDomainName &&
        regionalHostedZoneId == other.regionalHostedZoneId &&
        securityPolicy == other.securityPolicy &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        certificateArn
                                                                            .hashCode),
                                                                    certificateName
                                                                        .hashCode),
                                                                certificateUploadDate
                                                                    .hashCode),
                                                            distributionDomainName
                                                                .hashCode),
                                                        distributionHostedZoneId
                                                            .hashCode),
                                                    domainName.hashCode),
                                                domainNameStatus.hashCode),
                                            domainNameStatusMessage.hashCode),
                                        endpointConfiguration.hashCode),
                                    mutualTlsAuthentication.hashCode),
                                ownershipVerificationCertificateArn.hashCode),
                            regionalCertificateArn.hashCode),
                        regionalCertificateName.hashCode),
                    regionalDomainName.hashCode),
                regionalHostedZoneId.hashCode),
            securityPolicy.hashCode),
        tags.hashCode));
  }
}

class DomainNameBuilder implements Builder<DomainName, DomainNameBuilder> {
  _$DomainName? _$v;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  String? _certificateName;
  String? get certificateName => _$this._certificateName;
  set certificateName(String? certificateName) =>
      _$this._certificateName = certificateName;

  DateTime? _certificateUploadDate;
  DateTime? get certificateUploadDate => _$this._certificateUploadDate;
  set certificateUploadDate(DateTime? certificateUploadDate) =>
      _$this._certificateUploadDate = certificateUploadDate;

  String? _distributionDomainName;
  String? get distributionDomainName => _$this._distributionDomainName;
  set distributionDomainName(String? distributionDomainName) =>
      _$this._distributionDomainName = distributionDomainName;

  String? _distributionHostedZoneId;
  String? get distributionHostedZoneId => _$this._distributionHostedZoneId;
  set distributionHostedZoneId(String? distributionHostedZoneId) =>
      _$this._distributionHostedZoneId = distributionHostedZoneId;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  _i2.DomainNameStatus? _domainNameStatus;
  _i2.DomainNameStatus? get domainNameStatus => _$this._domainNameStatus;
  set domainNameStatus(_i2.DomainNameStatus? domainNameStatus) =>
      _$this._domainNameStatus = domainNameStatus;

  String? _domainNameStatusMessage;
  String? get domainNameStatusMessage => _$this._domainNameStatusMessage;
  set domainNameStatusMessage(String? domainNameStatusMessage) =>
      _$this._domainNameStatusMessage = domainNameStatusMessage;

  _i3.EndpointConfigurationBuilder? _endpointConfiguration;
  _i3.EndpointConfigurationBuilder get endpointConfiguration =>
      _$this._endpointConfiguration ??= new _i3.EndpointConfigurationBuilder();
  set endpointConfiguration(
          _i3.EndpointConfigurationBuilder? endpointConfiguration) =>
      _$this._endpointConfiguration = endpointConfiguration;

  _i4.MutualTlsAuthenticationBuilder? _mutualTlsAuthentication;
  _i4.MutualTlsAuthenticationBuilder get mutualTlsAuthentication =>
      _$this._mutualTlsAuthentication ??=
          new _i4.MutualTlsAuthenticationBuilder();
  set mutualTlsAuthentication(
          _i4.MutualTlsAuthenticationBuilder? mutualTlsAuthentication) =>
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

  String? _regionalDomainName;
  String? get regionalDomainName => _$this._regionalDomainName;
  set regionalDomainName(String? regionalDomainName) =>
      _$this._regionalDomainName = regionalDomainName;

  String? _regionalHostedZoneId;
  String? get regionalHostedZoneId => _$this._regionalHostedZoneId;
  set regionalHostedZoneId(String? regionalHostedZoneId) =>
      _$this._regionalHostedZoneId = regionalHostedZoneId;

  _i5.SecurityPolicy? _securityPolicy;
  _i5.SecurityPolicy? get securityPolicy => _$this._securityPolicy;
  set securityPolicy(_i5.SecurityPolicy? securityPolicy) =>
      _$this._securityPolicy = securityPolicy;

  _i6.MapBuilder<String, String>? _tags;
  _i6.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i6.MapBuilder<String, String>();
  set tags(_i6.MapBuilder<String, String>? tags) => _$this._tags = tags;

  DomainNameBuilder() {
    DomainName._init(this);
  }

  DomainNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificateArn = $v.certificateArn;
      _certificateName = $v.certificateName;
      _certificateUploadDate = $v.certificateUploadDate;
      _distributionDomainName = $v.distributionDomainName;
      _distributionHostedZoneId = $v.distributionHostedZoneId;
      _domainName = $v.domainName;
      _domainNameStatus = $v.domainNameStatus;
      _domainNameStatusMessage = $v.domainNameStatusMessage;
      _endpointConfiguration = $v.endpointConfiguration?.toBuilder();
      _mutualTlsAuthentication = $v.mutualTlsAuthentication?.toBuilder();
      _ownershipVerificationCertificateArn =
          $v.ownershipVerificationCertificateArn;
      _regionalCertificateArn = $v.regionalCertificateArn;
      _regionalCertificateName = $v.regionalCertificateName;
      _regionalDomainName = $v.regionalDomainName;
      _regionalHostedZoneId = $v.regionalHostedZoneId;
      _securityPolicy = $v.securityPolicy;
      _tags = $v.tags?.toBuilder();
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
              certificateArn: certificateArn,
              certificateName: certificateName,
              certificateUploadDate: certificateUploadDate,
              distributionDomainName: distributionDomainName,
              distributionHostedZoneId: distributionHostedZoneId,
              domainName: domainName,
              domainNameStatus: domainNameStatus,
              domainNameStatusMessage: domainNameStatusMessage,
              endpointConfiguration: _endpointConfiguration?.build(),
              mutualTlsAuthentication: _mutualTlsAuthentication?.build(),
              ownershipVerificationCertificateArn:
                  ownershipVerificationCertificateArn,
              regionalCertificateArn: regionalCertificateArn,
              regionalCertificateName: regionalCertificateName,
              regionalDomainName: regionalDomainName,
              regionalHostedZoneId: regionalHostedZoneId,
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
            r'DomainName', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
