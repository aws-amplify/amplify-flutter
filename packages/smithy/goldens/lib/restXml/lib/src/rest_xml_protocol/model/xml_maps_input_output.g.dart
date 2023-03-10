// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.xml_maps_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlMapsInputOutput extends XmlMapsInputOutput {
  @override
  final _i4.BuiltMap<String, _i3.GreetingStruct>? myMap;

  factory _$XmlMapsInputOutput(
          [void Function(XmlMapsInputOutputBuilder)? updates]) =>
      (new XmlMapsInputOutputBuilder()..update(updates))._build();

  _$XmlMapsInputOutput._({this.myMap}) : super._();

  @override
  XmlMapsInputOutput rebuild(
          void Function(XmlMapsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlMapsInputOutputBuilder toBuilder() =>
      new XmlMapsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlMapsInputOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlMapsInputOutputBuilder
    implements Builder<XmlMapsInputOutput, XmlMapsInputOutputBuilder> {
  _$XmlMapsInputOutput? _$v;

  _i4.MapBuilder<String, _i3.GreetingStruct>? _myMap;
  _i4.MapBuilder<String, _i3.GreetingStruct> get myMap =>
      _$this._myMap ??= new _i4.MapBuilder<String, _i3.GreetingStruct>();
  set myMap(_i4.MapBuilder<String, _i3.GreetingStruct>? myMap) =>
      _$this._myMap = myMap;

  XmlMapsInputOutputBuilder() {
    XmlMapsInputOutput._init(this);
  }

  XmlMapsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlMapsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlMapsInputOutput;
  }

  @override
  void update(void Function(XmlMapsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlMapsInputOutput build() => _build();

  _$XmlMapsInputOutput _build() {
    _$XmlMapsInputOutput _$result;
    try {
      _$result = _$v ?? new _$XmlMapsInputOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlMapsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
