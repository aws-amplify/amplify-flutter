// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.assume_role_with_saml_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssumeRoleWithSamlResponse extends AssumeRoleWithSamlResponse {
  @override
  final _i2.Credentials? credentials;
  @override
  final _i3.AssumedRoleUser? assumedRoleUser;
  @override
  final int? packedPolicySize;
  @override
  final String? subject;
  @override
  final String? subjectType;
  @override
  final String? issuer;
  @override
  final String? audience;
  @override
  final String? nameQualifier;
  @override
  final String? sourceIdentity;

  factory _$AssumeRoleWithSamlResponse(
          [void Function(AssumeRoleWithSamlResponseBuilder)? updates]) =>
      (new AssumeRoleWithSamlResponseBuilder()..update(updates))._build();

  _$AssumeRoleWithSamlResponse._(
      {this.credentials,
      this.assumedRoleUser,
      this.packedPolicySize,
      this.subject,
      this.subjectType,
      this.issuer,
      this.audience,
      this.nameQualifier,
      this.sourceIdentity})
      : super._();

  @override
  AssumeRoleWithSamlResponse rebuild(
          void Function(AssumeRoleWithSamlResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssumeRoleWithSamlResponseBuilder toBuilder() =>
      new AssumeRoleWithSamlResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssumeRoleWithSamlResponse &&
        credentials == other.credentials &&
        assumedRoleUser == other.assumedRoleUser &&
        packedPolicySize == other.packedPolicySize &&
        subject == other.subject &&
        subjectType == other.subjectType &&
        issuer == other.issuer &&
        audience == other.audience &&
        nameQualifier == other.nameQualifier &&
        sourceIdentity == other.sourceIdentity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, assumedRoleUser.hashCode);
    _$hash = $jc(_$hash, packedPolicySize.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, subjectType.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, audience.hashCode);
    _$hash = $jc(_$hash, nameQualifier.hashCode);
    _$hash = $jc(_$hash, sourceIdentity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssumeRoleWithSamlResponseBuilder
    implements
        Builder<AssumeRoleWithSamlResponse, AssumeRoleWithSamlResponseBuilder> {
  _$AssumeRoleWithSamlResponse? _$v;

  _i2.CredentialsBuilder? _credentials;
  _i2.CredentialsBuilder get credentials =>
      _$this._credentials ??= new _i2.CredentialsBuilder();
  set credentials(_i2.CredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  _i3.AssumedRoleUserBuilder? _assumedRoleUser;
  _i3.AssumedRoleUserBuilder get assumedRoleUser =>
      _$this._assumedRoleUser ??= new _i3.AssumedRoleUserBuilder();
  set assumedRoleUser(_i3.AssumedRoleUserBuilder? assumedRoleUser) =>
      _$this._assumedRoleUser = assumedRoleUser;

  int? _packedPolicySize;
  int? get packedPolicySize => _$this._packedPolicySize;
  set packedPolicySize(int? packedPolicySize) =>
      _$this._packedPolicySize = packedPolicySize;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _subjectType;
  String? get subjectType => _$this._subjectType;
  set subjectType(String? subjectType) => _$this._subjectType = subjectType;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  String? _audience;
  String? get audience => _$this._audience;
  set audience(String? audience) => _$this._audience = audience;

  String? _nameQualifier;
  String? get nameQualifier => _$this._nameQualifier;
  set nameQualifier(String? nameQualifier) =>
      _$this._nameQualifier = nameQualifier;

  String? _sourceIdentity;
  String? get sourceIdentity => _$this._sourceIdentity;
  set sourceIdentity(String? sourceIdentity) =>
      _$this._sourceIdentity = sourceIdentity;

  AssumeRoleWithSamlResponseBuilder() {
    AssumeRoleWithSamlResponse._init(this);
  }

  AssumeRoleWithSamlResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentials = $v.credentials?.toBuilder();
      _assumedRoleUser = $v.assumedRoleUser?.toBuilder();
      _packedPolicySize = $v.packedPolicySize;
      _subject = $v.subject;
      _subjectType = $v.subjectType;
      _issuer = $v.issuer;
      _audience = $v.audience;
      _nameQualifier = $v.nameQualifier;
      _sourceIdentity = $v.sourceIdentity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssumeRoleWithSamlResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssumeRoleWithSamlResponse;
  }

  @override
  void update(void Function(AssumeRoleWithSamlResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssumeRoleWithSamlResponse build() => _build();

  _$AssumeRoleWithSamlResponse _build() {
    _$AssumeRoleWithSamlResponse _$result;
    try {
      _$result = _$v ??
          new _$AssumeRoleWithSamlResponse._(
              credentials: _credentials?.build(),
              assumedRoleUser: _assumedRoleUser?.build(),
              packedPolicySize: packedPolicySize,
              subject: subject,
              subjectType: subjectType,
              issuer: issuer,
              audience: audience,
              nameQualifier: nameQualifier,
              sourceIdentity: sourceIdentity);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
        _$failedField = 'assumedRoleUser';
        _assumedRoleUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssumeRoleWithSamlResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
