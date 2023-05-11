// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_user_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagUserRequest extends TagUserRequest {
  @override
  final String userName;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagUserRequest([void Function(TagUserRequestBuilder)? updates]) =>
      (new TagUserRequestBuilder()..update(updates))._build();

  _$TagUserRequest._({required this.userName, required this.tags}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'TagUserRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(tags, r'TagUserRequest', 'tags');
  }

  @override
  TagUserRequest rebuild(void Function(TagUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagUserRequestBuilder toBuilder() =>
      new TagUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagUserRequest &&
        userName == other.userName &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagUserRequestBuilder
    implements Builder<TagUserRequest, TagUserRequestBuilder> {
  _$TagUserRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagUserRequestBuilder() {
    TagUserRequest._init(this);
  }

  TagUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagUserRequest;
  }

  @override
  void update(void Function(TagUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagUserRequest build() => _build();

  _$TagUserRequest _build() {
    _$TagUserRequest _$result;
    try {
      _$result = _$v ??
          new _$TagUserRequest._(
              userName: BuiltValueNullFieldError.checkNotNull(
                  userName, r'TagUserRequest', 'userName'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
