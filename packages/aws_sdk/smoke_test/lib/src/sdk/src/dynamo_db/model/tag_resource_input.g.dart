// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.tag_resource_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagResourceInput extends TagResourceInput {
  @override
  final String resourceArn;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagResourceInput(
          [void Function(TagResourceInputBuilder)? updates]) =>
      (new TagResourceInputBuilder()..update(updates))._build();

  _$TagResourceInput._({required this.resourceArn, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'TagResourceInput', 'resourceArn');
    BuiltValueNullFieldError.checkNotNull(tags, r'TagResourceInput', 'tags');
  }

  @override
  TagResourceInput rebuild(void Function(TagResourceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagResourceInputBuilder toBuilder() =>
      new TagResourceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagResourceInput &&
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

class TagResourceInputBuilder
    implements Builder<TagResourceInput, TagResourceInputBuilder> {
  _$TagResourceInput? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagResourceInputBuilder() {
    TagResourceInput._init(this);
  }

  TagResourceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceArn = $v.resourceArn;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagResourceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagResourceInput;
  }

  @override
  void update(void Function(TagResourceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagResourceInput build() => _build();

  _$TagResourceInput _build() {
    _$TagResourceInput _$result;
    try {
      _$result = _$v ??
          new _$TagResourceInput._(
              resourceArn: BuiltValueNullFieldError.checkNotNull(
                  resourceArn, r'TagResourceInput', 'resourceArn'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagResourceInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
