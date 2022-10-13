// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.nested_xml_maps_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedXmlMapsInputOutput extends NestedXmlMapsInputOutput {
  @override
  final _i3.BuiltMap<String, _i3.BuiltMap<String, _i4.FooEnum>>? flatNestedMap;
  @override
  final _i3.BuiltMap<String, _i3.BuiltMap<String, _i4.FooEnum>>? nestedMap;

  factory _$NestedXmlMapsInputOutput(
          [void Function(NestedXmlMapsInputOutputBuilder)? updates]) =>
      (new NestedXmlMapsInputOutputBuilder()..update(updates))._build();

  _$NestedXmlMapsInputOutput._({this.flatNestedMap, this.nestedMap})
      : super._();

  @override
  NestedXmlMapsInputOutput rebuild(
          void Function(NestedXmlMapsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedXmlMapsInputOutputBuilder toBuilder() =>
      new NestedXmlMapsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedXmlMapsInputOutput &&
        flatNestedMap == other.flatNestedMap &&
        nestedMap == other.nestedMap;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, flatNestedMap.hashCode), nestedMap.hashCode));
  }
}

class NestedXmlMapsInputOutputBuilder
    implements
        Builder<NestedXmlMapsInputOutput, NestedXmlMapsInputOutputBuilder> {
  _$NestedXmlMapsInputOutput? _$v;

  _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>>? _flatNestedMap;
  _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>> get flatNestedMap =>
      _$this._flatNestedMap ??=
          new _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>>();
  set flatNestedMap(
          _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>>?
              flatNestedMap) =>
      _$this._flatNestedMap = flatNestedMap;

  _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>>? _nestedMap;
  _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>> get nestedMap =>
      _$this._nestedMap ??=
          new _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>>();
  set nestedMap(
          _i3.MapBuilder<String, _i3.BuiltMap<String, _i4.FooEnum>>?
              nestedMap) =>
      _$this._nestedMap = nestedMap;

  NestedXmlMapsInputOutputBuilder() {
    NestedXmlMapsInputOutput._init(this);
  }

  NestedXmlMapsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flatNestedMap = $v.flatNestedMap?.toBuilder();
      _nestedMap = $v.nestedMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedXmlMapsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedXmlMapsInputOutput;
  }

  @override
  void update(void Function(NestedXmlMapsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedXmlMapsInputOutput build() => _build();

  _$NestedXmlMapsInputOutput _build() {
    _$NestedXmlMapsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$NestedXmlMapsInputOutput._(
              flatNestedMap: _flatNestedMap?.build(),
              nestedMap: _nestedMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'flatNestedMap';
        _flatNestedMap?.build();
        _$failedField = 'nestedMap';
        _nestedMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NestedXmlMapsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
