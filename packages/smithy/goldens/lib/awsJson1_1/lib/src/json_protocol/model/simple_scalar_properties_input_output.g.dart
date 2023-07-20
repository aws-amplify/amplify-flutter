// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_scalar_properties_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesInputOutput
    extends SimpleScalarPropertiesInputOutput {
  @override
  final double? floatValue;
  @override
  final double? doubleValue;

  factory _$SimpleScalarPropertiesInputOutput(
          [void Function(SimpleScalarPropertiesInputOutputBuilder)? updates]) =>
      (new SimpleScalarPropertiesInputOutputBuilder()..update(updates))
          ._build();

  _$SimpleScalarPropertiesInputOutput._({this.floatValue, this.doubleValue})
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
        floatValue == other.floatValue &&
        doubleValue == other.doubleValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, floatValue.hashCode);
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimpleScalarPropertiesInputOutputBuilder
    implements
        Builder<SimpleScalarPropertiesInputOutput,
            SimpleScalarPropertiesInputOutputBuilder> {
  _$SimpleScalarPropertiesInputOutput? _$v;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  SimpleScalarPropertiesInputOutputBuilder();

  SimpleScalarPropertiesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _floatValue = $v.floatValue;
      _doubleValue = $v.doubleValue;
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
            floatValue: floatValue, doubleValue: doubleValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
