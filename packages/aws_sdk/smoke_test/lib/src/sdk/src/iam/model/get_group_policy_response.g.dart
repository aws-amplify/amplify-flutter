// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_group_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupPolicyResponse extends GetGroupPolicyResponse {
  @override
  final String groupName;
  @override
  final String policyName;
  @override
  final String policyDocument;

  factory _$GetGroupPolicyResponse(
          [void Function(GetGroupPolicyResponseBuilder)? updates]) =>
      (new GetGroupPolicyResponseBuilder()..update(updates))._build();

  _$GetGroupPolicyResponse._(
      {required this.groupName,
      required this.policyName,
      required this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'GetGroupPolicyResponse', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'GetGroupPolicyResponse', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'GetGroupPolicyResponse', 'policyDocument');
  }

  @override
  GetGroupPolicyResponse rebuild(
          void Function(GetGroupPolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupPolicyResponseBuilder toBuilder() =>
      new GetGroupPolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupPolicyResponse &&
        groupName == other.groupName &&
        policyName == other.policyName &&
        policyDocument == other.policyDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetGroupPolicyResponseBuilder
    implements Builder<GetGroupPolicyResponse, GetGroupPolicyResponseBuilder> {
  _$GetGroupPolicyResponse? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  GetGroupPolicyResponseBuilder() {
    GetGroupPolicyResponse._init(this);
  }

  GetGroupPolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _policyName = $v.policyName;
      _policyDocument = $v.policyDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupPolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupPolicyResponse;
  }

  @override
  void update(void Function(GetGroupPolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupPolicyResponse build() => _build();

  _$GetGroupPolicyResponse _build() {
    final _$result = _$v ??
        new _$GetGroupPolicyResponse._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'GetGroupPolicyResponse', 'groupName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'GetGroupPolicyResponse', 'policyName'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument, r'GetGroupPolicyResponse', 'policyDocument'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
