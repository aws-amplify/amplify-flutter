// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_pattern_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedPatternInput extends MalformedPatternInput {
  @override
  final String? evilString;
  @override
  final _i4.BuiltList<String>? list;
  @override
  final _i4.BuiltMap<String, String>? map;
  @override
  final String? string;
  @override
  final _i3.PatternUnion? union;

  factory _$MalformedPatternInput(
          [void Function(MalformedPatternInputBuilder)? updates]) =>
      (new MalformedPatternInputBuilder()..update(updates))._build();

  _$MalformedPatternInput._(
      {this.evilString, this.list, this.map, this.string, this.union})
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
        evilString == other.evilString &&
        list == other.list &&
        map == other.map &&
        string == other.string &&
        union == other.union;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, evilString.hashCode), list.hashCode), map.hashCode),
            string.hashCode),
        union.hashCode));
  }
}

class MalformedPatternInputBuilder
    implements Builder<MalformedPatternInput, MalformedPatternInputBuilder> {
  _$MalformedPatternInput? _$v;

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

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  _i3.PatternUnion? _union;
  _i3.PatternUnion? get union => _$this._union;
  set union(_i3.PatternUnion? union) => _$this._union = union;

  MalformedPatternInputBuilder() {
    MalformedPatternInput._init(this);
  }

  MalformedPatternInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evilString = $v.evilString;
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _string = $v.string;
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
              evilString: evilString,
              list: _list?.build(),
              map: _map?.build(),
              string: string,
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
