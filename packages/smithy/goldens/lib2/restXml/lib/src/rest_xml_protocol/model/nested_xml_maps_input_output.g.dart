// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.nested_xml_maps_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedXmlMapsInputOutput extends NestedXmlMapsInputOutput {
  @override
  final _i4.BuiltMap<String, _i4.BuiltMap<String, _i3.FooEnum>>? nestedMap;
  @override
  final _i4.BuiltMap<String, _i4.BuiltMap<String, _i3.FooEnum>>? flatNestedMap;

  factory _$NestedXmlMapsInputOutput(
          [void Function(NestedXmlMapsInputOutputBuilder)? updates]) =>
      (new NestedXmlMapsInputOutputBuilder()..update(updates))._build();

  _$NestedXmlMapsInputOutput._({this.nestedMap, this.flatNestedMap})
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
        nestedMap == other.nestedMap &&
        flatNestedMap == other.flatNestedMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nestedMap.hashCode);
    _$hash = $jc(_$hash, flatNestedMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NestedXmlMapsInputOutputBuilder
    implements
        Builder<NestedXmlMapsInputOutput, NestedXmlMapsInputOutputBuilder> {
  _$NestedXmlMapsInputOutput? _$v;

  _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>>? _nestedMap;
  _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>> get nestedMap =>
      _$this._nestedMap ??=
          new _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>>();
  set nestedMap(
          _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>>?
              nestedMap) =>
      _$this._nestedMap = nestedMap;

  _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>>? _flatNestedMap;
  _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>> get flatNestedMap =>
      _$this._flatNestedMap ??=
          new _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>>();
  set flatNestedMap(
          _i4.MapBuilder<String, _i4.BuiltMap<String, _i3.FooEnum>>?
              flatNestedMap) =>
      _$this._flatNestedMap = flatNestedMap;

  NestedXmlMapsInputOutputBuilder() {
    NestedXmlMapsInputOutput._init(this);
  }

  NestedXmlMapsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nestedMap = $v.nestedMap?.toBuilder();
      _flatNestedMap = $v.flatNestedMap?.toBuilder();
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
              nestedMap: _nestedMap?.build(),
              flatNestedMap: _flatNestedMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nestedMap';
        _nestedMap?.build();
        _$failedField = 'flatNestedMap';
        _flatNestedMap?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
