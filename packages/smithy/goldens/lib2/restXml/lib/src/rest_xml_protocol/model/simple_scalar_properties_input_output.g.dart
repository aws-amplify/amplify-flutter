// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.simple_scalar_properties_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesInputOutput
    extends SimpleScalarPropertiesInputOutput {
  @override
  final int? byteValue;
  @override
  final double? doubleValue;
  @override
  final bool? falseBooleanValue;
  @override
  final double? floatValue;
  @override
  final String? foo;
  @override
  final int? integerValue;
  @override
  final _i3.Int64? longValue;
  @override
  final int? shortValue;
  @override
  final String? stringValue;
  @override
  final bool? trueBooleanValue;

  factory _$SimpleScalarPropertiesInputOutput(
          [void Function(SimpleScalarPropertiesInputOutputBuilder)? updates]) =>
      (new SimpleScalarPropertiesInputOutputBuilder()..update(updates))
          ._build();

  _$SimpleScalarPropertiesInputOutput._(
      {this.byteValue,
      this.doubleValue,
      this.falseBooleanValue,
      this.floatValue,
      this.foo,
      this.integerValue,
      this.longValue,
      this.shortValue,
      this.stringValue,
      this.trueBooleanValue})
      : super._();

  @override
  SimpleScalarPropertiesInputOutput rebuild(
          void Function(SimpleScalarPropertiesInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleScalarPropertiesInputOutputBuilder toBuilder() =>
      new SimpleScalarPropertiesInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleScalarPropertiesInputOutput &&
        byteValue == other.byteValue &&
        doubleValue == other.doubleValue &&
        falseBooleanValue == other.falseBooleanValue &&
        floatValue == other.floatValue &&
        foo == other.foo &&
        integerValue == other.integerValue &&
        longValue == other.longValue &&
        shortValue == other.shortValue &&
        stringValue == other.stringValue &&
        trueBooleanValue == other.trueBooleanValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byteValue.hashCode);
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jc(_$hash, falseBooleanValue.hashCode);
    _$hash = $jc(_$hash, floatValue.hashCode);
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, integerValue.hashCode);
    _$hash = $jc(_$hash, longValue.hashCode);
    _$hash = $jc(_$hash, shortValue.hashCode);
    _$hash = $jc(_$hash, stringValue.hashCode);
    _$hash = $jc(_$hash, trueBooleanValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimpleScalarPropertiesInputOutputBuilder
    implements
        Builder<SimpleScalarPropertiesInputOutput,
            SimpleScalarPropertiesInputOutputBuilder> {
  _$SimpleScalarPropertiesInputOutput? _$v;

  int? _byteValue;
  int? get byteValue => _$this._byteValue;
  set byteValue(int? byteValue) => _$this._byteValue = byteValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  bool? _falseBooleanValue;
  bool? get falseBooleanValue => _$this._falseBooleanValue;
  set falseBooleanValue(bool? falseBooleanValue) =>
      _$this._falseBooleanValue = falseBooleanValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  int? _integerValue;
  int? get integerValue => _$this._integerValue;
  set integerValue(int? integerValue) => _$this._integerValue = integerValue;

  _i3.Int64? _longValue;
  _i3.Int64? get longValue => _$this._longValue;
  set longValue(_i3.Int64? longValue) => _$this._longValue = longValue;

  int? _shortValue;
  int? get shortValue => _$this._shortValue;
  set shortValue(int? shortValue) => _$this._shortValue = shortValue;

  String? _stringValue;
  String? get stringValue => _$this._stringValue;
  set stringValue(String? stringValue) => _$this._stringValue = stringValue;

  bool? _trueBooleanValue;
  bool? get trueBooleanValue => _$this._trueBooleanValue;
  set trueBooleanValue(bool? trueBooleanValue) =>
      _$this._trueBooleanValue = trueBooleanValue;

  SimpleScalarPropertiesInputOutputBuilder() {
    SimpleScalarPropertiesInputOutput._init(this);
  }

  SimpleScalarPropertiesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byteValue = $v.byteValue;
      _doubleValue = $v.doubleValue;
      _falseBooleanValue = $v.falseBooleanValue;
      _floatValue = $v.floatValue;
      _foo = $v.foo;
      _integerValue = $v.integerValue;
      _longValue = $v.longValue;
      _shortValue = $v.shortValue;
      _stringValue = $v.stringValue;
      _trueBooleanValue = $v.trueBooleanValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleScalarPropertiesInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleScalarPropertiesInputOutput;
  }

  @override
  void update(
      void Function(SimpleScalarPropertiesInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleScalarPropertiesInputOutput build() => _build();

  _$SimpleScalarPropertiesInputOutput _build() {
    final _$result = _$v ??
        new _$SimpleScalarPropertiesInputOutput._(
            byteValue: byteValue,
            doubleValue: doubleValue,
            falseBooleanValue: falseBooleanValue,
            floatValue: floatValue,
            foo: foo,
            integerValue: integerValue,
            longValue: longValue,
            shortValue: shortValue,
            stringValue: stringValue,
            trueBooleanValue: trueBooleanValue);
    replace(_$result);
    return _$result;
  }
}

class _$SimpleScalarPropertiesInputOutputPayload
    extends SimpleScalarPropertiesInputOutputPayload {
  @override
  final int? byteValue;
  @override
  final double? doubleValue;
  @override
  final bool? falseBooleanValue;
  @override
  final double? floatValue;
  @override
  final int? integerValue;
  @override
  final _i3.Int64? longValue;
  @override
  final int? shortValue;
  @override
  final String? stringValue;
  @override
  final bool? trueBooleanValue;

  factory _$SimpleScalarPropertiesInputOutputPayload(
          [void Function(SimpleScalarPropertiesInputOutputPayloadBuilder)?
              updates]) =>
      (new SimpleScalarPropertiesInputOutputPayloadBuilder()..update(updates))
          ._build();

  _$SimpleScalarPropertiesInputOutputPayload._(
      {this.byteValue,
      this.doubleValue,
      this.falseBooleanValue,
      this.floatValue,
      this.integerValue,
      this.longValue,
      this.shortValue,
      this.stringValue,
      this.trueBooleanValue})
      : super._();

  @override
  SimpleScalarPropertiesInputOutputPayload rebuild(
          void Function(SimpleScalarPropertiesInputOutputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleScalarPropertiesInputOutputPayloadBuilder toBuilder() =>
      new SimpleScalarPropertiesInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleScalarPropertiesInputOutputPayload &&
        byteValue == other.byteValue &&
        doubleValue == other.doubleValue &&
        falseBooleanValue == other.falseBooleanValue &&
        floatValue == other.floatValue &&
        integerValue == other.integerValue &&
        longValue == other.longValue &&
        shortValue == other.shortValue &&
        stringValue == other.stringValue &&
        trueBooleanValue == other.trueBooleanValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byteValue.hashCode);
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jc(_$hash, falseBooleanValue.hashCode);
    _$hash = $jc(_$hash, floatValue.hashCode);
    _$hash = $jc(_$hash, integerValue.hashCode);
    _$hash = $jc(_$hash, longValue.hashCode);
    _$hash = $jc(_$hash, shortValue.hashCode);
    _$hash = $jc(_$hash, stringValue.hashCode);
    _$hash = $jc(_$hash, trueBooleanValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimpleScalarPropertiesInputOutputPayloadBuilder
    implements
        Builder<SimpleScalarPropertiesInputOutputPayload,
            SimpleScalarPropertiesInputOutputPayloadBuilder> {
  _$SimpleScalarPropertiesInputOutputPayload? _$v;

  int? _byteValue;
  int? get byteValue => _$this._byteValue;
  set byteValue(int? byteValue) => _$this._byteValue = byteValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  bool? _falseBooleanValue;
  bool? get falseBooleanValue => _$this._falseBooleanValue;
  set falseBooleanValue(bool? falseBooleanValue) =>
      _$this._falseBooleanValue = falseBooleanValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  int? _integerValue;
  int? get integerValue => _$this._integerValue;
  set integerValue(int? integerValue) => _$this._integerValue = integerValue;

  _i3.Int64? _longValue;
  _i3.Int64? get longValue => _$this._longValue;
  set longValue(_i3.Int64? longValue) => _$this._longValue = longValue;

  int? _shortValue;
  int? get shortValue => _$this._shortValue;
  set shortValue(int? shortValue) => _$this._shortValue = shortValue;

  String? _stringValue;
  String? get stringValue => _$this._stringValue;
  set stringValue(String? stringValue) => _$this._stringValue = stringValue;

  bool? _trueBooleanValue;
  bool? get trueBooleanValue => _$this._trueBooleanValue;
  set trueBooleanValue(bool? trueBooleanValue) =>
      _$this._trueBooleanValue = trueBooleanValue;

  SimpleScalarPropertiesInputOutputPayloadBuilder() {
    SimpleScalarPropertiesInputOutputPayload._init(this);
  }

  SimpleScalarPropertiesInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byteValue = $v.byteValue;
      _doubleValue = $v.doubleValue;
      _falseBooleanValue = $v.falseBooleanValue;
      _floatValue = $v.floatValue;
      _integerValue = $v.integerValue;
      _longValue = $v.longValue;
      _shortValue = $v.shortValue;
      _stringValue = $v.stringValue;
      _trueBooleanValue = $v.trueBooleanValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleScalarPropertiesInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleScalarPropertiesInputOutputPayload;
  }

  @override
  void update(
      void Function(SimpleScalarPropertiesInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleScalarPropertiesInputOutputPayload build() => _build();

  _$SimpleScalarPropertiesInputOutputPayload _build() {
    final _$result = _$v ??
        new _$SimpleScalarPropertiesInputOutputPayload._(
            byteValue: byteValue,
            doubleValue: doubleValue,
            falseBooleanValue: falseBooleanValue,
            floatValue: floatValue,
            integerValue: integerValue,
            longValue: longValue,
            shortValue: shortValue,
            stringValue: stringValue,
            trueBooleanValue: trueBooleanValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
