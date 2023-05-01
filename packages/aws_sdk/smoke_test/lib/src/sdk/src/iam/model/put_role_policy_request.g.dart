// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.put_role_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRolePolicyRequest extends PutRolePolicyRequest {
  @override
  final String roleName;
  @override
  final String policyName;
  @override
  final String policyDocument;

  factory _$PutRolePolicyRequest(
          [void Function(PutRolePolicyRequestBuilder)? updates]) =>
      (new PutRolePolicyRequestBuilder()..update(updates))._build();

  _$PutRolePolicyRequest._(
      {required this.roleName,
      required this.policyName,
      required this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'PutRolePolicyRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'PutRolePolicyRequest', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'PutRolePolicyRequest', 'policyDocument');
  }

  @override
  PutRolePolicyRequest rebuild(
          void Function(PutRolePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRolePolicyRequestBuilder toBuilder() =>
      new PutRolePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRolePolicyRequest &&
        roleName == other.roleName &&
        policyName == other.policyName &&
        policyDocument == other.policyDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRolePolicyRequestBuilder
    implements Builder<PutRolePolicyRequest, PutRolePolicyRequestBuilder> {
  _$PutRolePolicyRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  PutRolePolicyRequestBuilder() {
    PutRolePolicyRequest._init(this);
  }

  PutRolePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _policyName = $v.policyName;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRolePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRolePolicyRequest;
  }

  @override
  void update(void Function(PutRolePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRolePolicyRequest build() => _build();

  _$PutRolePolicyRequest _build() {
    final _$result = _$v ??
        new _$PutRolePolicyRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'PutRolePolicyRequest', 'roleName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'PutRolePolicyRequest', 'policyName'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument, r'PutRolePolicyRequest', 'policyDocument'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
