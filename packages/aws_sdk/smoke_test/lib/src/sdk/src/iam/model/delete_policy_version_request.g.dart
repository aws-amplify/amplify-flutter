// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_policy_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePolicyVersionRequest extends DeletePolicyVersionRequest {
  @override
  final String policyArn;
  @override
  final String versionId;

  factory _$DeletePolicyVersionRequest(
          [void Function(DeletePolicyVersionRequestBuilder)? updates]) =>
      (new DeletePolicyVersionRequestBuilder()..update(updates))._build();

  _$DeletePolicyVersionRequest._(
      {required this.policyArn, required this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'DeletePolicyVersionRequest', 'policyArn');
    BuiltValueNullFieldError.checkNotNull(
        versionId, r'DeletePolicyVersionRequest', 'versionId');
  }

  @override
  DeletePolicyVersionRequest rebuild(
          void Function(DeletePolicyVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePolicyVersionRequestBuilder toBuilder() =>
      new DeletePolicyVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePolicyVersionRequest &&
        policyArn == other.policyArn &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeletePolicyVersionRequestBuilder
    implements
        Builder<DeletePolicyVersionRequest, DeletePolicyVersionRequestBuilder> {
  _$DeletePolicyVersionRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeletePolicyVersionRequestBuilder() {
    DeletePolicyVersionRequest._init(this);
  }

  DeletePolicyVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePolicyVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePolicyVersionRequest;
  }

  @override
  void update(void Function(DeletePolicyVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePolicyVersionRequest build() => _build();

  _$DeletePolicyVersionRequest _build() {
    final _$result = _$v ??
        new _$DeletePolicyVersionRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'DeletePolicyVersionRequest', 'policyArn'),
            versionId: BuiltValueNullFieldError.checkNotNull(
                versionId, r'DeletePolicyVersionRequest', 'versionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
