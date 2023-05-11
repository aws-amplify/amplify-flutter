// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPolicyRequest extends GetPolicyRequest {
  @override
  final String policyArn;

  factory _$GetPolicyRequest(
          [void Function(GetPolicyRequestBuilder)? updates]) =>
      (new GetPolicyRequestBuilder()..update(updates))._build();

  _$GetPolicyRequest._({required this.policyArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'GetPolicyRequest', 'policyArn');
  }

  @override
  GetPolicyRequest rebuild(void Function(GetPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPolicyRequestBuilder toBuilder() =>
      new GetPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPolicyRequest && policyArn == other.policyArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetPolicyRequestBuilder
    implements Builder<GetPolicyRequest, GetPolicyRequestBuilder> {
  _$GetPolicyRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  GetPolicyRequestBuilder() {
    GetPolicyRequest._init(this);
  }

  GetPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPolicyRequest;
  }

  @override
  void update(void Function(GetPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPolicyRequest build() => _build();

  _$GetPolicyRequest _build() {
    final _$result = _$v ??
        new _$GetPolicyRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'GetPolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
