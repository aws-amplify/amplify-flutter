// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.xml_nested_union_struct;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlNestedUnionStruct extends XmlNestedUnionStruct {
  @override
  final bool? booleanValue;
  @override
  final int? byteValue;
  @override
  final double? doubleValue;
  @override
  final double? floatValue;
  @override
  final int? integerValue;
  @override
  final _i2.Int64? longValue;
  @override
  final int? shortValue;
  @override
  final String? stringValue;

  factory _$XmlNestedUnionStruct(
          [void Function(XmlNestedUnionStructBuilder)? updates]) =>
      (new XmlNestedUnionStructBuilder()..update(updates))._build();

  _$XmlNestedUnionStruct._(
      {this.booleanValue,
      this.byteValue,
      this.doubleValue,
      this.floatValue,
      this.integerValue,
      this.longValue,
      this.shortValue,
      this.stringValue})
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
        booleanValue == other.booleanValue &&
        byteValue == other.byteValue &&
        doubleValue == other.doubleValue &&
        floatValue == other.floatValue &&
        integerValue == other.integerValue &&
        longValue == other.longValue &&
        shortValue == other.shortValue &&
        stringValue == other.stringValue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, booleanValue.hashCode),
                                byteValue.hashCode),
                            doubleValue.hashCode),
                        floatValue.hashCode),
                    integerValue.hashCode),
                longValue.hashCode),
            shortValue.hashCode),
        stringValue.hashCode));
  }
}

class XmlNestedUnionStructBuilder
    implements Builder<XmlNestedUnionStruct, XmlNestedUnionStructBuilder> {
  _$XmlNestedUnionStruct? _$v;

  bool? _booleanValue;
  bool? get booleanValue => _$this._booleanValue;
  set booleanValue(bool? booleanValue) => _$this._booleanValue = booleanValue;

  int? _byteValue;
  int? get byteValue => _$this._byteValue;
  set byteValue(int? byteValue) => _$this._byteValue = byteValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  int? _integerValue;
  int? get integerValue => _$this._integerValue;
  set integerValue(int? integerValue) => _$this._integerValue = integerValue;

  _i2.Int64? _longValue;
  _i2.Int64? get longValue => _$this._longValue;
  set longValue(_i2.Int64? longValue) => _$this._longValue = longValue;

  int? _shortValue;
  int? get shortValue => _$this._shortValue;
  set shortValue(int? shortValue) => _$this._shortValue = shortValue;

  String? _stringValue;
  String? get stringValue => _$this._stringValue;
  set stringValue(String? stringValue) => _$this._stringValue = stringValue;

  XmlNestedUnionStructBuilder() {
    XmlNestedUnionStruct._init(this);
  }

  XmlNestedUnionStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booleanValue = $v.booleanValue;
      _byteValue = $v.byteValue;
      _doubleValue = $v.doubleValue;
      _floatValue = $v.floatValue;
      _integerValue = $v.integerValue;
      _longValue = $v.longValue;
      _shortValue = $v.shortValue;
      _stringValue = $v.stringValue;
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
            booleanValue: booleanValue,
            byteValue: byteValue,
            doubleValue: doubleValue,
            floatValue: floatValue,
            integerValue: integerValue,
            longValue: longValue,
            shortValue: shortValue,
            stringValue: stringValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
