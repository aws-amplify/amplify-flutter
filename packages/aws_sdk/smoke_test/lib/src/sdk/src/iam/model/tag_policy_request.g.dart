// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagPolicyRequest extends TagPolicyRequest {
  @override
  final String policyArn;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagPolicyRequest(
          [void Function(TagPolicyRequestBuilder)? updates]) =>
      (new TagPolicyRequestBuilder()..update(updates))._build();

  _$TagPolicyRequest._({required this.policyArn, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'TagPolicyRequest', 'policyArn');
    BuiltValueNullFieldError.checkNotNull(tags, r'TagPolicyRequest', 'tags');
  }

  @override
  TagPolicyRequest rebuild(void Function(TagPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagPolicyRequestBuilder toBuilder() =>
      new TagPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagPolicyRequest &&
        policyArn == other.policyArn &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagPolicyRequestBuilder
    implements Builder<TagPolicyRequest, TagPolicyRequestBuilder> {
  _$TagPolicyRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagPolicyRequestBuilder() {
    TagPolicyRequest._init(this);
  }

  TagPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagPolicyRequest;
  }

  @override
  void update(void Function(TagPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagPolicyRequest build() => _build();

  _$TagPolicyRequest _build() {
    _$TagPolicyRequest _$result;
    try {
      _$result = _$v ??
          new _$TagPolicyRequest._(
              policyArn: BuiltValueNullFieldError.checkNotNull(
                  policyArn, r'TagPolicyRequest', 'policyArn'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagPolicyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
