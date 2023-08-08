// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flattened_xml_map_with_xml_name_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlattenedXmlMapWithXmlNameOutput
    extends FlattenedXmlMapWithXmlNameOutput {
  @override
  final _i2.BuiltMap<String, String>? myMap;

  factory _$FlattenedXmlMapWithXmlNameOutput(
          [void Function(FlattenedXmlMapWithXmlNameOutputBuilder)? updates]) =>
      (new FlattenedXmlMapWithXmlNameOutputBuilder()..update(updates))._build();

  _$FlattenedXmlMapWithXmlNameOutput._({this.myMap}) : super._();

  @override
  FlattenedXmlMapWithXmlNameOutput rebuild(
          void Function(FlattenedXmlMapWithXmlNameOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlattenedXmlMapWithXmlNameOutputBuilder toBuilder() =>
      new FlattenedXmlMapWithXmlNameOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlattenedXmlMapWithXmlNameOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FlattenedXmlMapWithXmlNameOutputBuilder
    implements
        Builder<FlattenedXmlMapWithXmlNameOutput,
            FlattenedXmlMapWithXmlNameOutputBuilder> {
  _$FlattenedXmlMapWithXmlNameOutput? _$v;

  _i2.MapBuilder<String, String>? _myMap;
  _i2.MapBuilder<String, String> get myMap =>
      _$this._myMap ??= new _i2.MapBuilder<String, String>();
  set myMap(_i2.MapBuilder<String, String>? myMap) => _$this._myMap = myMap;

  FlattenedXmlMapWithXmlNameOutputBuilder();

  FlattenedXmlMapWithXmlNameOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlattenedXmlMapWithXmlNameOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlattenedXmlMapWithXmlNameOutput;
  }

  @override
  void update(void Function(FlattenedXmlMapWithXmlNameOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlattenedXmlMapWithXmlNameOutput build() => _build();

  _$FlattenedXmlMapWithXmlNameOutput _build() {
    _$FlattenedXmlMapWithXmlNameOutput _$result;
    try {
      _$result = _$v ??
          new _$FlattenedXmlMapWithXmlNameOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlattenedXmlMapWithXmlNameOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
