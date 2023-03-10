// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.tag_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagResourceRequest extends TagResourceRequest {
  @override
  final String resourceArn;
  @override
  final _i3.BuiltMap<String, String> tags;

  factory _$TagResourceRequest(
          [void Function(TagResourceRequestBuilder)? updates]) =>
      (new TagResourceRequestBuilder()..update(updates))._build();

  _$TagResourceRequest._({required this.resourceArn, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'TagResourceRequest', 'resourceArn');
    BuiltValueNullFieldError.checkNotNull(tags, r'TagResourceRequest', 'tags');
  }

  @override
  TagResourceRequest rebuild(
          void Function(TagResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagResourceRequestBuilder toBuilder() =>
      new TagResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagResourceRequest &&
        resourceArn == other.resourceArn &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagResourceRequestBuilder
    implements Builder<TagResourceRequest, TagResourceRequestBuilder> {
  _$TagResourceRequest? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  _i3.MapBuilder<String, String>? _tags;
  _i3.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i3.MapBuilder<String, String>();
  set tags(_i3.MapBuilder<String, String>? tags) => _$this._tags = tags;

  TagResourceRequestBuilder() {
    TagResourceRequest._init(this);
  }

  TagResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceArn = $v.resourceArn;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagResourceRequest;
  }

  @override
  void update(void Function(TagResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagResourceRequest build() => _build();

  _$TagResourceRequest _build() {
    _$TagResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$TagResourceRequest._(
              resourceArn: BuiltValueNullFieldError.checkNotNull(
                  resourceArn, r'TagResourceRequest', 'resourceArn'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagResourceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TagResourceRequestPayload extends TagResourceRequestPayload {
  @override
  final _i3.BuiltMap<String, String> tags;

  factory _$TagResourceRequestPayload(
          [void Function(TagResourceRequestPayloadBuilder)? updates]) =>
      (new TagResourceRequestPayloadBuilder()..update(updates))._build();

  _$TagResourceRequestPayload._({required this.tags}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tags, r'TagResourceRequestPayload', 'tags');
  }

  @override
  TagResourceRequestPayload rebuild(
          void Function(TagResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagResourceRequestPayloadBuilder toBuilder() =>
      new TagResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagResourceRequestPayload && tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagResourceRequestPayloadBuilder
    implements
        Builder<TagResourceRequestPayload, TagResourceRequestPayloadBuilder> {
  _$TagResourceRequestPayload? _$v;

  _i3.MapBuilder<String, String>? _tags;
  _i3.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i3.MapBuilder<String, String>();
  set tags(_i3.MapBuilder<String, String>? tags) => _$this._tags = tags;

  TagResourceRequestPayloadBuilder() {
    TagResourceRequestPayload._init(this);
  }

  TagResourceRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagResourceRequestPayload;
  }

  @override
  void update(void Function(TagResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagResourceRequestPayload build() => _build();

  _$TagResourceRequestPayload _build() {
    _$TagResourceRequestPayload _$result;
    try {
      _$result = _$v ?? new _$TagResourceRequestPayload._(tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagResourceRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
