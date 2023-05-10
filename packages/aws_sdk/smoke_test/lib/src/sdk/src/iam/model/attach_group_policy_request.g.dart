// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.attach_group_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachGroupPolicyRequest extends AttachGroupPolicyRequest {
  @override
  final String groupName;
  @override
  final String policyArn;

  factory _$AttachGroupPolicyRequest(
          [void Function(AttachGroupPolicyRequestBuilder)? updates]) =>
      (new AttachGroupPolicyRequestBuilder()..update(updates))._build();

  _$AttachGroupPolicyRequest._(
      {required this.groupName, required this.policyArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'AttachGroupPolicyRequest', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'AttachGroupPolicyRequest', 'policyArn');
  }

  @override
  AttachGroupPolicyRequest rebuild(
          void Function(AttachGroupPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachGroupPolicyRequestBuilder toBuilder() =>
      new AttachGroupPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachGroupPolicyRequest &&
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

class AttachGroupPolicyRequestBuilder
    implements
        Builder<AttachGroupPolicyRequest, AttachGroupPolicyRequestBuilder> {
  _$AttachGroupPolicyRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  AttachGroupPolicyRequestBuilder() {
    AttachGroupPolicyRequest._init(this);
  }

  AttachGroupPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachGroupPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachGroupPolicyRequest;
  }

  @override
  void update(void Function(AttachGroupPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachGroupPolicyRequest build() => _build();

  _$AttachGroupPolicyRequest _build() {
    final _$result = _$v ??
        new _$AttachGroupPolicyRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'AttachGroupPolicyRequest', 'groupName'),
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'AttachGroupPolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
