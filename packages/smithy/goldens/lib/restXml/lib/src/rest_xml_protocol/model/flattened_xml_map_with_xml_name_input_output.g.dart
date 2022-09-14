// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.rest_xml_protocol.model.flattened_xml_map_with_xml_name_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlattenedXmlMapWithXmlNameInputOutput
    extends FlattenedXmlMapWithXmlNameInputOutput {
  @override
  final _i3.BuiltMap<String, String>? myMap;

  factory _$FlattenedXmlMapWithXmlNameInputOutput(
          [void Function(FlattenedXmlMapWithXmlNameInputOutputBuilder)?
              updates]) =>
      (new FlattenedXmlMapWithXmlNameInputOutputBuilder()..update(updates))
          ._build();

  _$FlattenedXmlMapWithXmlNameInputOutput._({this.myMap}) : super._();

  @override
  FlattenedXmlMapWithXmlNameInputOutput rebuild(
          void Function(FlattenedXmlMapWithXmlNameInputOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlattenedXmlMapWithXmlNameInputOutputBuilder toBuilder() =>
      new FlattenedXmlMapWithXmlNameInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlattenedXmlMapWithXmlNameInputOutput &&
        myMap == other.myMap;
  }

  @override
  int get hashCode {
    return $jf($jc(0, myMap.hashCode));
  }
}

class FlattenedXmlMapWithXmlNameInputOutputBuilder
    implements
        Builder<FlattenedXmlMapWithXmlNameInputOutput,
            FlattenedXmlMapWithXmlNameInputOutputBuilder> {
  _$FlattenedXmlMapWithXmlNameInputOutput? _$v;

  _i3.MapBuilder<String, String>? _myMap;
  _i3.MapBuilder<String, String> get myMap =>
      _$this._myMap ??= new _i3.MapBuilder<String, String>();
  set myMap(_i3.MapBuilder<String, String>? myMap) => _$this._myMap = myMap;

  FlattenedXmlMapWithXmlNameInputOutputBuilder() {
    FlattenedXmlMapWithXmlNameInputOutput._init(this);
  }

  FlattenedXmlMapWithXmlNameInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlattenedXmlMapWithXmlNameInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlattenedXmlMapWithXmlNameInputOutput;
  }

  @override
  void update(
      void Function(FlattenedXmlMapWithXmlNameInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlattenedXmlMapWithXmlNameInputOutput build() => _build();

  _$FlattenedXmlMapWithXmlNameInputOutput _build() {
    _$FlattenedXmlMapWithXmlNameInputOutput _$result;
    try {
      _$result = _$v ??
          new _$FlattenedXmlMapWithXmlNameInputOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlattenedXmlMapWithXmlNameInputOutput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
