// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_nested_union_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlNestedUnionStruct extends XmlNestedUnionStruct {
  @override
  final String? stringValue;
  @override
  final bool? booleanValue;
  @override
  final int? byteValue;
  @override
  final int? shortValue;
  @override
  final int? integerValue;
  @override
  final _i2.Int64? longValue;
  @override
  final double? floatValue;
  @override
  final double? doubleValue;

  factory _$XmlNestedUnionStruct(
          [void Function(XmlNestedUnionStructBuilder)? updates]) =>
      (new XmlNestedUnionStructBuilder()..update(updates))._build();

  _$XmlNestedUnionStruct._(
      {this.stringValue,
      this.booleanValue,
      this.byteValue,
      this.shortValue,
      this.integerValue,
      this.longValue,
      this.floatValue,
      this.doubleValue})
      : super._();

  @override
  XmlNestedUnionStruct rebuild(
          void Function(XmlNestedUnionStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlNestedUnionStructBuilder toBuilder() =>
      new XmlNestedUnionStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlNestedUnionStruct &&
        stringValue == other.stringValue &&
        booleanValue == other.booleanValue &&
        byteValue == other.byteValue &&
        shortValue == other.shortValue &&
        integerValue == other.integerValue &&
        longValue == other.longValue &&
        floatValue == other.floatValue &&
        doubleValue == other.doubleValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stringValue.hashCode);
    _$hash = $jc(_$hash, booleanValue.hashCode);
    _$hash = $jc(_$hash, byteValue.hashCode);
    _$hash = $jc(_$hash, shortValue.hashCode);
    _$hash = $jc(_$hash, integerValue.hashCode);
    _$hash = $jc(_$hash, longValue.hashCode);
    _$hash = $jc(_$hash, floatValue.hashCode);
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlNestedUnionStructBuilder
    implements Builder<XmlNestedUnionStruct, XmlNestedUnionStructBuilder> {
  _$XmlNestedUnionStruct? _$v;

  String? _stringValue;
  String? get stringValue => _$this._stringValue;
  set stringValue(String? stringValue) => _$this._stringValue = stringValue;

  bool? _booleanValue;
  bool? get booleanValue => _$this._booleanValue;
  set booleanValue(bool? booleanValue) => _$this._booleanValue = booleanValue;

  int? _byteValue;
  int? get byteValue => _$this._byteValue;
  set byteValue(int? byteValue) => _$this._byteValue = byteValue;

  int? _shortValue;
  int? get shortValue => _$this._shortValue;
  set shortValue(int? shortValue) => _$this._shortValue = shortValue;

  int? _integerValue;
  int? get integerValue => _$this._integerValue;
  set integerValue(int? integerValue) => _$this._integerValue = integerValue;

  _i2.Int64? _longValue;
  _i2.Int64? get longValue => _$this._longValue;
  set longValue(_i2.Int64? longValue) => _$this._longValue = longValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  XmlNestedUnionStructBuilder();

  XmlNestedUnionStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stringValue = $v.stringValue;
      _booleanValue = $v.booleanValue;
      _byteValue = $v.byteValue;
      _shortValue = $v.shortValue;
      _integerValue = $v.integerValue;
      _longValue = $v.longValue;
      _floatValue = $v.floatValue;
      _doubleValue = $v.doubleValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlNestedUnionStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlNestedUnionStruct;
  }

  @override
  void update(void Function(XmlNestedUnionStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlNestedUnionStruct build() => _build();

  _$XmlNestedUnionStruct _build() {
    final _$result = _$v ??
        new _$XmlNestedUnionStruct._(
            stringValue: stringValue,
            booleanValue: booleanValue,
            byteValue: byteValue,
            shortValue: shortValue,
            integerValue: integerValue,
            longValue: longValue,
            floatValue: floatValue,
            doubleValue: doubleValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
