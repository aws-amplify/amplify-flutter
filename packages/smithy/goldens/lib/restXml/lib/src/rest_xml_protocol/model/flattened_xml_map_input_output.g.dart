// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.flattened_xml_map_input_output;

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
    return $jf($jc(0, myMap.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
