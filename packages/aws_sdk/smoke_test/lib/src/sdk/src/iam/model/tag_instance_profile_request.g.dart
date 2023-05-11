// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagInstanceProfileRequest extends TagInstanceProfileRequest {
  @override
  final String instanceProfileName;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagInstanceProfileRequest(
          [void Function(TagInstanceProfileRequestBuilder)? updates]) =>
      (new TagInstanceProfileRequestBuilder()..update(updates))._build();

  _$TagInstanceProfileRequest._(
      {required this.instanceProfileName, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'TagInstanceProfileRequest', 'instanceProfileName');
    BuiltValueNullFieldError.checkNotNull(
        tags, r'TagInstanceProfileRequest', 'tags');
  }

  @override
  TagInstanceProfileRequest rebuild(
          void Function(TagInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagInstanceProfileRequestBuilder toBuilder() =>
      new TagInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagInstanceProfileRequest &&
        instanceProfileName == other.instanceProfileName &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfileName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagInstanceProfileRequestBuilder
    implements
        Builder<TagInstanceProfileRequest, TagInstanceProfileRequestBuilder> {
  _$TagInstanceProfileRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagInstanceProfileRequestBuilder() {
    TagInstanceProfileRequest._init(this);
  }

  TagInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagInstanceProfileRequest;
  }

  @override
  void update(void Function(TagInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagInstanceProfileRequest build() => _build();

  _$TagInstanceProfileRequest _build() {
    _$TagInstanceProfileRequest _$result;
    try {
      _$result = _$v ??
          new _$TagInstanceProfileRequest._(
              instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                  instanceProfileName,
                  r'TagInstanceProfileRequest',
                  'instanceProfileName'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagInstanceProfileRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
