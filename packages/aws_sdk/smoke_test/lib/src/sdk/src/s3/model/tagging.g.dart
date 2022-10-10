// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.tagging;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tagging extends Tagging {
  @override
  final _i3.BuiltList<_i2.Tag> tagSet;

  factory _$Tagging([void Function(TaggingBuilder)? updates]) =>
      (new TaggingBuilder()..update(updates))._build();

  _$Tagging._({required this.tagSet}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tagSet, r'Tagging', 'tagSet');
  }

  @override
  Tagging rebuild(void Function(TaggingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaggingBuilder toBuilder() => new TaggingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tagging && tagSet == other.tagSet;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tagSet.hashCode));
  }
}

class TaggingBuilder implements Builder<Tagging, TaggingBuilder> {
  _$Tagging? _$v;

  _i3.ListBuilder<_i2.Tag>? _tagSet;
  _i3.ListBuilder<_i2.Tag> get tagSet =>
      _$this._tagSet ??= new _i3.ListBuilder<_i2.Tag>();
  set tagSet(_i3.ListBuilder<_i2.Tag>? tagSet) => _$this._tagSet = tagSet;

  TaggingBuilder() {
    Tagging._init(this);
  }

  TaggingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagSet = $v.tagSet.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tagging other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tagging;
  }

  @override
  void update(void Function(TaggingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tagging build() => _build();

  _$Tagging _build() {
    _$Tagging _$result;
    try {
      _$result = _$v ?? new _$Tagging._(tagSet: tagSet.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSet';
        tagSet.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Tagging', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
