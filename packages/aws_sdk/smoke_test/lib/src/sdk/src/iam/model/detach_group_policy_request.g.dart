// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.detach_group_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachGroupPolicyRequest extends DetachGroupPolicyRequest {
  @override
  final String groupName;
  @override
  final String policyArn;

  factory _$DetachGroupPolicyRequest(
          [void Function(DetachGroupPolicyRequestBuilder)? updates]) =>
      (new DetachGroupPolicyRequestBuilder()..update(updates))._build();

  _$DetachGroupPolicyRequest._(
      {required this.groupName, required this.policyArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'DetachGroupPolicyRequest', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'DetachGroupPolicyRequest', 'policyArn');
  }

  @override
  DetachGroupPolicyRequest rebuild(
          void Function(DetachGroupPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachGroupPolicyRequestBuilder toBuilder() =>
      new DetachGroupPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachGroupPolicyRequest &&
        groupName == other.groupName &&
        policyArn == other.policyArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachGroupPolicyRequestBuilder
    implements
        Builder<DetachGroupPolicyRequest, DetachGroupPolicyRequestBuilder> {
  _$DetachGroupPolicyRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  DetachGroupPolicyRequestBuilder() {
    DetachGroupPolicyRequest._init(this);
  }

  DetachGroupPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachGroupPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachGroupPolicyRequest;
  }

  @override
  void update(void Function(DetachGroupPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachGroupPolicyRequest build() => _build();

  _$DetachGroupPolicyRequest _build() {
    final _$result = _$v ??
        new _$DetachGroupPolicyRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'DetachGroupPolicyRequest', 'groupName'),
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'DetachGroupPolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
