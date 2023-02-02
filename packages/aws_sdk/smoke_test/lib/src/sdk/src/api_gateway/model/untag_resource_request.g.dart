// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.untag_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagResourceRequest extends UntagResourceRequest {
  @override
  final String resourceArn;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagResourceRequest(
          [void Function(UntagResourceRequestBuilder)? updates]) =>
      (new UntagResourceRequestBuilder()..update(updates))._build();

  _$UntagResourceRequest._({required this.resourceArn, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'UntagResourceRequest', 'resourceArn');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagResourceRequest', 'tagKeys');
  }

  @override
  UntagResourceRequest rebuild(
          void Function(UntagResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagResourceRequestBuilder toBuilder() =>
      new UntagResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagResourceRequest &&
        resourceArn == other.resourceArn &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceArn.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagResourceRequestBuilder
    implements Builder<UntagResourceRequest, UntagResourceRequestBuilder> {
  _$UntagResourceRequest? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagResourceRequestBuilder() {
    UntagResourceRequest._init(this);
  }

  UntagResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceArn = $v.resourceArn;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagResourceRequest;
  }

  @override
  void update(void Function(UntagResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagResourceRequest build() => _build();

  _$UntagResourceRequest _build() {
    _$UntagResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagResourceRequest._(
              resourceArn: BuiltValueNullFieldError.checkNotNull(
                  resourceArn, r'UntagResourceRequest', 'resourceArn'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagResourceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UntagResourceRequestPayload extends UntagResourceRequestPayload {
  factory _$UntagResourceRequestPayload(
          [void Function(UntagResourceRequestPayloadBuilder)? updates]) =>
      (new UntagResourceRequestPayloadBuilder()..update(updates))._build();

  _$UntagResourceRequestPayload._() : super._();

  @override
  UntagResourceRequestPayload rebuild(
          void Function(UntagResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagResourceRequestPayloadBuilder toBuilder() =>
      new UntagResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagResourceRequestPayload;
  }

  @override
  int get hashCode {
    return 609622601;
  }
}

class UntagResourceRequestPayloadBuilder
    implements
        Builder<UntagResourceRequestPayload,
            UntagResourceRequestPayloadBuilder> {
  _$UntagResourceRequestPayload? _$v;

  UntagResourceRequestPayloadBuilder() {
    UntagResourceRequestPayload._init(this);
  }

  @override
  void replace(UntagResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagResourceRequestPayload;
  }

  @override
  void update(void Function(UntagResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagResourceRequestPayload build() => _build();

  _$UntagResourceRequestPayload _build() {
    final _$result = _$v ?? new _$UntagResourceRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
