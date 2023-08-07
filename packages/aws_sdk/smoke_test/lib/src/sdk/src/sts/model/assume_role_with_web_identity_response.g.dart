// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assume_role_with_web_identity_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssumeRoleWithWebIdentityResponse
    extends AssumeRoleWithWebIdentityResponse {
  @override
  final Credentials? credentials;
  @override
  final String? subjectFromWebIdentityToken;
  @override
  final AssumedRoleUser? assumedRoleUser;
  @override
  final int? packedPolicySize;
  @override
  final String? provider;
  @override
  final String? audience;
  @override
  final String? sourceIdentity;

  factory _$AssumeRoleWithWebIdentityResponse(
          [void Function(AssumeRoleWithWebIdentityResponseBuilder)? updates]) =>
      (new AssumeRoleWithWebIdentityResponseBuilder()..update(updates))
          ._build();

  _$AssumeRoleWithWebIdentityResponse._(
      {this.credentials,
      this.subjectFromWebIdentityToken,
      this.assumedRoleUser,
      this.packedPolicySize,
      this.provider,
      this.audience,
      this.sourceIdentity})
      : super._();

  @override
  AssumeRoleWithWebIdentityResponse rebuild(
          void Function(AssumeRoleWithWebIdentityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssumeRoleWithWebIdentityResponseBuilder toBuilder() =>
      new AssumeRoleWithWebIdentityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssumeRoleWithWebIdentityResponse &&
        credentials == other.credentials &&
        subjectFromWebIdentityToken == other.subjectFromWebIdentityToken &&
        assumedRoleUser == other.assumedRoleUser &&
        packedPolicySize == other.packedPolicySize &&
        provider == other.provider &&
        audience == other.audience &&
        sourceIdentity == other.sourceIdentity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, subjectFromWebIdentityToken.hashCode);
    _$hash = $jc(_$hash, assumedRoleUser.hashCode);
    _$hash = $jc(_$hash, packedPolicySize.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, audience.hashCode);
    _$hash = $jc(_$hash, sourceIdentity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssumeRoleWithWebIdentityResponseBuilder
    implements
        Builder<AssumeRoleWithWebIdentityResponse,
            AssumeRoleWithWebIdentityResponseBuilder> {
  _$AssumeRoleWithWebIdentityResponse? _$v;

  CredentialsBuilder? _credentials;
  CredentialsBuilder get credentials =>
      _$this._credentials ??= new CredentialsBuilder();
  set credentials(CredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  String? _subjectFromWebIdentityToken;
  String? get subjectFromWebIdentityToken =>
      _$this._subjectFromWebIdentityToken;
  set subjectFromWebIdentityToken(String? subjectFromWebIdentityToken) =>
      _$this._subjectFromWebIdentityToken = subjectFromWebIdentityToken;

  AssumedRoleUserBuilder? _assumedRoleUser;
  AssumedRoleUserBuilder get assumedRoleUser =>
      _$this._assumedRoleUser ??= new AssumedRoleUserBuilder();
  set assumedRoleUser(AssumedRoleUserBuilder? assumedRoleUser) =>
      _$this._assumedRoleUser = assumedRoleUser;

  int? _packedPolicySize;
  int? get packedPolicySize => _$this._packedPolicySize;
  set packedPolicySize(int? packedPolicySize) =>
      _$this._packedPolicySize = packedPolicySize;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _audience;
  String? get audience => _$this._audience;
  set audience(String? audience) => _$this._audience = audience;

  String? _sourceIdentity;
  String? get sourceIdentity => _$this._sourceIdentity;
  set sourceIdentity(String? sourceIdentity) =>
      _$this._sourceIdentity = sourceIdentity;

  AssumeRoleWithWebIdentityResponseBuilder();

  AssumeRoleWithWebIdentityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentials = $v.credentials?.toBuilder();
      _subjectFromWebIdentityToken = $v.subjectFromWebIdentityToken;
      _assumedRoleUser = $v.assumedRoleUser?.toBuilder();
      _packedPolicySize = $v.packedPolicySize;
      _provider = $v.provider;
      _audience = $v.audience;
      _sourceIdentity = $v.sourceIdentity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssumeRoleWithWebIdentityResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssumeRoleWithWebIdentityResponse;
  }

  @override
  void update(
      void Function(AssumeRoleWithWebIdentityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssumeRoleWithWebIdentityResponse build() => _build();

  _$AssumeRoleWithWebIdentityResponse _build() {
    _$AssumeRoleWithWebIdentityResponse _$result;
    try {
      _$result = _$v ??
          new _$AssumeRoleWithWebIdentityResponse._(
              credentials: _credentials?.build(),
              subjectFromWebIdentityToken: subjectFromWebIdentityToken,
              assumedRoleUser: _assumedRoleUser?.build(),
              packedPolicySize: packedPolicySize,
              provider: provider,
              audience: audience,
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
            r'AssumeRoleWithWebIdentityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
