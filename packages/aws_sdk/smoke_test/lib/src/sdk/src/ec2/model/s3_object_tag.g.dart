// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_object_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3ObjectTag extends S3ObjectTag {
  @override
  final String? key;
  @override
  final String? value;

  factory _$S3ObjectTag([void Function(S3ObjectTagBuilder)? updates]) =>
      (new S3ObjectTagBuilder()..update(updates))._build();

  _$S3ObjectTag._({this.key, this.value}) : super._();

  @override
  S3ObjectTag rebuild(void Function(S3ObjectTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3ObjectTagBuilder toBuilder() => new S3ObjectTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3ObjectTag && key == other.key && value == other.value;
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

class S3ObjectTagBuilder implements Builder<S3ObjectTag, S3ObjectTagBuilder> {
  _$S3ObjectTag? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  S3ObjectTagBuilder();

  S3ObjectTagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3ObjectTag other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3ObjectTag;
  }

  @override
  void update(void Function(S3ObjectTagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3ObjectTag build() => _build();

  _$S3ObjectTag _build() {
    final _$result = _$v ?? new _$S3ObjectTag._(key: key, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
