// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_open_id_connect_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagOpenIdConnectProviderRequest
    extends TagOpenIdConnectProviderRequest {
  @override
  final String openIdConnectProviderArn;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagOpenIdConnectProviderRequest(
          [void Function(TagOpenIdConnectProviderRequestBuilder)? updates]) =>
      (new TagOpenIdConnectProviderRequestBuilder()..update(updates))._build();

  _$TagOpenIdConnectProviderRequest._(
      {required this.openIdConnectProviderArn, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(openIdConnectProviderArn,
        r'TagOpenIdConnectProviderRequest', 'openIdConnectProviderArn');
    BuiltValueNullFieldError.checkNotNull(
        tags, r'TagOpenIdConnectProviderRequest', 'tags');
  }

  @override
  TagOpenIdConnectProviderRequest rebuild(
          void Function(TagOpenIdConnectProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagOpenIdConnectProviderRequestBuilder toBuilder() =>
      new TagOpenIdConnectProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagOpenIdConnectProviderRequest &&
        openIdConnectProviderArn == other.openIdConnectProviderArn &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagOpenIdConnectProviderRequestBuilder
    implements
        Builder<TagOpenIdConnectProviderRequest,
            TagOpenIdConnectProviderRequestBuilder> {
  _$TagOpenIdConnectProviderRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagOpenIdConnectProviderRequestBuilder() {
    TagOpenIdConnectProviderRequest._init(this);
  }

  TagOpenIdConnectProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagOpenIdConnectProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagOpenIdConnectProviderRequest;
  }

  @override
  void update(void Function(TagOpenIdConnectProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagOpenIdConnectProviderRequest build() => _build();

  _$TagOpenIdConnectProviderRequest _build() {
    _$TagOpenIdConnectProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$TagOpenIdConnectProviderRequest._(
              openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                  openIdConnectProviderArn,
                  r'TagOpenIdConnectProviderRequest',
                  'openIdConnectProviderArn'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagOpenIdConnectProviderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
