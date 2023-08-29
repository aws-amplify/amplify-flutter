// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_int_enums_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonIntEnumsInputOutput extends JsonIntEnumsInputOutput {
  @override
  final IntegerEnum? integerEnum1;
  @override
  final IntegerEnum? integerEnum2;
  @override
  final IntegerEnum? integerEnum3;
  @override
  final _i3.BuiltList<IntegerEnum>? integerEnumList;
  @override
  final _i3.BuiltSet<IntegerEnum>? integerEnumSet;
  @override
  final _i3.BuiltMap<String, IntegerEnum>? integerEnumMap;

  factory _$JsonIntEnumsInputOutput(
          [void Function(JsonIntEnumsInputOutputBuilder)? updates]) =>
      (new JsonIntEnumsInputOutputBuilder()..update(updates))._build();

  _$JsonIntEnumsInputOutput._(
      {this.integerEnum1,
      this.integerEnum2,
      this.integerEnum3,
      this.integerEnumList,
      this.integerEnumSet,
      this.integerEnumMap})
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
        integerEnumSet == other.integerEnumSet &&
        integerEnumMap == other.integerEnumMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, integerEnum1.hashCode);
    _$hash = $jc(_$hash, integerEnum2.hashCode);
    _$hash = $jc(_$hash, integerEnum3.hashCode);
    _$hash = $jc(_$hash, integerEnumList.hashCode);
    _$hash = $jc(_$hash, integerEnumSet.hashCode);
    _$hash = $jc(_$hash, integerEnumMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonIntEnumsInputOutputBuilder
    implements
        Builder<JsonIntEnumsInputOutput, JsonIntEnumsInputOutputBuilder> {
  _$JsonIntEnumsInputOutput? _$v;

  IntegerEnum? _integerEnum1;
  IntegerEnum? get integerEnum1 => _$this._integerEnum1;
  set integerEnum1(IntegerEnum? integerEnum1) =>
      _$this._integerEnum1 = integerEnum1;

  IntegerEnum? _integerEnum2;
  IntegerEnum? get integerEnum2 => _$this._integerEnum2;
  set integerEnum2(IntegerEnum? integerEnum2) =>
      _$this._integerEnum2 = integerEnum2;

  IntegerEnum? _integerEnum3;
  IntegerEnum? get integerEnum3 => _$this._integerEnum3;
  set integerEnum3(IntegerEnum? integerEnum3) =>
      _$this._integerEnum3 = integerEnum3;

  _i3.ListBuilder<IntegerEnum>? _integerEnumList;
  _i3.ListBuilder<IntegerEnum> get integerEnumList =>
      _$this._integerEnumList ??= new _i3.ListBuilder<IntegerEnum>();
  set integerEnumList(_i3.ListBuilder<IntegerEnum>? integerEnumList) =>
      _$this._integerEnumList = integerEnumList;

  _i3.SetBuilder<IntegerEnum>? _integerEnumSet;
  _i3.SetBuilder<IntegerEnum> get integerEnumSet =>
      _$this._integerEnumSet ??= new _i3.SetBuilder<IntegerEnum>();
  set integerEnumSet(_i3.SetBuilder<IntegerEnum>? integerEnumSet) =>
      _$this._integerEnumSet = integerEnumSet;

  _i3.MapBuilder<String, IntegerEnum>? _integerEnumMap;
  _i3.MapBuilder<String, IntegerEnum> get integerEnumMap =>
      _$this._integerEnumMap ??= new _i3.MapBuilder<String, IntegerEnum>();
  set integerEnumMap(_i3.MapBuilder<String, IntegerEnum>? integerEnumMap) =>
      _$this._integerEnumMap = integerEnumMap;

  JsonIntEnumsInputOutputBuilder();

  JsonIntEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integerEnum1 = $v.integerEnum1;
      _integerEnum2 = $v.integerEnum2;
      _integerEnum3 = $v.integerEnum3;
      _integerEnumList = $v.integerEnumList?.toBuilder();
      _integerEnumSet = $v.integerEnumSet?.toBuilder();
      _integerEnumMap = $v.integerEnumMap?.toBuilder();
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
              integerEnumSet: _integerEnumSet?.build(),
              integerEnumMap: _integerEnumMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'integerEnumList';
        _integerEnumList?.build();
        _$failedField = 'integerEnumSet';
        _integerEnumSet?.build();
        _$failedField = 'integerEnumMap';
        _integerEnumMap?.build();
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
