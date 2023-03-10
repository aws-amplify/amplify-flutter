// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.flattened_xml_map_with_xml_namespace_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlattenedXmlMapWithXmlNamespaceOutput
    extends FlattenedXmlMapWithXmlNamespaceOutput {
  @override
  final _i2.BuiltMap<String, String>? myMap;

  factory _$FlattenedXmlMapWithXmlNamespaceOutput(
          [void Function(FlattenedXmlMapWithXmlNamespaceOutputBuilder)?
              updates]) =>
      (new FlattenedXmlMapWithXmlNamespaceOutputBuilder()..update(updates))
          ._build();

  _$FlattenedXmlMapWithXmlNamespaceOutput._({this.myMap}) : super._();

  @override
  FlattenedXmlMapWithXmlNamespaceOutput rebuild(
          void Function(FlattenedXmlMapWithXmlNamespaceOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlattenedXmlMapWithXmlNamespaceOutputBuilder toBuilder() =>
      new FlattenedXmlMapWithXmlNamespaceOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlattenedXmlMapWithXmlNamespaceOutput &&
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

class FlattenedXmlMapWithXmlNamespaceOutputBuilder
    implements
        Builder<FlattenedXmlMapWithXmlNamespaceOutput,
            FlattenedXmlMapWithXmlNamespaceOutputBuilder> {
  _$FlattenedXmlMapWithXmlNamespaceOutput? _$v;

  _i2.MapBuilder<String, String>? _myMap;
  _i2.MapBuilder<String, String> get myMap =>
      _$this._myMap ??= new _i2.MapBuilder<String, String>();
  set myMap(_i2.MapBuilder<String, String>? myMap) => _$this._myMap = myMap;

  FlattenedXmlMapWithXmlNamespaceOutputBuilder() {
    FlattenedXmlMapWithXmlNamespaceOutput._init(this);
  }

  FlattenedXmlMapWithXmlNamespaceOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlattenedXmlMapWithXmlNamespaceOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlattenedXmlMapWithXmlNamespaceOutput;
  }

  @override
  void update(
      void Function(FlattenedXmlMapWithXmlNamespaceOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlattenedXmlMapWithXmlNamespaceOutput build() => _build();

  _$FlattenedXmlMapWithXmlNamespaceOutput _build() {
    _$FlattenedXmlMapWithXmlNamespaceOutput _$result;
    try {
      _$result = _$v ??
          new _$FlattenedXmlMapWithXmlNamespaceOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlattenedXmlMapWithXmlNamespaceOutput',
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
