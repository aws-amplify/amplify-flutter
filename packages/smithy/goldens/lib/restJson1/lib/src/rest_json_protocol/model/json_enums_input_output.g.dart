// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.json_enums_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonEnumsInputOutput extends JsonEnumsInputOutput {
  @override
  final _i3.FooEnum? fooEnum1;
  @override
  final _i3.FooEnum? fooEnum2;
  @override
  final _i3.FooEnum? fooEnum3;
  @override
  final _i4.BuiltList<_i3.FooEnum>? fooEnumList;
  @override
  final _i4.BuiltMap<String, _i3.FooEnum>? fooEnumMap;
  @override
  final _i4.BuiltSet<_i3.FooEnum>? fooEnumSet;

  factory _$JsonEnumsInputOutput(
          [void Function(JsonEnumsInputOutputBuilder)? updates]) =>
      (new JsonEnumsInputOutputBuilder()..update(updates))._build();

  _$JsonEnumsInputOutput._(
      {this.fooEnum1,
      this.fooEnum2,
      this.fooEnum3,
      this.fooEnumList,
      this.fooEnumMap,
      this.fooEnumSet})
      : super._();

  @override
  JsonEnumsInputOutput rebuild(
          void Function(JsonEnumsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonEnumsInputOutputBuilder toBuilder() =>
      new JsonEnumsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonEnumsInputOutput &&
        fooEnum1 == other.fooEnum1 &&
        fooEnum2 == other.fooEnum2 &&
        fooEnum3 == other.fooEnum3 &&
        fooEnumList == other.fooEnumList &&
        fooEnumMap == other.fooEnumMap &&
        fooEnumSet == other.fooEnumSet;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, fooEnum1.hashCode), fooEnum2.hashCode),
                    fooEnum3.hashCode),
                fooEnumList.hashCode),
            fooEnumMap.hashCode),
        fooEnumSet.hashCode));
  }
}

class JsonEnumsInputOutputBuilder
    implements Builder<JsonEnumsInputOutput, JsonEnumsInputOutputBuilder> {
  _$JsonEnumsInputOutput? _$v;

  _i3.FooEnum? _fooEnum1;
  _i3.FooEnum? get fooEnum1 => _$this._fooEnum1;
  set fooEnum1(_i3.FooEnum? fooEnum1) => _$this._fooEnum1 = fooEnum1;

  _i3.FooEnum? _fooEnum2;
  _i3.FooEnum? get fooEnum2 => _$this._fooEnum2;
  set fooEnum2(_i3.FooEnum? fooEnum2) => _$this._fooEnum2 = fooEnum2;

  _i3.FooEnum? _fooEnum3;
  _i3.FooEnum? get fooEnum3 => _$this._fooEnum3;
  set fooEnum3(_i3.FooEnum? fooEnum3) => _$this._fooEnum3 = fooEnum3;

  _i4.ListBuilder<_i3.FooEnum>? _fooEnumList;
  _i4.ListBuilder<_i3.FooEnum> get fooEnumList =>
      _$this._fooEnumList ??= new _i4.ListBuilder<_i3.FooEnum>();
  set fooEnumList(_i4.ListBuilder<_i3.FooEnum>? fooEnumList) =>
      _$this._fooEnumList = fooEnumList;

  _i4.MapBuilder<String, _i3.FooEnum>? _fooEnumMap;
  _i4.MapBuilder<String, _i3.FooEnum> get fooEnumMap =>
      _$this._fooEnumMap ??= new _i4.MapBuilder<String, _i3.FooEnum>();
  set fooEnumMap(_i4.MapBuilder<String, _i3.FooEnum>? fooEnumMap) =>
      _$this._fooEnumMap = fooEnumMap;

  _i4.SetBuilder<_i3.FooEnum>? _fooEnumSet;
  _i4.SetBuilder<_i3.FooEnum> get fooEnumSet =>
      _$this._fooEnumSet ??= new _i4.SetBuilder<_i3.FooEnum>();
  set fooEnumSet(_i4.SetBuilder<_i3.FooEnum>? fooEnumSet) =>
      _$this._fooEnumSet = fooEnumSet;

  JsonEnumsInputOutputBuilder() {
    JsonEnumsInputOutput._init(this);
  }

  JsonEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fooEnum1 = $v.fooEnum1;
      _fooEnum2 = $v.fooEnum2;
      _fooEnum3 = $v.fooEnum3;
      _fooEnumList = $v.fooEnumList?.toBuilder();
      _fooEnumMap = $v.fooEnumMap?.toBuilder();
      _fooEnumSet = $v.fooEnumSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonEnumsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonEnumsInputOutput;
  }

  @override
  void update(void Function(JsonEnumsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonEnumsInputOutput build() => _build();

  _$JsonEnumsInputOutput _build() {
    _$JsonEnumsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$JsonEnumsInputOutput._(
              fooEnum1: fooEnum1,
              fooEnum2: fooEnum2,
              fooEnum3: fooEnum3,
              fooEnumList: _fooEnumList?.build(),
              fooEnumMap: _fooEnumMap?.build(),
              fooEnumSet: _fooEnumSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooEnumList';
        _fooEnumList?.build();
        _$failedField = 'fooEnumMap';
        _fooEnumMap?.build();
        _$failedField = 'fooEnumSet';
        _fooEnumSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JsonEnumsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
