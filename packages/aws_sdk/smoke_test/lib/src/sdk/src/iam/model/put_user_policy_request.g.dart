// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.put_user_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutUserPolicyRequest extends PutUserPolicyRequest {
  @override
  final String userName;
  @override
  final String policyName;
  @override
  final String policyDocument;

  factory _$PutUserPolicyRequest(
          [void Function(PutUserPolicyRequestBuilder)? updates]) =>
      (new PutUserPolicyRequestBuilder()..update(updates))._build();

  _$PutUserPolicyRequest._(
      {required this.userName,
      required this.policyName,
      required this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'PutUserPolicyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'PutUserPolicyRequest', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'PutUserPolicyRequest', 'policyDocument');
  }

  @override
  PutUserPolicyRequest rebuild(
          void Function(PutUserPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutUserPolicyRequestBuilder toBuilder() =>
      new PutUserPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutUserPolicyRequest &&
        userName == other.userName &&
        policyName == other.policyName &&
        policyDocument == other.policyDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutUserPolicyRequestBuilder
    implements Builder<PutUserPolicyRequest, PutUserPolicyRequestBuilder> {
  _$PutUserPolicyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  PutUserPolicyRequestBuilder() {
    PutUserPolicyRequest._init(this);
  }

  PutUserPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _policyName = $v.policyName;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutUserPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutUserPolicyRequest;
  }

  @override
  void update(void Function(PutUserPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutUserPolicyRequest build() => _build();

  _$PutUserPolicyRequest _build() {
    final _$result = _$v ??
        new _$PutUserPolicyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'PutUserPolicyRequest', 'userName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'PutUserPolicyRequest', 'policyName'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument, r'PutUserPolicyRequest', 'policyDocument'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
