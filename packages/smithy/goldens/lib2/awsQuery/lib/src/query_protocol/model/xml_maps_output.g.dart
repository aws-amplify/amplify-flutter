// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_maps_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlMapsOutput extends XmlMapsOutput {
  @override
  final _i2.BuiltMap<String, GreetingStruct>? myMap;

  factory _$XmlMapsOutput([void Function(XmlMapsOutputBuilder)? updates]) =>
      (new XmlMapsOutputBuilder()..update(updates))._build();

  _$XmlMapsOutput._({this.myMap}) : super._();

  @override
  XmlMapsOutput rebuild(void Function(XmlMapsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlMapsOutputBuilder toBuilder() => new XmlMapsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlMapsOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlMapsOutputBuilder
    implements Builder<XmlMapsOutput, XmlMapsOutputBuilder> {
  _$XmlMapsOutput? _$v;

  _i2.MapBuilder<String, GreetingStruct>? _myMap;
  _i2.MapBuilder<String, GreetingStruct> get myMap =>
      _$this._myMap ??= new _i2.MapBuilder<String, GreetingStruct>();
  set myMap(_i2.MapBuilder<String, GreetingStruct>? myMap) =>
      _$this._myMap = myMap;

  XmlMapsOutputBuilder();

  XmlMapsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlMapsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlMapsOutput;
  }

  @override
  void update(void Function(XmlMapsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlMapsOutput build() => _build();

  _$XmlMapsOutput _build() {
    _$XmlMapsOutput _$result;
    try {
      _$result = _$v ?? new _$XmlMapsOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlMapsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
