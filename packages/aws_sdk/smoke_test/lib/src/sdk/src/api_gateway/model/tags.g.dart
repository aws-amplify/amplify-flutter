// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.tags;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tags extends Tags {
  @override
  final _i2.BuiltMap<String, String>? tags;

  factory _$Tags([void Function(TagsBuilder)? updates]) =>
      (new TagsBuilder()..update(updates))._build();

  _$Tags._({this.tags}) : super._();

  @override
  Tags rebuild(void Function(TagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagsBuilder toBuilder() => new TagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tags && tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tags.hashCode));
  }
}

class TagsBuilder implements Builder<Tags, TagsBuilder> {
  _$Tags? _$v;

  _i2.MapBuilder<String, String>? _tags;
  _i2.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i2.MapBuilder<String, String>();
  set tags(_i2.MapBuilder<String, String>? tags) => _$this._tags = tags;

  TagsBuilder() {
    Tags._init(this);
  }

  TagsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tags other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tags;
  }

  @override
  void update(void Function(TagsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tags build() => _build();

  _$Tags _build() {
    _$Tags _$result;
    try {
      _$result = _$v ?? new _$Tags._(tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Tags', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
