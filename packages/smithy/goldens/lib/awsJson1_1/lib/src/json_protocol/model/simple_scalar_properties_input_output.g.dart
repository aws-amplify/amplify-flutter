// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.simple_scalar_properties_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesInputOutput
    extends SimpleScalarPropertiesInputOutput {
  @override
  final double? doubleValue;
  @override
  final double? floatValue;

  factory _$SimpleScalarPropertiesInputOutput(
          [void Function(SimpleScalarPropertiesInputOutputBuilder)? updates]) =>
      (new SimpleScalarPropertiesInputOutputBuilder()..update(updates))
          ._build();

  _$SimpleScalarPropertiesInputOutput._({this.doubleValue, this.floatValue})
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
        doubleValue == other.doubleValue &&
        floatValue == other.floatValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, doubleValue.hashCode);
    _$hash = $jc(_$hash, floatValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimpleScalarPropertiesInputOutputBuilder
    implements
        Builder<SimpleScalarPropertiesInputOutput,
            SimpleScalarPropertiesInputOutputBuilder> {
  _$SimpleScalarPropertiesInputOutput? _$v;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  SimpleScalarPropertiesInputOutputBuilder() {
    SimpleScalarPropertiesInputOutput._init(this);
  }

  SimpleScalarPropertiesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doubleValue = $v.doubleValue;
      _floatValue = $v.floatValue;
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
            doubleValue: doubleValue, floatValue: floatValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
