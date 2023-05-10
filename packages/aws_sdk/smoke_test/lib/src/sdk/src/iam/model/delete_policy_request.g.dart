// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePolicyRequest extends DeletePolicyRequest {
  @override
  final String policyArn;

  factory _$DeletePolicyRequest(
          [void Function(DeletePolicyRequestBuilder)? updates]) =>
      (new DeletePolicyRequestBuilder()..update(updates))._build();

  _$DeletePolicyRequest._({required this.policyArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'DeletePolicyRequest', 'policyArn');
  }

  @override
  DeletePolicyRequest rebuild(
          void Function(DeletePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePolicyRequestBuilder toBuilder() =>
      new DeletePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePolicyRequest && policyArn == other.policyArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeletePolicyRequestBuilder
    implements Builder<DeletePolicyRequest, DeletePolicyRequestBuilder> {
  _$DeletePolicyRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  DeletePolicyRequestBuilder() {
    DeletePolicyRequest._init(this);
  }

  DeletePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePolicyRequest;
  }

  @override
  void update(void Function(DeletePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePolicyRequest build() => _build();

  _$DeletePolicyRequest _build() {
    final _$result = _$v ??
        new _$DeletePolicyRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'DeletePolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
