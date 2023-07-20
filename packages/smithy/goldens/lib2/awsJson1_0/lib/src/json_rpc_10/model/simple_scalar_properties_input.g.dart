// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_scalar_properties_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesInput extends SimpleScalarPropertiesInput {
  @override
  final double? floatValue;
  @override
  final double? doubleValue;

  factory _$SimpleScalarPropertiesInput(
          [void Function(SimpleScalarPropertiesInputBuilder)? updates]) =>
      (new SimpleScalarPropertiesInputBuilder()..update(updates))._build();

  _$SimpleScalarPropertiesInput._({this.floatValue, this.doubleValue})
      : super._();

  @override
  SimpleScalarPropertiesInput rebuild(
          void Function(SimpleScalarPropertiesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleScalarPropertiesInputBuilder toBuilder() =>
      new SimpleScalarPropertiesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleScalarPropertiesInput &&
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

class SimpleScalarPropertiesInputBuilder
    implements
        Builder<SimpleScalarPropertiesInput,
            SimpleScalarPropertiesInputBuilder> {
  _$SimpleScalarPropertiesInput? _$v;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  SimpleScalarPropertiesInputBuilder();

  SimpleScalarPropertiesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _floatValue = $v.floatValue;
      _doubleValue = $v.doubleValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleScalarPropertiesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleScalarPropertiesInput;
  }

  @override
  void update(void Function(SimpleScalarPropertiesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleScalarPropertiesInput build() => _build();

  _$SimpleScalarPropertiesInput _build() {
    final _$result = _$v ??
        new _$SimpleScalarPropertiesInput._(
            floatValue: floatValue, doubleValue: doubleValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
