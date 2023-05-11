// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_assume_role_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAssumeRolePolicyRequest extends UpdateAssumeRolePolicyRequest {
  @override
  final String roleName;
  @override
  final String policyDocument;

  factory _$UpdateAssumeRolePolicyRequest(
          [void Function(UpdateAssumeRolePolicyRequestBuilder)? updates]) =>
      (new UpdateAssumeRolePolicyRequestBuilder()..update(updates))._build();

  _$UpdateAssumeRolePolicyRequest._(
      {required this.roleName, required this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'UpdateAssumeRolePolicyRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'UpdateAssumeRolePolicyRequest', 'policyDocument');
  }

  @override
  UpdateAssumeRolePolicyRequest rebuild(
          void Function(UpdateAssumeRolePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAssumeRolePolicyRequestBuilder toBuilder() =>
      new UpdateAssumeRolePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAssumeRolePolicyRequest &&
        roleName == other.roleName &&
        policyDocument == other.policyDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateAssumeRolePolicyRequestBuilder
    implements
        Builder<UpdateAssumeRolePolicyRequest,
            UpdateAssumeRolePolicyRequestBuilder> {
  _$UpdateAssumeRolePolicyRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  UpdateAssumeRolePolicyRequestBuilder() {
    UpdateAssumeRolePolicyRequest._init(this);
  }

  UpdateAssumeRolePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAssumeRolePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAssumeRolePolicyRequest;
  }

  @override
  void update(void Function(UpdateAssumeRolePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAssumeRolePolicyRequest build() => _build();

  _$UpdateAssumeRolePolicyRequest _build() {
    final _$result = _$v ??
        new _$UpdateAssumeRolePolicyRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'UpdateAssumeRolePolicyRequest', 'roleName'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument,
                r'UpdateAssumeRolePolicyRequest',
                'policyDocument'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
