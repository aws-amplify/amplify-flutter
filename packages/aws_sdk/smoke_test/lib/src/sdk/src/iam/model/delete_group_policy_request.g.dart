// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_group_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteGroupPolicyRequest extends DeleteGroupPolicyRequest {
  @override
  final String groupName;
  @override
  final String policyName;

  factory _$DeleteGroupPolicyRequest(
          [void Function(DeleteGroupPolicyRequestBuilder)? updates]) =>
      (new DeleteGroupPolicyRequestBuilder()..update(updates))._build();

  _$DeleteGroupPolicyRequest._(
      {required this.groupName, required this.policyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'DeleteGroupPolicyRequest', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'DeleteGroupPolicyRequest', 'policyName');
  }

  @override
  DeleteGroupPolicyRequest rebuild(
          void Function(DeleteGroupPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteGroupPolicyRequestBuilder toBuilder() =>
      new DeleteGroupPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteGroupPolicyRequest &&
        groupName == other.groupName &&
        policyName == other.policyName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteGroupPolicyRequestBuilder
    implements
        Builder<DeleteGroupPolicyRequest, DeleteGroupPolicyRequestBuilder> {
  _$DeleteGroupPolicyRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  DeleteGroupPolicyRequestBuilder() {
    DeleteGroupPolicyRequest._init(this);
  }

  DeleteGroupPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _policyName = $v.policyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteGroupPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteGroupPolicyRequest;
  }

  @override
  void update(void Function(DeleteGroupPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteGroupPolicyRequest build() => _build();

  _$DeleteGroupPolicyRequest _build() {
    final _$result = _$v ??
        new _$DeleteGroupPolicyRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'DeleteGroupPolicyRequest', 'groupName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'DeleteGroupPolicyRequest', 'policyName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
