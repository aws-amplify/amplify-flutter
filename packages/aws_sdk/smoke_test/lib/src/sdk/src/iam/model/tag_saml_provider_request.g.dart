// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_saml_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagSamlProviderRequest extends TagSamlProviderRequest {
  @override
  final String samlProviderArn;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagSamlProviderRequest(
          [void Function(TagSamlProviderRequestBuilder)? updates]) =>
      (new TagSamlProviderRequestBuilder()..update(updates))._build();

  _$TagSamlProviderRequest._(
      {required this.samlProviderArn, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        samlProviderArn, r'TagSamlProviderRequest', 'samlProviderArn');
    BuiltValueNullFieldError.checkNotNull(
        tags, r'TagSamlProviderRequest', 'tags');
  }

  @override
  TagSamlProviderRequest rebuild(
          void Function(TagSamlProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagSamlProviderRequestBuilder toBuilder() =>
      new TagSamlProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagSamlProviderRequest &&
        samlProviderArn == other.samlProviderArn &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlProviderArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagSamlProviderRequestBuilder
    implements Builder<TagSamlProviderRequest, TagSamlProviderRequestBuilder> {
  _$TagSamlProviderRequest? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagSamlProviderRequestBuilder() {
    TagSamlProviderRequest._init(this);
  }

  TagSamlProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagSamlProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagSamlProviderRequest;
  }

  @override
  void update(void Function(TagSamlProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagSamlProviderRequest build() => _build();

  _$TagSamlProviderRequest _build() {
    _$TagSamlProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$TagSamlProviderRequest._(
              samlProviderArn: BuiltValueNullFieldError.checkNotNull(
                  samlProviderArn,
                  r'TagSamlProviderRequest',
                  'samlProviderArn'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagSamlProviderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
