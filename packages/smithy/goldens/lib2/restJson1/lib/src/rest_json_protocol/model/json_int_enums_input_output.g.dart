// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.json_int_enums_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonIntEnumsInputOutput extends JsonIntEnumsInputOutput {
  @override
  final _i3.IntegerEnum? integerEnum1;
  @override
  final _i3.IntegerEnum? integerEnum2;
  @override
  final _i3.IntegerEnum? integerEnum3;
  @override
  final _i4.BuiltList<_i3.IntegerEnum>? integerEnumList;
  @override
  final _i4.BuiltMap<String, _i3.IntegerEnum>? integerEnumMap;
  @override
  final _i4.BuiltSet<_i3.IntegerEnum>? integerEnumSet;

  factory _$JsonIntEnumsInputOutput(
          [void Function(JsonIntEnumsInputOutputBuilder)? updates]) =>
      (new JsonIntEnumsInputOutputBuilder()..update(updates))._build();

  _$JsonIntEnumsInputOutput._(
      {this.integerEnum1,
      this.integerEnum2,
      this.integerEnum3,
      this.integerEnumList,
      this.integerEnumMap,
      this.integerEnumSet})
      : super._();

  @override
  JsonIntEnumsInputOutput rebuild(
          void Function(JsonIntEnumsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonIntEnumsInputOutputBuilder toBuilder() =>
      new JsonIntEnumsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonIntEnumsInputOutput &&
        integerEnum1 == other.integerEnum1 &&
        integerEnum2 == other.integerEnum2 &&
        integerEnum3 == other.integerEnum3 &&
        integerEnumList == other.integerEnumList &&
        integerEnumMap == other.integerEnumMap &&
        integerEnumSet == other.integerEnumSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, integerEnum1.hashCode);
    _$hash = $jc(_$hash, integerEnum2.hashCode);
    _$hash = $jc(_$hash, integerEnum3.hashCode);
    _$hash = $jc(_$hash, integerEnumList.hashCode);
    _$hash = $jc(_$hash, integerEnumMap.hashCode);
    _$hash = $jc(_$hash, integerEnumSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonIntEnumsInputOutputBuilder
    implements
        Builder<JsonIntEnumsInputOutput, JsonIntEnumsInputOutputBuilder> {
  _$JsonIntEnumsInputOutput? _$v;

  _i3.IntegerEnum? _integerEnum1;
  _i3.IntegerEnum? get integerEnum1 => _$this._integerEnum1;
  set integerEnum1(_i3.IntegerEnum? integerEnum1) =>
      _$this._integerEnum1 = integerEnum1;

  _i3.IntegerEnum? _integerEnum2;
  _i3.IntegerEnum? get integerEnum2 => _$this._integerEnum2;
  set integerEnum2(_i3.IntegerEnum? integerEnum2) =>
      _$this._integerEnum2 = integerEnum2;

  _i3.IntegerEnum? _integerEnum3;
  _i3.IntegerEnum? get integerEnum3 => _$this._integerEnum3;
  set integerEnum3(_i3.IntegerEnum? integerEnum3) =>
      _$this._integerEnum3 = integerEnum3;

  _i4.ListBuilder<_i3.IntegerEnum>? _integerEnumList;
  _i4.ListBuilder<_i3.IntegerEnum> get integerEnumList =>
      _$this._integerEnumList ??= new _i4.ListBuilder<_i3.IntegerEnum>();
  set integerEnumList(_i4.ListBuilder<_i3.IntegerEnum>? integerEnumList) =>
      _$this._integerEnumList = integerEnumList;

  _i4.MapBuilder<String, _i3.IntegerEnum>? _integerEnumMap;
  _i4.MapBuilder<String, _i3.IntegerEnum> get integerEnumMap =>
      _$this._integerEnumMap ??= new _i4.MapBuilder<String, _i3.IntegerEnum>();
  set integerEnumMap(_i4.MapBuilder<String, _i3.IntegerEnum>? integerEnumMap) =>
      _$this._integerEnumMap = integerEnumMap;

  _i4.SetBuilder<_i3.IntegerEnum>? _integerEnumSet;
  _i4.SetBuilder<_i3.IntegerEnum> get integerEnumSet =>
      _$this._integerEnumSet ??= new _i4.SetBuilder<_i3.IntegerEnum>();
  set integerEnumSet(_i4.SetBuilder<_i3.IntegerEnum>? integerEnumSet) =>
      _$this._integerEnumSet = integerEnumSet;

  JsonIntEnumsInputOutputBuilder() {
    JsonIntEnumsInputOutput._init(this);
  }

  JsonIntEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integerEnum1 = $v.integerEnum1;
      _integerEnum2 = $v.integerEnum2;
      _integerEnum3 = $v.integerEnum3;
      _integerEnumList = $v.integerEnumList?.toBuilder();
      _integerEnumMap = $v.integerEnumMap?.toBuilder();
      _integerEnumSet = $v.integerEnumSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonIntEnumsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonIntEnumsInputOutput;
  }

  @override
  void update(void Function(JsonIntEnumsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonIntEnumsInputOutput build() => _build();

  _$JsonIntEnumsInputOutput _build() {
    _$JsonIntEnumsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$JsonIntEnumsInputOutput._(
              integerEnum1: integerEnum1,
              integerEnum2: integerEnum2,
              integerEnum3: integerEnum3,
              integerEnumList: _integerEnumList?.build(),
              integerEnumMap: _integerEnumMap?.build(),
              integerEnumSet: _integerEnumSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'integerEnumList';
        _integerEnumList?.build();
        _$failedField = 'integerEnumMap';
        _integerEnumMap?.build();
        _$failedField = 'integerEnumSet';
        _integerEnumSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JsonIntEnumsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
