// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.json_int_enums_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonIntEnumsInputOutput extends JsonIntEnumsInputOutput {
  @override
  final _i3.IntegerEnum? intEnum1;
  @override
  final _i3.IntegerEnum? intEnum2;
  @override
  final _i3.IntegerEnum? intEnum3;
  @override
  final _i4.BuiltList<_i3.IntegerEnum>? intEnumList;
  @override
  final _i4.BuiltMap<String, _i3.IntegerEnum>? intEnumMap;
  @override
  final _i4.BuiltSet<_i3.IntegerEnum>? intEnumSet;

  factory _$JsonIntEnumsInputOutput(
          [void Function(JsonIntEnumsInputOutputBuilder)? updates]) =>
      (new JsonIntEnumsInputOutputBuilder()..update(updates))._build();

  _$JsonIntEnumsInputOutput._(
      {this.intEnum1,
      this.intEnum2,
      this.intEnum3,
      this.intEnumList,
      this.intEnumMap,
      this.intEnumSet})
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
        intEnum1 == other.intEnum1 &&
        intEnum2 == other.intEnum2 &&
        intEnum3 == other.intEnum3 &&
        intEnumList == other.intEnumList &&
        intEnumMap == other.intEnumMap &&
        intEnumSet == other.intEnumSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, intEnum1.hashCode);
    _$hash = $jc(_$hash, intEnum2.hashCode);
    _$hash = $jc(_$hash, intEnum3.hashCode);
    _$hash = $jc(_$hash, intEnumList.hashCode);
    _$hash = $jc(_$hash, intEnumMap.hashCode);
    _$hash = $jc(_$hash, intEnumSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonIntEnumsInputOutputBuilder
    implements
        Builder<JsonIntEnumsInputOutput, JsonIntEnumsInputOutputBuilder> {
  _$JsonIntEnumsInputOutput? _$v;

  _i3.IntegerEnum? _intEnum1;
  _i3.IntegerEnum? get intEnum1 => _$this._intEnum1;
  set intEnum1(_i3.IntegerEnum? intEnum1) => _$this._intEnum1 = intEnum1;

  _i3.IntegerEnum? _intEnum2;
  _i3.IntegerEnum? get intEnum2 => _$this._intEnum2;
  set intEnum2(_i3.IntegerEnum? intEnum2) => _$this._intEnum2 = intEnum2;

  _i3.IntegerEnum? _intEnum3;
  _i3.IntegerEnum? get intEnum3 => _$this._intEnum3;
  set intEnum3(_i3.IntegerEnum? intEnum3) => _$this._intEnum3 = intEnum3;

  _i4.ListBuilder<_i3.IntegerEnum>? _intEnumList;
  _i4.ListBuilder<_i3.IntegerEnum> get intEnumList =>
      _$this._intEnumList ??= new _i4.ListBuilder<_i3.IntegerEnum>();
  set intEnumList(_i4.ListBuilder<_i3.IntegerEnum>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i4.MapBuilder<String, _i3.IntegerEnum>? _intEnumMap;
  _i4.MapBuilder<String, _i3.IntegerEnum> get intEnumMap =>
      _$this._intEnumMap ??= new _i4.MapBuilder<String, _i3.IntegerEnum>();
  set intEnumMap(_i4.MapBuilder<String, _i3.IntegerEnum>? intEnumMap) =>
      _$this._intEnumMap = intEnumMap;

  _i4.SetBuilder<_i3.IntegerEnum>? _intEnumSet;
  _i4.SetBuilder<_i3.IntegerEnum> get intEnumSet =>
      _$this._intEnumSet ??= new _i4.SetBuilder<_i3.IntegerEnum>();
  set intEnumSet(_i4.SetBuilder<_i3.IntegerEnum>? intEnumSet) =>
      _$this._intEnumSet = intEnumSet;

  JsonIntEnumsInputOutputBuilder() {
    JsonIntEnumsInputOutput._init(this);
  }

  JsonIntEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intEnum1 = $v.intEnum1;
      _intEnum2 = $v.intEnum2;
      _intEnum3 = $v.intEnum3;
      _intEnumList = $v.intEnumList?.toBuilder();
      _intEnumMap = $v.intEnumMap?.toBuilder();
      _intEnumSet = $v.intEnumSet?.toBuilder();
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
              intEnum1: intEnum1,
              intEnum2: intEnum2,
              intEnum3: intEnum3,
              intEnumList: _intEnumList?.build(),
              intEnumMap: _intEnumMap?.build(),
              intEnumSet: _intEnumSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intEnumList';
        _intEnumList?.build();
        _$failedField = 'intEnumMap';
        _intEnumMap?.build();
        _$failedField = 'intEnumSet';
        _intEnumSet?.build();
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
