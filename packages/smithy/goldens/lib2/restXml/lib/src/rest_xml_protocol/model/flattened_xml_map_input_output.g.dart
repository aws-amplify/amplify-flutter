// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.flattened_xml_map_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlattenedXmlMapInputOutput extends FlattenedXmlMapInputOutput {
  @override
  final _i4.BuiltMap<String, _i3.FooEnum>? myMap;

  factory _$FlattenedXmlMapInputOutput(
          [void Function(FlattenedXmlMapInputOutputBuilder)? updates]) =>
      (new FlattenedXmlMapInputOutputBuilder()..update(updates))._build();

  _$FlattenedXmlMapInputOutput._({this.myMap}) : super._();

  @override
  FlattenedXmlMapInputOutput rebuild(
          void Function(FlattenedXmlMapInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlattenedXmlMapInputOutputBuilder toBuilder() =>
      new FlattenedXmlMapInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlattenedXmlMapInputOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FlattenedXmlMapInputOutputBuilder
    implements
        Builder<FlattenedXmlMapInputOutput, FlattenedXmlMapInputOutputBuilder> {
  _$FlattenedXmlMapInputOutput? _$v;

  _i4.MapBuilder<String, _i3.FooEnum>? _myMap;
  _i4.MapBuilder<String, _i3.FooEnum> get myMap =>
      _$this._myMap ??= new _i4.MapBuilder<String, _i3.FooEnum>();
  set myMap(_i4.MapBuilder<String, _i3.FooEnum>? myMap) =>
      _$this._myMap = myMap;

  FlattenedXmlMapInputOutputBuilder() {
    FlattenedXmlMapInputOutput._init(this);
  }

  FlattenedXmlMapInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlattenedXmlMapInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlattenedXmlMapInputOutput;
  }

  @override
  void update(void Function(FlattenedXmlMapInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlattenedXmlMapInputOutput build() => _build();

  _$FlattenedXmlMapInputOutput _build() {
    _$FlattenedXmlMapInputOutput _$result;
    try {
      _$result =
          _$v ?? new _$FlattenedXmlMapInputOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlattenedXmlMapInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
