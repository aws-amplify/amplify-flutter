// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.tag;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tag extends Tag {
  @override
  final String key;
  @override
  final String value;

  factory _$Tag([void Function(TagBuilder)? updates]) =>
      (new TagBuilder()..update(updates))._build();

  _$Tag._({required this.key, required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'Tag', 'key');
    BuiltValueNullFieldError.checkNotNull(value, r'Tag', 'value');
  }

  @override
  Tag rebuild(void Function(TagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => new TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag && key == other.key && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  TagBuilder() {
    Tag._init(this);
  }

  TagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tag build() => _build();

  _$Tag _build() {
    final _$result = _$v ??
        new _$Tag._(
            key: BuiltValueNullFieldError.checkNotNull(key, r'Tag', 'key'),
            value:
                BuiltValueNullFieldError.checkNotNull(value, r'Tag', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
