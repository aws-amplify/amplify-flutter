// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_pattern_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedPatternInput extends MalformedPatternInput {
  @override
  final String? string;
  @override
  final String? evilString;
  @override
  final _i4.BuiltList<String>? list;
  @override
  final _i4.BuiltMap<String, String>? map;
  @override
  final _i3.PatternUnion? union;

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

  _i4.ListBuilder<String>? _list;
  _i4.ListBuilder<String> get list =>
      _$this._list ??= new _i4.ListBuilder<String>();
  set list(_i4.ListBuilder<String>? list) => _$this._list = list;

  _i4.MapBuilder<String, String>? _map;
  _i4.MapBuilder<String, String> get map =>
      _$this._map ??= new _i4.MapBuilder<String, String>();
  set map(_i4.MapBuilder<String, String>? map) => _$this._map = map;

  _i3.PatternUnion? _union;
  _i3.PatternUnion? get union => _$this._union;
  set union(_i3.PatternUnion? union) => _$this._union = union;

  MalformedPatternInputBuilder() {
    MalformedPatternInput._init(this);
  }

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
