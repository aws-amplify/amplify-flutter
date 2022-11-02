// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.tag_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagResourceRequest extends TagResourceRequest {
  @override
  final String resourceArn;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

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
    return $jf($jc($jc(0, resourceArn.hashCode), tags.hashCode));
  }
}

class TagResourceRequestBuilder
    implements Builder<TagResourceRequest, TagResourceRequestBuilder> {
  _$TagResourceRequest? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
