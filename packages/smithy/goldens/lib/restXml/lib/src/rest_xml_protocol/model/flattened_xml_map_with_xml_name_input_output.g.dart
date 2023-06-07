// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flattened_xml_map_with_xml_name_input_output.dart';

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
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
