// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_role_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRolePolicyResponse extends GetRolePolicyResponse {
  @override
  final String roleName;
  @override
  final String policyName;
  @override
  final String policyDocument;

  factory _$GetRolePolicyResponse(
          [void Function(GetRolePolicyResponseBuilder)? updates]) =>
      (new GetRolePolicyResponseBuilder()..update(updates))._build();

  _$GetRolePolicyResponse._(
      {required this.roleName,
      required this.policyName,
      required this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'GetRolePolicyResponse', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'GetRolePolicyResponse', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'GetRolePolicyResponse', 'policyDocument');
  }

  @override
  GetRolePolicyResponse rebuild(
          void Function(GetRolePolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRolePolicyResponseBuilder toBuilder() =>
      new GetRolePolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRolePolicyResponse &&
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

class GetRolePolicyResponseBuilder
    implements Builder<GetRolePolicyResponse, GetRolePolicyResponseBuilder> {
  _$GetRolePolicyResponse? _$v;

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

  GetRolePolicyResponseBuilder() {
    GetRolePolicyResponse._init(this);
  }

  GetRolePolicyResponseBuilder get _$this {
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
  void replace(GetRolePolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRolePolicyResponse;
  }

  @override
  void update(void Function(GetRolePolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRolePolicyResponse build() => _build();

  _$GetRolePolicyResponse _build() {
    final _$result = _$v ??
        new _$GetRolePolicyResponse._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'GetRolePolicyResponse', 'roleName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'GetRolePolicyResponse', 'policyName'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument, r'GetRolePolicyResponse', 'policyDocument'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
