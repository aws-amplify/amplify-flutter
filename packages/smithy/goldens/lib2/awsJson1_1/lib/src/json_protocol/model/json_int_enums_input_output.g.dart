// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_int_enums_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonIntEnumsInputOutput extends JsonIntEnumsInputOutput {
  @override
  final IntegerEnum? intEnum1;
  @override
  final IntegerEnum? intEnum2;
  @override
  final IntegerEnum? intEnum3;
  @override
  final _i3.BuiltList<IntegerEnum>? intEnumList;
  @override
  final _i3.BuiltSet<IntegerEnum>? intEnumSet;
  @override
  final _i3.BuiltMap<String, IntegerEnum>? intEnumMap;

  factory _$JsonIntEnumsInputOutput([
    void Function(JsonIntEnumsInputOutputBuilder)? updates,
  ]) => (new JsonIntEnumsInputOutputBuilder()..update(updates))._build();

  _$JsonIntEnumsInputOutput._({
    this.intEnum1,
    this.intEnum2,
    this.intEnum3,
    this.intEnumList,
    this.intEnumSet,
    this.intEnumMap,
  }) : super._();

  @override
  JsonIntEnumsInputOutput rebuild(
    void Function(JsonIntEnumsInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

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
        intEnumSet == other.intEnumSet &&
        intEnumMap == other.intEnumMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, intEnum1.hashCode);
    _$hash = $jc(_$hash, intEnum2.hashCode);
    _$hash = $jc(_$hash, intEnum3.hashCode);
    _$hash = $jc(_$hash, intEnumList.hashCode);
    _$hash = $jc(_$hash, intEnumSet.hashCode);
    _$hash = $jc(_$hash, intEnumMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonIntEnumsInputOutputBuilder
    implements
        Builder<JsonIntEnumsInputOutput, JsonIntEnumsInputOutputBuilder> {
  _$JsonIntEnumsInputOutput? _$v;

  IntegerEnum? _intEnum1;
  IntegerEnum? get intEnum1 => _$this._intEnum1;
  set intEnum1(IntegerEnum? intEnum1) => _$this._intEnum1 = intEnum1;

  IntegerEnum? _intEnum2;
  IntegerEnum? get intEnum2 => _$this._intEnum2;
  set intEnum2(IntegerEnum? intEnum2) => _$this._intEnum2 = intEnum2;

  IntegerEnum? _intEnum3;
  IntegerEnum? get intEnum3 => _$this._intEnum3;
  set intEnum3(IntegerEnum? intEnum3) => _$this._intEnum3 = intEnum3;

  _i3.ListBuilder<IntegerEnum>? _intEnumList;
  _i3.ListBuilder<IntegerEnum> get intEnumList =>
      _$this._intEnumList ??= new _i3.ListBuilder<IntegerEnum>();
  set intEnumList(_i3.ListBuilder<IntegerEnum>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i3.SetBuilder<IntegerEnum>? _intEnumSet;
  _i3.SetBuilder<IntegerEnum> get intEnumSet =>
      _$this._intEnumSet ??= new _i3.SetBuilder<IntegerEnum>();
  set intEnumSet(_i3.SetBuilder<IntegerEnum>? intEnumSet) =>
      _$this._intEnumSet = intEnumSet;

  _i3.MapBuilder<String, IntegerEnum>? _intEnumMap;
  _i3.MapBuilder<String, IntegerEnum> get intEnumMap =>
      _$this._intEnumMap ??= new _i3.MapBuilder<String, IntegerEnum>();
  set intEnumMap(_i3.MapBuilder<String, IntegerEnum>? intEnumMap) =>
      _$this._intEnumMap = intEnumMap;

  JsonIntEnumsInputOutputBuilder();

  JsonIntEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intEnum1 = $v.intEnum1;
      _intEnum2 = $v.intEnum2;
      _intEnum3 = $v.intEnum3;
      _intEnumList = $v.intEnumList?.toBuilder();
      _intEnumSet = $v.intEnumSet?.toBuilder();
      _intEnumMap = $v.intEnumMap?.toBuilder();
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
      _$result =
          _$v ??
          new _$JsonIntEnumsInputOutput._(
            intEnum1: intEnum1,
            intEnum2: intEnum2,
            intEnum3: intEnum3,
            intEnumList: _intEnumList?.build(),
            intEnumSet: _intEnumSet?.build(),
            intEnumMap: _intEnumMap?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intEnumList';
        _intEnumList?.build();
        _$failedField = 'intEnumSet';
        _intEnumSet?.build();
        _$failedField = 'intEnumMap';
        _intEnumMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
          r'JsonIntEnumsInputOutput',
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
