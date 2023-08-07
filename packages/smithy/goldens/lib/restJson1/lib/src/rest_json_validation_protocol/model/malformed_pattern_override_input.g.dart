// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_pattern_override_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedPatternOverrideInput extends MalformedPatternOverrideInput {
  @override
  final String? string;
  @override
  final _i3.BuiltList<String>? list;
  @override
  final _i3.BuiltMap<String, String>? map;
  @override
  final PatternUnionOverride? union;

  factory _$MalformedPatternOverrideInput(
          [void Function(MalformedPatternOverrideInputBuilder)? updates]) =>
      (new MalformedPatternOverrideInputBuilder()..update(updates))._build();

  _$MalformedPatternOverrideInput._(
      {this.string, this.list, this.map, this.union})
      : super._();

  @override
  MalformedPatternOverrideInput rebuild(
          void Function(MalformedPatternOverrideInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedPatternOverrideInputBuilder toBuilder() =>
      new MalformedPatternOverrideInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedPatternOverrideInput &&
        string == other.string &&
        list == other.list &&
        map == other.map &&
        union == other.union;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, map.hashCode);
    _$hash = $jc(_$hash, union.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedPatternOverrideInputBuilder
    implements
        Builder<MalformedPatternOverrideInput,
            MalformedPatternOverrideInputBuilder> {
  _$MalformedPatternOverrideInput? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  _i3.ListBuilder<String>? _list;
  _i3.ListBuilder<String> get list =>
      _$this._list ??= new _i3.ListBuilder<String>();
  set list(_i3.ListBuilder<String>? list) => _$this._list = list;

  _i3.MapBuilder<String, String>? _map;
  _i3.MapBuilder<String, String> get map =>
      _$this._map ??= new _i3.MapBuilder<String, String>();
  set map(_i3.MapBuilder<String, String>? map) => _$this._map = map;

  PatternUnionOverride? _union;
  PatternUnionOverride? get union => _$this._union;
  set union(PatternUnionOverride? union) => _$this._union = union;

  MalformedPatternOverrideInputBuilder();

  MalformedPatternOverrideInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedPatternOverrideInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedPatternOverrideInput;
  }

  @override
  void update(void Function(MalformedPatternOverrideInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedPatternOverrideInput build() => _build();

  _$MalformedPatternOverrideInput _build() {
    _$MalformedPatternOverrideInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedPatternOverrideInput._(
              string: string,
              list: _list?.build(),
              map: _map?.build(),
              union: union);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'map';
        _map?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedPatternOverrideInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
