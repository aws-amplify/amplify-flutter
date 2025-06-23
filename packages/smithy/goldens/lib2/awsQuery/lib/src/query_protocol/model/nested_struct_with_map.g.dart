// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_struct_with_map.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedStructWithMap extends NestedStructWithMap {
  @override
  final _i2.BuiltMap<String, String>? mapArg;

  factory _$NestedStructWithMap([
    void Function(NestedStructWithMapBuilder)? updates,
  ]) => (NestedStructWithMapBuilder()..update(updates))._build();

  _$NestedStructWithMap._({this.mapArg}) : super._();
  @override
  NestedStructWithMap rebuild(
    void Function(NestedStructWithMapBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NestedStructWithMapBuilder toBuilder() =>
      NestedStructWithMapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedStructWithMap && mapArg == other.mapArg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mapArg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NestedStructWithMapBuilder
    implements Builder<NestedStructWithMap, NestedStructWithMapBuilder> {
  _$NestedStructWithMap? _$v;

  _i2.MapBuilder<String, String>? _mapArg;
  _i2.MapBuilder<String, String> get mapArg =>
      _$this._mapArg ??= _i2.MapBuilder<String, String>();
  set mapArg(_i2.MapBuilder<String, String>? mapArg) => _$this._mapArg = mapArg;

  NestedStructWithMapBuilder();

  NestedStructWithMapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapArg = $v.mapArg?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedStructWithMap other) {
    _$v = other as _$NestedStructWithMap;
  }

  @override
  void update(void Function(NestedStructWithMapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedStructWithMap build() => _build();

  _$NestedStructWithMap _build() {
    _$NestedStructWithMap _$result;
    try {
      _$result = _$v ?? _$NestedStructWithMap._(mapArg: _mapArg?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapArg';
        _mapArg?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NestedStructWithMap',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
