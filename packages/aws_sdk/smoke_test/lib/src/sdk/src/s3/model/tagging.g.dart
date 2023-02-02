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
    var _$hash = 0;
    _$hash = $jc(_$hash, tagSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
