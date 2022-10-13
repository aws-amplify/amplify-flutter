// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.json_maps_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonMapsInputOutput extends JsonMapsInputOutput {
  @override
  final _i3.BuiltMap<String, bool>? denseBooleanMap;
  @override
  final _i3.BuiltMap<String, int>? denseNumberMap;
  @override
  final _i3.BuiltSetMultimap<String, String>? denseSetMap;
  @override
  final _i3.BuiltMap<String, String>? denseStringMap;
  @override
  final _i3.BuiltMap<String, _i4.GreetingStruct>? denseStructMap;
  @override
  final _i3.BuiltMap<String, bool?>? sparseBooleanMap;
  @override
  final _i3.BuiltMap<String, int?>? sparseNumberMap;
  @override
  final _i3.BuiltSetMultimap<String, String>? sparseSetMap;
  @override
  final _i3.BuiltMap<String, String?>? sparseStringMap;
  @override
  final _i3.BuiltMap<String, _i4.GreetingStruct?>? sparseStructMap;

  factory _$JsonMapsInputOutput(
          [void Function(JsonMapsInputOutputBuilder)? updates]) =>
      (new JsonMapsInputOutputBuilder()..update(updates))._build();

  _$JsonMapsInputOutput._(
      {this.denseBooleanMap,
      this.denseNumberMap,
      this.denseSetMap,
      this.denseStringMap,
      this.denseStructMap,
      this.sparseBooleanMap,
      this.sparseNumberMap,
      this.sparseSetMap,
      this.sparseStringMap,
      this.sparseStructMap})
      : super._();

  @override
  JsonMapsInputOutput rebuild(
          void Function(JsonMapsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonMapsInputOutputBuilder toBuilder() =>
      new JsonMapsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonMapsInputOutput &&
        denseBooleanMap == other.denseBooleanMap &&
        denseNumberMap == other.denseNumberMap &&
        denseSetMap == other.denseSetMap &&
        denseStringMap == other.denseStringMap &&
        denseStructMap == other.denseStructMap &&
        sparseBooleanMap == other.sparseBooleanMap &&
        sparseNumberMap == other.sparseNumberMap &&
        sparseSetMap == other.sparseSetMap &&
        sparseStringMap == other.sparseStringMap &&
        sparseStructMap == other.sparseStructMap;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, denseBooleanMap.hashCode),
                                        denseNumberMap.hashCode),
                                    denseSetMap.hashCode),
                                denseStringMap.hashCode),
                            denseStructMap.hashCode),
                        sparseBooleanMap.hashCode),
                    sparseNumberMap.hashCode),
                sparseSetMap.hashCode),
            sparseStringMap.hashCode),
        sparseStructMap.hashCode));
  }
}

class JsonMapsInputOutputBuilder
    implements Builder<JsonMapsInputOutput, JsonMapsInputOutputBuilder> {
  _$JsonMapsInputOutput? _$v;

  _i3.MapBuilder<String, bool>? _denseBooleanMap;
  _i3.MapBuilder<String, bool> get denseBooleanMap =>
      _$this._denseBooleanMap ??= new _i3.MapBuilder<String, bool>();
  set denseBooleanMap(_i3.MapBuilder<String, bool>? denseBooleanMap) =>
      _$this._denseBooleanMap = denseBooleanMap;

  _i3.MapBuilder<String, int>? _denseNumberMap;
  _i3.MapBuilder<String, int> get denseNumberMap =>
      _$this._denseNumberMap ??= new _i3.MapBuilder<String, int>();
  set denseNumberMap(_i3.MapBuilder<String, int>? denseNumberMap) =>
      _$this._denseNumberMap = denseNumberMap;

  _i3.SetMultimapBuilder<String, String>? _denseSetMap;
  _i3.SetMultimapBuilder<String, String> get denseSetMap =>
      _$this._denseSetMap ??= new _i3.SetMultimapBuilder<String, String>();
  set denseSetMap(_i3.SetMultimapBuilder<String, String>? denseSetMap) =>
      _$this._denseSetMap = denseSetMap;

  _i3.MapBuilder<String, String>? _denseStringMap;
  _i3.MapBuilder<String, String> get denseStringMap =>
      _$this._denseStringMap ??= new _i3.MapBuilder<String, String>();
  set denseStringMap(_i3.MapBuilder<String, String>? denseStringMap) =>
      _$this._denseStringMap = denseStringMap;

  _i3.MapBuilder<String, _i4.GreetingStruct>? _denseStructMap;
  _i3.MapBuilder<String, _i4.GreetingStruct> get denseStructMap =>
      _$this._denseStructMap ??=
          new _i3.MapBuilder<String, _i4.GreetingStruct>();
  set denseStructMap(
          _i3.MapBuilder<String, _i4.GreetingStruct>? denseStructMap) =>
      _$this._denseStructMap = denseStructMap;

  _i3.MapBuilder<String, bool?>? _sparseBooleanMap;
  _i3.MapBuilder<String, bool?> get sparseBooleanMap =>
      _$this._sparseBooleanMap ??= new _i3.MapBuilder<String, bool?>();
  set sparseBooleanMap(_i3.MapBuilder<String, bool?>? sparseBooleanMap) =>
      _$this._sparseBooleanMap = sparseBooleanMap;

  _i3.MapBuilder<String, int?>? _sparseNumberMap;
  _i3.MapBuilder<String, int?> get sparseNumberMap =>
      _$this._sparseNumberMap ??= new _i3.MapBuilder<String, int?>();
  set sparseNumberMap(_i3.MapBuilder<String, int?>? sparseNumberMap) =>
      _$this._sparseNumberMap = sparseNumberMap;

  _i3.SetMultimapBuilder<String, String>? _sparseSetMap;
  _i3.SetMultimapBuilder<String, String> get sparseSetMap =>
      _$this._sparseSetMap ??= new _i3.SetMultimapBuilder<String, String>();
  set sparseSetMap(_i3.SetMultimapBuilder<String, String>? sparseSetMap) =>
      _$this._sparseSetMap = sparseSetMap;

  _i3.MapBuilder<String, String?>? _sparseStringMap;
  _i3.MapBuilder<String, String?> get sparseStringMap =>
      _$this._sparseStringMap ??= new _i3.MapBuilder<String, String?>();
  set sparseStringMap(_i3.MapBuilder<String, String?>? sparseStringMap) =>
      _$this._sparseStringMap = sparseStringMap;

  _i3.MapBuilder<String, _i4.GreetingStruct?>? _sparseStructMap;
  _i3.MapBuilder<String, _i4.GreetingStruct?> get sparseStructMap =>
      _$this._sparseStructMap ??=
          new _i3.MapBuilder<String, _i4.GreetingStruct?>();
  set sparseStructMap(
          _i3.MapBuilder<String, _i4.GreetingStruct?>? sparseStructMap) =>
      _$this._sparseStructMap = sparseStructMap;

  JsonMapsInputOutputBuilder() {
    JsonMapsInputOutput._init(this);
  }

  JsonMapsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _denseBooleanMap = $v.denseBooleanMap?.toBuilder();
      _denseNumberMap = $v.denseNumberMap?.toBuilder();
      _denseSetMap = $v.denseSetMap?.toBuilder();
      _denseStringMap = $v.denseStringMap?.toBuilder();
      _denseStructMap = $v.denseStructMap?.toBuilder();
      _sparseBooleanMap = $v.sparseBooleanMap?.toBuilder();
      _sparseNumberMap = $v.sparseNumberMap?.toBuilder();
      _sparseSetMap = $v.sparseSetMap?.toBuilder();
      _sparseStringMap = $v.sparseStringMap?.toBuilder();
      _sparseStructMap = $v.sparseStructMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonMapsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonMapsInputOutput;
  }

  @override
  void update(void Function(JsonMapsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonMapsInputOutput build() => _build();

  _$JsonMapsInputOutput _build() {
    _$JsonMapsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$JsonMapsInputOutput._(
              denseBooleanMap: _denseBooleanMap?.build(),
              denseNumberMap: _denseNumberMap?.build(),
              denseSetMap: _denseSetMap?.build(),
              denseStringMap: _denseStringMap?.build(),
              denseStructMap: _denseStructMap?.build(),
              sparseBooleanMap: _sparseBooleanMap?.build(),
              sparseNumberMap: _sparseNumberMap?.build(),
              sparseSetMap: _sparseSetMap?.build(),
              sparseStringMap: _sparseStringMap?.build(),
              sparseStructMap: _sparseStructMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'denseBooleanMap';
        _denseBooleanMap?.build();
        _$failedField = 'denseNumberMap';
        _denseNumberMap?.build();
        _$failedField = 'denseSetMap';
        _denseSetMap?.build();
        _$failedField = 'denseStringMap';
        _denseStringMap?.build();
        _$failedField = 'denseStructMap';
        _denseStructMap?.build();
        _$failedField = 'sparseBooleanMap';
        _sparseBooleanMap?.build();
        _$failedField = 'sparseNumberMap';
        _sparseNumberMap?.build();
        _$failedField = 'sparseSetMap';
        _sparseSetMap?.build();
        _$failedField = 'sparseStringMap';
        _sparseStringMap?.build();
        _$failedField = 'sparseStructMap';
        _sparseStructMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JsonMapsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
