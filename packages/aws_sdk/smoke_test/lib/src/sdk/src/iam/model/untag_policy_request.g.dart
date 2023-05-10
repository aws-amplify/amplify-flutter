// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagPolicyRequest extends UntagPolicyRequest {
  @override
  final String policyArn;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagPolicyRequest(
          [void Function(UntagPolicyRequestBuilder)? updates]) =>
      (new UntagPolicyRequestBuilder()..update(updates))._build();

  _$UntagPolicyRequest._({required this.policyArn, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'UntagPolicyRequest', 'policyArn');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagPolicyRequest', 'tagKeys');
  }

  @override
  UntagPolicyRequest rebuild(
          void Function(UntagPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagPolicyRequestBuilder toBuilder() =>
      new UntagPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagPolicyRequest &&
        policyArn == other.policyArn &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagPolicyRequestBuilder
    implements Builder<UntagPolicyRequest, UntagPolicyRequestBuilder> {
  _$UntagPolicyRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagPolicyRequestBuilder() {
    UntagPolicyRequest._init(this);
  }

  UntagPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagPolicyRequest;
  }

  @override
  void update(void Function(UntagPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagPolicyRequest build() => _build();

  _$UntagPolicyRequest _build() {
    _$UntagPolicyRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagPolicyRequest._(
              policyArn: BuiltValueNullFieldError.checkNotNull(
                  policyArn, r'UntagPolicyRequest', 'policyArn'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagPolicyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
