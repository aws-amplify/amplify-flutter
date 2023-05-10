// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.assume_role_with_web_identity_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssumeRoleWithWebIdentityRequest
    extends AssumeRoleWithWebIdentityRequest {
  @override
  final String roleArn;
  @override
  final String roleSessionName;
  @override
  final String webIdentityToken;
  @override
  final String? providerId;
  @override
  final _i4.BuiltList<_i3.PolicyDescriptorType>? policyArns;
  @override
  final String? policy;
  @override
  final int? durationSeconds;

  factory _$AssumeRoleWithWebIdentityRequest(
          [void Function(AssumeRoleWithWebIdentityRequestBuilder)? updates]) =>
      (new AssumeRoleWithWebIdentityRequestBuilder()..update(updates))._build();

  _$AssumeRoleWithWebIdentityRequest._(
      {required this.roleArn,
      required this.roleSessionName,
      required this.webIdentityToken,
      this.providerId,
      this.policyArns,
      this.policy,
      this.durationSeconds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleArn, r'AssumeRoleWithWebIdentityRequest', 'roleArn');
    BuiltValueNullFieldError.checkNotNull(roleSessionName,
        r'AssumeRoleWithWebIdentityRequest', 'roleSessionName');
    BuiltValueNullFieldError.checkNotNull(webIdentityToken,
        r'AssumeRoleWithWebIdentityRequest', 'webIdentityToken');
  }

  @override
  AssumeRoleWithWebIdentityRequest rebuild(
          void Function(AssumeRoleWithWebIdentityRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssumeRoleWithWebIdentityRequestBuilder toBuilder() =>
      new AssumeRoleWithWebIdentityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssumeRoleWithWebIdentityRequest &&
        roleArn == other.roleArn &&
        roleSessionName == other.roleSessionName &&
        webIdentityToken == other.webIdentityToken &&
        providerId == other.providerId &&
        policyArns == other.policyArns &&
        policy == other.policy &&
        durationSeconds == other.durationSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, roleSessionName.hashCode);
    _$hash = $jc(_$hash, webIdentityToken.hashCode);
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jc(_$hash, policyArns.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, durationSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssumeRoleWithWebIdentityRequestBuilder
    implements
        Builder<AssumeRoleWithWebIdentityRequest,
            AssumeRoleWithWebIdentityRequestBuilder> {
  _$AssumeRoleWithWebIdentityRequest? _$v;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  String? _roleSessionName;
  String? get roleSessionName => _$this._roleSessionName;
  set roleSessionName(String? roleSessionName) =>
      _$this._roleSessionName = roleSessionName;

  String? _webIdentityToken;
  String? get webIdentityToken => _$this._webIdentityToken;
  set webIdentityToken(String? webIdentityToken) =>
      _$this._webIdentityToken = webIdentityToken;

  String? _providerId;
  String? get providerId => _$this._providerId;
  set providerId(String? providerId) => _$this._providerId = providerId;

  _i4.ListBuilder<_i3.PolicyDescriptorType>? _policyArns;
  _i4.ListBuilder<_i3.PolicyDescriptorType> get policyArns =>
      _$this._policyArns ??= new _i4.ListBuilder<_i3.PolicyDescriptorType>();
  set policyArns(_i4.ListBuilder<_i3.PolicyDescriptorType>? policyArns) =>
      _$this._policyArns = policyArns;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  int? _durationSeconds;
  int? get durationSeconds => _$this._durationSeconds;
  set durationSeconds(int? durationSeconds) =>
      _$this._durationSeconds = durationSeconds;

  AssumeRoleWithWebIdentityRequestBuilder() {
    AssumeRoleWithWebIdentityRequest._init(this);
  }

  AssumeRoleWithWebIdentityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleArn = $v.roleArn;
      _roleSessionName = $v.roleSessionName;
      _webIdentityToken = $v.webIdentityToken;
      _providerId = $v.providerId;
      _policyArns = $v.policyArns?.toBuilder();
      _policy = $v.policy;
      _durationSeconds = $v.durationSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssumeRoleWithWebIdentityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssumeRoleWithWebIdentityRequest;
  }

  @override
  void update(void Function(AssumeRoleWithWebIdentityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssumeRoleWithWebIdentityRequest build() => _build();

  _$AssumeRoleWithWebIdentityRequest _build() {
    _$AssumeRoleWithWebIdentityRequest _$result;
    try {
      _$result = _$v ??
          new _$AssumeRoleWithWebIdentityRequest._(
              roleArn: BuiltValueNullFieldError.checkNotNull(
                  roleArn, r'AssumeRoleWithWebIdentityRequest', 'roleArn'),
              roleSessionName: BuiltValueNullFieldError.checkNotNull(
                  roleSessionName,
                  r'AssumeRoleWithWebIdentityRequest',
                  'roleSessionName'),
              webIdentityToken: BuiltValueNullFieldError.checkNotNull(
                  webIdentityToken,
                  r'AssumeRoleWithWebIdentityRequest',
                  'webIdentityToken'),
              providerId: providerId,
              policyArns: _policyArns?.build(),
              policy: policy,
              durationSeconds: durationSeconds);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyArns';
        _policyArns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssumeRoleWithWebIdentityRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
