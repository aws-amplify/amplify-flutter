// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagRoleRequest extends TagRoleRequest {
  @override
  final String roleName;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagRoleRequest([void Function(TagRoleRequestBuilder)? updates]) =>
      (new TagRoleRequestBuilder()..update(updates))._build();

  _$TagRoleRequest._({required this.roleName, required this.tags}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'TagRoleRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(tags, r'TagRoleRequest', 'tags');
  }

  @override
  TagRoleRequest rebuild(void Function(TagRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagRoleRequestBuilder toBuilder() =>
      new TagRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagRoleRequest &&
        roleName == other.roleName &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagRoleRequestBuilder
    implements Builder<TagRoleRequest, TagRoleRequestBuilder> {
  _$TagRoleRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagRoleRequestBuilder() {
    TagRoleRequest._init(this);
  }

  TagRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagRoleRequest;
  }

  @override
  void update(void Function(TagRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagRoleRequest build() => _build();

  _$TagRoleRequest _build() {
    _$TagRoleRequest _$result;
    try {
      _$result = _$v ??
          new _$TagRoleRequest._(
              roleName: BuiltValueNullFieldError.checkNotNull(
                  roleName, r'TagRoleRequest', 'roleName'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagRoleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
