// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.xml_maps_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlMapsInputOutput extends XmlMapsInputOutput {
  @override
  final _i3.BuiltMap<String, _i4.GreetingStruct>? myMap;

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
    return $jf($jc(0, myMap.hashCode));
  }
}

class XmlMapsInputOutputBuilder
    implements Builder<XmlMapsInputOutput, XmlMapsInputOutputBuilder> {
  _$XmlMapsInputOutput? _$v;

  _i3.MapBuilder<String, _i4.GreetingStruct>? _myMap;
  _i3.MapBuilder<String, _i4.GreetingStruct> get myMap =>
      _$this._myMap ??= new _i3.MapBuilder<String, _i4.GreetingStruct>();
  set myMap(_i3.MapBuilder<String, _i4.GreetingStruct>? myMap) =>
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
