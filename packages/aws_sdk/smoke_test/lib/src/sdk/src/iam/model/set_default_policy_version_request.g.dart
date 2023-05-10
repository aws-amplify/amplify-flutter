// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.set_default_policy_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetDefaultPolicyVersionRequest extends SetDefaultPolicyVersionRequest {
  @override
  final String policyArn;
  @override
  final String versionId;

  factory _$SetDefaultPolicyVersionRequest(
          [void Function(SetDefaultPolicyVersionRequestBuilder)? updates]) =>
      (new SetDefaultPolicyVersionRequestBuilder()..update(updates))._build();

  _$SetDefaultPolicyVersionRequest._(
      {required this.policyArn, required this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'SetDefaultPolicyVersionRequest', 'policyArn');
    BuiltValueNullFieldError.checkNotNull(
        versionId, r'SetDefaultPolicyVersionRequest', 'versionId');
  }

  @override
  SetDefaultPolicyVersionRequest rebuild(
          void Function(SetDefaultPolicyVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetDefaultPolicyVersionRequestBuilder toBuilder() =>
      new SetDefaultPolicyVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetDefaultPolicyVersionRequest &&
        policyArn == other.policyArn &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SetDefaultPolicyVersionRequestBuilder
    implements
        Builder<SetDefaultPolicyVersionRequest,
            SetDefaultPolicyVersionRequestBuilder> {
  _$SetDefaultPolicyVersionRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  SetDefaultPolicyVersionRequestBuilder() {
    SetDefaultPolicyVersionRequest._init(this);
  }

  SetDefaultPolicyVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetDefaultPolicyVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetDefaultPolicyVersionRequest;
  }

  @override
  void update(void Function(SetDefaultPolicyVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetDefaultPolicyVersionRequest build() => _build();

  _$SetDefaultPolicyVersionRequest _build() {
    final _$result = _$v ??
        new _$SetDefaultPolicyVersionRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'SetDefaultPolicyVersionRequest', 'policyArn'),
            versionId: BuiltValueNullFieldError.checkNotNull(
                versionId, r'SetDefaultPolicyVersionRequest', 'versionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
