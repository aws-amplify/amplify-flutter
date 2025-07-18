// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_scalar_properties_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesInputOutput
    extends SimpleScalarPropertiesInputOutput {
  @override
  final String? foo;
  @override
  final String? stringValue;
  @override
  final bool? trueBooleanValue;
  @override
  final bool? falseBooleanValue;
  @override
  final int? byteValue;
  @override
  final int? shortValue;
  @override
  final int? integerValue;
  @override
  final _i3.Int64? longValue;
  @override
  final double? floatValue;
  @override
  final NestedWithNamespace? nested;
  @override
  final double? doubleValue;

  factory _$SimpleScalarPropertiesInputOutput([
    void Function(SimpleScalarPropertiesInputOutputBuilder)? updates,
  ]) => (SimpleScalarPropertiesInputOutputBuilder()..update(updates))._build();

  _$SimpleScalarPropertiesInputOutput._({
    this.foo,
    this.stringValue,
    this.trueBooleanValue,
    this.falseBooleanValue,
    this.byteValue,
    this.shortValue,
    this.integerValue,
    this.longValue,
    this.floatValue,
    this.nested,
    this.doubleValue,
  }) : super._();
  @override
  SimpleScalarPropertiesInputOutput rebuild(
    void Function(SimpleScalarPropertiesInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SimpleScalarPropertiesInputOutputBuilder toBuilder() =>
      SimpleScalarPropertiesInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleScalarPropertiesInputOutput &&
        foo == other.foo &&
        stringValue == other.stringValue &&
        trueBooleanValue == other.trueBooleanValue &&
        falseBooleanValue == other.falseBooleanValue &&
        byteValue == other.byteValue &&
        shortValue == other.shortValue &&
        integerValue == other.integerValue &&
        longValue == other.longValue &&
        floatValue == other.floatValue &&
        nested == other.nested &&
        doubleValue == other.doubleValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, stringValue.hashCode);
    _$hash = $jc(_$hash, trueBooleanValue.hashCode);
    _$hash = $jc(_$hash, falseBooleanValue.hashCode);
    _$hash = $jc(_$hash, byteValue.hashCode);
    _$hash = $jc(_$hash, shortValue.hashCode);
    _$hash = $jc(_$hash, integerValue.hashCode);
    _$hash = $jc(_$hash, longValue.hashCode);
    _$hash = $jc(_$hash, floatValue.hashCode);
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimpleScalarPropertiesInputOutputBuilder
    implements
        Builder<
          SimpleScalarPropertiesInputOutput,
          SimpleScalarPropertiesInputOutputBuilder
        > {
  _$SimpleScalarPropertiesInputOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  String? _stringValue;
  String? get stringValue => _$this._stringValue;
  set stringValue(String? stringValue) => _$this._stringValue = stringValue;

  bool? _trueBooleanValue;
  bool? get trueBooleanValue => _$this._trueBooleanValue;
  set trueBooleanValue(bool? trueBooleanValue) =>
      _$this._trueBooleanValue = trueBooleanValue;

  bool? _falseBooleanValue;
  bool? get falseBooleanValue => _$this._falseBooleanValue;
  set falseBooleanValue(bool? falseBooleanValue) =>
      _$this._falseBooleanValue = falseBooleanValue;

  int? _byteValue;
  int? get byteValue => _$this._byteValue;
  set byteValue(int? byteValue) => _$this._byteValue = byteValue;

  int? _shortValue;
  int? get shortValue => _$this._shortValue;
  set shortValue(int? shortValue) => _$this._shortValue = shortValue;

  int? _integerValue;
  int? get integerValue => _$this._integerValue;
  set integerValue(int? integerValue) => _$this._integerValue = integerValue;

  _i3.Int64? _longValue;
  _i3.Int64? get longValue => _$this._longValue;
  set longValue(_i3.Int64? longValue) => _$this._longValue = longValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  NestedWithNamespaceBuilder? _nested;
  NestedWithNamespaceBuilder get nested =>
      _$this._nested ??= NestedWithNamespaceBuilder();
  set nested(NestedWithNamespaceBuilder? nested) => _$this._nested = nested;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  SimpleScalarPropertiesInputOutputBuilder();

  SimpleScalarPropertiesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _stringValue = $v.stringValue;
      _trueBooleanValue = $v.trueBooleanValue;
      _falseBooleanValue = $v.falseBooleanValue;
      _byteValue = $v.byteValue;
      _shortValue = $v.shortValue;
      _integerValue = $v.integerValue;
      _longValue = $v.longValue;
      _floatValue = $v.floatValue;
      _nested = $v.nested?.toBuilder();
      _doubleValue = $v.doubleValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleScalarPropertiesInputOutput other) {
    _$v = other as _$SimpleScalarPropertiesInputOutput;
  }

  @override
  void update(
    void Function(SimpleScalarPropertiesInputOutputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SimpleScalarPropertiesInputOutput build() => _build();

  _$SimpleScalarPropertiesInputOutput _build() {
    _$SimpleScalarPropertiesInputOutput _$result;
    try {
      _$result =
          _$v ??
          _$SimpleScalarPropertiesInputOutput._(
            foo: foo,
            stringValue: stringValue,
            trueBooleanValue: trueBooleanValue,
            falseBooleanValue: falseBooleanValue,
            byteValue: byteValue,
            shortValue: shortValue,
            integerValue: integerValue,
            longValue: longValue,
            floatValue: floatValue,
            nested: _nested?.build(),
            doubleValue: doubleValue,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SimpleScalarPropertiesInputOutput',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
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
  final NestedWithNamespace? nested;
  @override
  final int? shortValue;
  @override
  final String? stringValue;
  @override
  final bool? trueBooleanValue;

  factory _$SimpleScalarPropertiesInputOutputPayload([
    void Function(SimpleScalarPropertiesInputOutputPayloadBuilder)? updates,
  ]) => (SimpleScalarPropertiesInputOutputPayloadBuilder()..update(updates))
      ._build();

  _$SimpleScalarPropertiesInputOutputPayload._({
    this.byteValue,
    this.doubleValue,
    this.falseBooleanValue,
    this.floatValue,
    this.integerValue,
    this.longValue,
    this.nested,
    this.shortValue,
    this.stringValue,
    this.trueBooleanValue,
  }) : super._();
  @override
  SimpleScalarPropertiesInputOutputPayload rebuild(
    void Function(SimpleScalarPropertiesInputOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SimpleScalarPropertiesInputOutputPayloadBuilder toBuilder() =>
      SimpleScalarPropertiesInputOutputPayloadBuilder()..replace(this);

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
        nested == other.nested &&
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
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jc(_$hash, shortValue.hashCode);
    _$hash = $jc(_$hash, stringValue.hashCode);
    _$hash = $jc(_$hash, trueBooleanValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimpleScalarPropertiesInputOutputPayloadBuilder
    implements
        Builder<
          SimpleScalarPropertiesInputOutputPayload,
          SimpleScalarPropertiesInputOutputPayloadBuilder
        > {
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

  NestedWithNamespaceBuilder? _nested;
  NestedWithNamespaceBuilder get nested =>
      _$this._nested ??= NestedWithNamespaceBuilder();
  set nested(NestedWithNamespaceBuilder? nested) => _$this._nested = nested;

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

  SimpleScalarPropertiesInputOutputPayloadBuilder();

  SimpleScalarPropertiesInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byteValue = $v.byteValue;
      _doubleValue = $v.doubleValue;
      _falseBooleanValue = $v.falseBooleanValue;
      _floatValue = $v.floatValue;
      _integerValue = $v.integerValue;
      _longValue = $v.longValue;
      _nested = $v.nested?.toBuilder();
      _shortValue = $v.shortValue;
      _stringValue = $v.stringValue;
      _trueBooleanValue = $v.trueBooleanValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleScalarPropertiesInputOutputPayload other) {
    _$v = other as _$SimpleScalarPropertiesInputOutputPayload;
  }

  @override
  void update(
    void Function(SimpleScalarPropertiesInputOutputPayloadBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SimpleScalarPropertiesInputOutputPayload build() => _build();

  _$SimpleScalarPropertiesInputOutputPayload _build() {
    _$SimpleScalarPropertiesInputOutputPayload _$result;
    try {
      _$result =
          _$v ??
          _$SimpleScalarPropertiesInputOutputPayload._(
            byteValue: byteValue,
            doubleValue: doubleValue,
            falseBooleanValue: falseBooleanValue,
            floatValue: floatValue,
            integerValue: integerValue,
            longValue: longValue,
            nested: _nested?.build(),
            shortValue: shortValue,
            stringValue: stringValue,
            trueBooleanValue: trueBooleanValue,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SimpleScalarPropertiesInputOutputPayload',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
