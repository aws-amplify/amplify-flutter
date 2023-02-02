// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.xml_maps_xml_name_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlMapsXmlNameInputOutput extends XmlMapsXmlNameInputOutput {
  @override
  final _i4.BuiltMap<String, _i3.GreetingStruct>? myMap;

  factory _$XmlMapsXmlNameInputOutput(
          [void Function(XmlMapsXmlNameInputOutputBuilder)? updates]) =>
      (new XmlMapsXmlNameInputOutputBuilder()..update(updates))._build();

  _$XmlMapsXmlNameInputOutput._({this.myMap}) : super._();

  @override
  XmlMapsXmlNameInputOutput rebuild(
          void Function(XmlMapsXmlNameInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlMapsXmlNameInputOutputBuilder toBuilder() =>
      new XmlMapsXmlNameInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlMapsXmlNameInputOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlMapsXmlNameInputOutputBuilder
    implements
        Builder<XmlMapsXmlNameInputOutput, XmlMapsXmlNameInputOutputBuilder> {
  _$XmlMapsXmlNameInputOutput? _$v;

  _i4.MapBuilder<String, _i3.GreetingStruct>? _myMap;
  _i4.MapBuilder<String, _i3.GreetingStruct> get myMap =>
      _$this._myMap ??= new _i4.MapBuilder<String, _i3.GreetingStruct>();
  set myMap(_i4.MapBuilder<String, _i3.GreetingStruct>? myMap) =>
      _$this._myMap = myMap;

  XmlMapsXmlNameInputOutputBuilder() {
    XmlMapsXmlNameInputOutput._init(this);
  }

  XmlMapsXmlNameInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlMapsXmlNameInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlMapsXmlNameInputOutput;
  }

  @override
  void update(void Function(XmlMapsXmlNameInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlMapsXmlNameInputOutput build() => _build();

  _$XmlMapsXmlNameInputOutput _build() {
    _$XmlMapsXmlNameInputOutput _$result;
    try {
      _$result =
          _$v ?? new _$XmlMapsXmlNameInputOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlMapsXmlNameInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
