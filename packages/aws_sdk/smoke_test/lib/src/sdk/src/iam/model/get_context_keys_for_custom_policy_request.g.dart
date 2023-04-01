// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_context_keys_for_custom_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetContextKeysForCustomPolicyRequest
    extends GetContextKeysForCustomPolicyRequest {
  @override
  final _i3.BuiltList<String> policyInputList;

  factory _$GetContextKeysForCustomPolicyRequest(
          [void Function(GetContextKeysForCustomPolicyRequestBuilder)?
              updates]) =>
      (new GetContextKeysForCustomPolicyRequestBuilder()..update(updates))
          ._build();

  _$GetContextKeysForCustomPolicyRequest._({required this.policyInputList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policyInputList,
        r'GetContextKeysForCustomPolicyRequest', 'policyInputList');
  }

  @override
  GetContextKeysForCustomPolicyRequest rebuild(
          void Function(GetContextKeysForCustomPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetContextKeysForCustomPolicyRequestBuilder toBuilder() =>
      new GetContextKeysForCustomPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetContextKeysForCustomPolicyRequest &&
        policyInputList == other.policyInputList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyInputList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetContextKeysForCustomPolicyRequestBuilder
    implements
        Builder<GetContextKeysForCustomPolicyRequest,
            GetContextKeysForCustomPolicyRequestBuilder> {
  _$GetContextKeysForCustomPolicyRequest? _$v;

  _i3.ListBuilder<String>? _policyInputList;
  _i3.ListBuilder<String> get policyInputList =>
      _$this._policyInputList ??= new _i3.ListBuilder<String>();
  set policyInputList(_i3.ListBuilder<String>? policyInputList) =>
      _$this._policyInputList = policyInputList;

  GetContextKeysForCustomPolicyRequestBuilder() {
    GetContextKeysForCustomPolicyRequest._init(this);
  }

  GetContextKeysForCustomPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyInputList = $v.policyInputList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetContextKeysForCustomPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetContextKeysForCustomPolicyRequest;
  }

  @override
  void update(
      void Function(GetContextKeysForCustomPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetContextKeysForCustomPolicyRequest build() => _build();

  _$GetContextKeysForCustomPolicyRequest _build() {
    _$GetContextKeysForCustomPolicyRequest _$result;
    try {
      _$result = _$v ??
          new _$GetContextKeysForCustomPolicyRequest._(
              policyInputList: policyInputList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyInputList';
        policyInputList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetContextKeysForCustomPolicyRequest',
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
