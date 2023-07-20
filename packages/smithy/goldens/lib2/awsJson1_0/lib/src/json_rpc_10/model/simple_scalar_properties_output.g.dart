// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_scalar_properties_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesOutput extends SimpleScalarPropertiesOutput {
  @override
  final double? floatValue;
  @override
  final double? doubleValue;

  factory _$SimpleScalarPropertiesOutput(
          [void Function(SimpleScalarPropertiesOutputBuilder)? updates]) =>
      (new SimpleScalarPropertiesOutputBuilder()..update(updates))._build();

  _$SimpleScalarPropertiesOutput._({this.floatValue, this.doubleValue})
      : super._();

  @override
  SimpleScalarPropertiesOutput rebuild(
          void Function(SimpleScalarPropertiesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleScalarPropertiesOutputBuilder toBuilder() =>
      new SimpleScalarPropertiesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleScalarPropertiesOutput &&
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

class SimpleScalarPropertiesOutputBuilder
    implements
        Builder<SimpleScalarPropertiesOutput,
            SimpleScalarPropertiesOutputBuilder> {
  _$SimpleScalarPropertiesOutput? _$v;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  SimpleScalarPropertiesOutputBuilder();

  SimpleScalarPropertiesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _floatValue = $v.floatValue;
      _doubleValue = $v.doubleValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleScalarPropertiesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleScalarPropertiesOutput;
  }

  @override
  void update(void Function(SimpleScalarPropertiesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleScalarPropertiesOutput build() => _build();

  _$SimpleScalarPropertiesOutput _build() {
    final _$result = _$v ??
        new _$SimpleScalarPropertiesOutput._(
            floatValue: floatValue, doubleValue: doubleValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
