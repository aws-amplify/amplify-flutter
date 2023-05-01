// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_query_v2.query_protocol.model.xml_maps_xml_name_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlMapsXmlNameOutput extends XmlMapsXmlNameOutput {
  @override
  final _i3.BuiltMap<String, _i2.GreetingStruct>? myMap;

  factory _$XmlMapsXmlNameOutput(
          [void Function(XmlMapsXmlNameOutputBuilder)? updates]) =>
      (new XmlMapsXmlNameOutputBuilder()..update(updates))._build();

  _$XmlMapsXmlNameOutput._({this.myMap}) : super._();

  @override
  XmlMapsXmlNameOutput rebuild(
          void Function(XmlMapsXmlNameOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlMapsXmlNameOutputBuilder toBuilder() =>
      new XmlMapsXmlNameOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlMapsXmlNameOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlMapsXmlNameOutputBuilder
    implements Builder<XmlMapsXmlNameOutput, XmlMapsXmlNameOutputBuilder> {
  _$XmlMapsXmlNameOutput? _$v;

  _i3.MapBuilder<String, _i2.GreetingStruct>? _myMap;
  _i3.MapBuilder<String, _i2.GreetingStruct> get myMap =>
      _$this._myMap ??= new _i3.MapBuilder<String, _i2.GreetingStruct>();
  set myMap(_i3.MapBuilder<String, _i2.GreetingStruct>? myMap) =>
      _$this._myMap = myMap;

  XmlMapsXmlNameOutputBuilder() {
    XmlMapsXmlNameOutput._init(this);
  }

  XmlMapsXmlNameOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlMapsXmlNameOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlMapsXmlNameOutput;
  }

  @override
  void update(void Function(XmlMapsXmlNameOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlMapsXmlNameOutput build() => _build();

  _$XmlMapsXmlNameOutput _build() {
    _$XmlMapsXmlNameOutput _$result;
    try {
      _$result = _$v ?? new _$XmlMapsXmlNameOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlMapsXmlNameOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
