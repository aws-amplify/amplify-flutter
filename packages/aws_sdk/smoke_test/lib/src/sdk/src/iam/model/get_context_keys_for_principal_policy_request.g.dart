// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_context_keys_for_principal_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetContextKeysForPrincipalPolicyRequest
    extends GetContextKeysForPrincipalPolicyRequest {
  @override
  final String policySourceArn;
  @override
  final _i3.BuiltList<String>? policyInputList;

  factory _$GetContextKeysForPrincipalPolicyRequest(
          [void Function(GetContextKeysForPrincipalPolicyRequestBuilder)?
              updates]) =>
      (new GetContextKeysForPrincipalPolicyRequestBuilder()..update(updates))
          ._build();

  _$GetContextKeysForPrincipalPolicyRequest._(
      {required this.policySourceArn, this.policyInputList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policySourceArn,
        r'GetContextKeysForPrincipalPolicyRequest', 'policySourceArn');
  }

  @override
  GetContextKeysForPrincipalPolicyRequest rebuild(
          void Function(GetContextKeysForPrincipalPolicyRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetContextKeysForPrincipalPolicyRequestBuilder toBuilder() =>
      new GetContextKeysForPrincipalPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetContextKeysForPrincipalPolicyRequest &&
        policySourceArn == other.policySourceArn &&
        policyInputList == other.policyInputList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policySourceArn.hashCode);
    _$hash = $jc(_$hash, policyInputList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetContextKeysForPrincipalPolicyRequestBuilder
    implements
        Builder<GetContextKeysForPrincipalPolicyRequest,
            GetContextKeysForPrincipalPolicyRequestBuilder> {
  _$GetContextKeysForPrincipalPolicyRequest? _$v;

  String? _policySourceArn;
  String? get policySourceArn => _$this._policySourceArn;
  set policySourceArn(String? policySourceArn) =>
      _$this._policySourceArn = policySourceArn;

  _i3.ListBuilder<String>? _policyInputList;
  _i3.ListBuilder<String> get policyInputList =>
      _$this._policyInputList ??= new _i3.ListBuilder<String>();
  set policyInputList(_i3.ListBuilder<String>? policyInputList) =>
      _$this._policyInputList = policyInputList;

  GetContextKeysForPrincipalPolicyRequestBuilder() {
    GetContextKeysForPrincipalPolicyRequest._init(this);
  }

  GetContextKeysForPrincipalPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policySourceArn = $v.policySourceArn;
      _policyInputList = $v.policyInputList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetContextKeysForPrincipalPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetContextKeysForPrincipalPolicyRequest;
  }

  @override
  void update(
      void Function(GetContextKeysForPrincipalPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetContextKeysForPrincipalPolicyRequest build() => _build();

  _$GetContextKeysForPrincipalPolicyRequest _build() {
    _$GetContextKeysForPrincipalPolicyRequest _$result;
    try {
      _$result = _$v ??
          new _$GetContextKeysForPrincipalPolicyRequest._(
              policySourceArn: BuiltValueNullFieldError.checkNotNull(
                  policySourceArn,
                  r'GetContextKeysForPrincipalPolicyRequest',
                  'policySourceArn'),
              policyInputList: _policyInputList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyInputList';
        _policyInputList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetContextKeysForPrincipalPolicyRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
