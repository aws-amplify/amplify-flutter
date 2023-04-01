// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_user_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserPolicyResponse extends GetUserPolicyResponse {
  @override
  final String userName;
  @override
  final String policyName;
  @override
  final String policyDocument;

  factory _$GetUserPolicyResponse(
          [void Function(GetUserPolicyResponseBuilder)? updates]) =>
      (new GetUserPolicyResponseBuilder()..update(updates))._build();

  _$GetUserPolicyResponse._(
      {required this.userName,
      required this.policyName,
      required this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'GetUserPolicyResponse', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'GetUserPolicyResponse', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'GetUserPolicyResponse', 'policyDocument');
  }

  @override
  GetUserPolicyResponse rebuild(
          void Function(GetUserPolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserPolicyResponseBuilder toBuilder() =>
      new GetUserPolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserPolicyResponse &&
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

class GetUserPolicyResponseBuilder
    implements Builder<GetUserPolicyResponse, GetUserPolicyResponseBuilder> {
  _$GetUserPolicyResponse? _$v;

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

  GetUserPolicyResponseBuilder() {
    GetUserPolicyResponse._init(this);
  }

  GetUserPolicyResponseBuilder get _$this {
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
  void replace(GetUserPolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserPolicyResponse;
  }

  @override
  void update(void Function(GetUserPolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserPolicyResponse build() => _build();

  _$GetUserPolicyResponse _build() {
    final _$result = _$v ??
        new _$GetUserPolicyResponse._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'GetUserPolicyResponse', 'userName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'GetUserPolicyResponse', 'policyName'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument, r'GetUserPolicyResponse', 'policyDocument'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
