// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.assume_role_with_saml_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssumeRoleWithSamlRequest extends AssumeRoleWithSamlRequest {
  @override
  final String roleArn;
  @override
  final String principalArn;
  @override
  final String samlAssertion;
  @override
  final _i4.BuiltList<_i3.PolicyDescriptorType>? policyArns;
  @override
  final String? policy;
  @override
  final int? durationSeconds;

  factory _$AssumeRoleWithSamlRequest(
          [void Function(AssumeRoleWithSamlRequestBuilder)? updates]) =>
      (new AssumeRoleWithSamlRequestBuilder()..update(updates))._build();

  _$AssumeRoleWithSamlRequest._(
      {required this.roleArn,
      required this.principalArn,
      required this.samlAssertion,
      this.policyArns,
      this.policy,
      this.durationSeconds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleArn, r'AssumeRoleWithSamlRequest', 'roleArn');
    BuiltValueNullFieldError.checkNotNull(
        principalArn, r'AssumeRoleWithSamlRequest', 'principalArn');
    BuiltValueNullFieldError.checkNotNull(
        samlAssertion, r'AssumeRoleWithSamlRequest', 'samlAssertion');
  }

  @override
  AssumeRoleWithSamlRequest rebuild(
          void Function(AssumeRoleWithSamlRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssumeRoleWithSamlRequestBuilder toBuilder() =>
      new AssumeRoleWithSamlRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssumeRoleWithSamlRequest &&
        roleArn == other.roleArn &&
        principalArn == other.principalArn &&
        samlAssertion == other.samlAssertion &&
        policyArns == other.policyArns &&
        policy == other.policy &&
        durationSeconds == other.durationSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, principalArn.hashCode);
    _$hash = $jc(_$hash, samlAssertion.hashCode);
    _$hash = $jc(_$hash, policyArns.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, durationSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssumeRoleWithSamlRequestBuilder
    implements
        Builder<AssumeRoleWithSamlRequest, AssumeRoleWithSamlRequestBuilder> {
  _$AssumeRoleWithSamlRequest? _$v;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  String? _principalArn;
  String? get principalArn => _$this._principalArn;
  set principalArn(String? principalArn) => _$this._principalArn = principalArn;

  String? _samlAssertion;
  String? get samlAssertion => _$this._samlAssertion;
  set samlAssertion(String? samlAssertion) =>
      _$this._samlAssertion = samlAssertion;

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

  AssumeRoleWithSamlRequestBuilder() {
    AssumeRoleWithSamlRequest._init(this);
  }

  AssumeRoleWithSamlRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleArn = $v.roleArn;
      _principalArn = $v.principalArn;
      _samlAssertion = $v.samlAssertion;
      _policyArns = $v.policyArns?.toBuilder();
      _policy = $v.policy;
      _durationSeconds = $v.durationSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssumeRoleWithSamlRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssumeRoleWithSamlRequest;
  }

  @override
  void update(void Function(AssumeRoleWithSamlRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssumeRoleWithSamlRequest build() => _build();

  _$AssumeRoleWithSamlRequest _build() {
    _$AssumeRoleWithSamlRequest _$result;
    try {
      _$result = _$v ??
          new _$AssumeRoleWithSamlRequest._(
              roleArn: BuiltValueNullFieldError.checkNotNull(
                  roleArn, r'AssumeRoleWithSamlRequest', 'roleArn'),
              principalArn: BuiltValueNullFieldError.checkNotNull(
                  principalArn, r'AssumeRoleWithSamlRequest', 'principalArn'),
              samlAssertion: BuiltValueNullFieldError.checkNotNull(
                  samlAssertion, r'AssumeRoleWithSamlRequest', 'samlAssertion'),
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
            r'AssumeRoleWithSamlRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
