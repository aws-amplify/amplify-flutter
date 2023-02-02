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
    var _$hash = 0;
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
