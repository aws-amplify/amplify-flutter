// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_pattern_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedPatternInput extends MalformedPatternInput {
  @override
  final String? string;
  @override
  final String? evilString;
  @override
  final _i3.BuiltList<String>? list;
  @override
  final _i3.BuiltMap<String, String>? map;
  @override
  final PatternUnion? union;

  factory _$MalformedPatternInput(
          [void Function(MalformedPatternInputBuilder)? updates]) =>
      (new MalformedPatternInputBuilder()..update(updates))._build();

  _$MalformedPatternInput._(
      {this.string, this.evilString, this.list, this.map, this.union})
      : super._();

  @override
  MalformedPatternInput rebuild(
          void Function(MalformedPatternInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedPatternInputBuilder toBuilder() =>
      new MalformedPatternInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedPatternInput &&
        string == other.string &&
        evilString == other.evilString &&
        list == other.list &&
        map == other.map &&
        union == other.union;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, evilString.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, map.hashCode);
    _$hash = $jc(_$hash, union.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedPatternInputBuilder
    implements Builder<MalformedPatternInput, MalformedPatternInputBuilder> {
  _$MalformedPatternInput? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  String? _evilString;
  String? get evilString => _$this._evilString;
  set evilString(String? evilString) => _$this._evilString = evilString;

  _i3.ListBuilder<String>? _list;
  _i3.ListBuilder<String> get list =>
      _$this._list ??= new _i3.ListBuilder<String>();
  set list(_i3.ListBuilder<String>? list) => _$this._list = list;

  _i3.MapBuilder<String, String>? _map;
  _i3.MapBuilder<String, String> get map =>
      _$this._map ??= new _i3.MapBuilder<String, String>();
  set map(_i3.MapBuilder<String, String>? map) => _$this._map = map;

  PatternUnion? _union;
  PatternUnion? get union => _$this._union;
  set union(PatternUnion? union) => _$this._union = union;

  MalformedPatternInputBuilder();

  MalformedPatternInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _evilString = $v.evilString;
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedPatternInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedPatternInput;
  }

  @override
  void update(void Function(MalformedPatternInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedPatternInput build() => _build();

  _$MalformedPatternInput _build() {
    _$MalformedPatternInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedPatternInput._(
              string: string,
              evilString: evilString,
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
            r'MalformedPatternInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
