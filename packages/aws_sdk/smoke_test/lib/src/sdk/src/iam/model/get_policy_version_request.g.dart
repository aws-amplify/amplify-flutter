// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_policy_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPolicyVersionRequest extends GetPolicyVersionRequest {
  @override
  final String policyArn;
  @override
  final String versionId;

  factory _$GetPolicyVersionRequest(
          [void Function(GetPolicyVersionRequestBuilder)? updates]) =>
      (new GetPolicyVersionRequestBuilder()..update(updates))._build();

  _$GetPolicyVersionRequest._(
      {required this.policyArn, required this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'GetPolicyVersionRequest', 'policyArn');
    BuiltValueNullFieldError.checkNotNull(
        versionId, r'GetPolicyVersionRequest', 'versionId');
  }

  @override
  GetPolicyVersionRequest rebuild(
          void Function(GetPolicyVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPolicyVersionRequestBuilder toBuilder() =>
      new GetPolicyVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPolicyVersionRequest &&
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

class GetPolicyVersionRequestBuilder
    implements
        Builder<GetPolicyVersionRequest, GetPolicyVersionRequestBuilder> {
  _$GetPolicyVersionRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  GetPolicyVersionRequestBuilder() {
    GetPolicyVersionRequest._init(this);
  }

  GetPolicyVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPolicyVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPolicyVersionRequest;
  }

  @override
  void update(void Function(GetPolicyVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPolicyVersionRequest build() => _build();

  _$GetPolicyVersionRequest _build() {
    final _$result = _$v ??
        new _$GetPolicyVersionRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'GetPolicyVersionRequest', 'policyArn'),
            versionId: BuiltValueNullFieldError.checkNotNull(
                versionId, r'GetPolicyVersionRequest', 'versionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
