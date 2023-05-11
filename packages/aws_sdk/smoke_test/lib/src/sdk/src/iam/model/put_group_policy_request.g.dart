// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.put_group_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutGroupPolicyRequest extends PutGroupPolicyRequest {
  @override
  final String groupName;
  @override
  final String policyName;
  @override
  final String policyDocument;

  factory _$PutGroupPolicyRequest(
          [void Function(PutGroupPolicyRequestBuilder)? updates]) =>
      (new PutGroupPolicyRequestBuilder()..update(updates))._build();

  _$PutGroupPolicyRequest._(
      {required this.groupName,
      required this.policyName,
      required this.policyDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'PutGroupPolicyRequest', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'PutGroupPolicyRequest', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'PutGroupPolicyRequest', 'policyDocument');
  }

  @override
  PutGroupPolicyRequest rebuild(
          void Function(PutGroupPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutGroupPolicyRequestBuilder toBuilder() =>
      new PutGroupPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutGroupPolicyRequest &&
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

class PutGroupPolicyRequestBuilder
    implements Builder<PutGroupPolicyRequest, PutGroupPolicyRequestBuilder> {
  _$PutGroupPolicyRequest? _$v;

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

  PutGroupPolicyRequestBuilder() {
    PutGroupPolicyRequest._init(this);
  }

  PutGroupPolicyRequestBuilder get _$this {
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
  void replace(PutGroupPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutGroupPolicyRequest;
  }

  @override
  void update(void Function(PutGroupPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutGroupPolicyRequest build() => _build();

  _$PutGroupPolicyRequest _build() {
    final _$result = _$v ??
        new _$PutGroupPolicyRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'PutGroupPolicyRequest', 'groupName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'PutGroupPolicyRequest', 'policyName'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument, r'PutGroupPolicyRequest', 'policyDocument'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
