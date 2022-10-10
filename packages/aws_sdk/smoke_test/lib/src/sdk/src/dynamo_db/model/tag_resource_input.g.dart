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
    return $jf($jc($jc(0, resourceArn.hashCode), tags.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
