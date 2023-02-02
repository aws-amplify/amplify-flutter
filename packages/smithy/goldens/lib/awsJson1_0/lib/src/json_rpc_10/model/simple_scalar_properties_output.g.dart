// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0_v1.json_rpc_10.model.simple_scalar_properties_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesOutput extends SimpleScalarPropertiesOutput {
  @override
  final double? doubleValue;
  @override
  final double? floatValue;

  factory _$SimpleScalarPropertiesOutput(
          [void Function(SimpleScalarPropertiesOutputBuilder)? updates]) =>
      (new SimpleScalarPropertiesOutputBuilder()..update(updates))._build();

  _$SimpleScalarPropertiesOutput._({this.doubleValue, this.floatValue})
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

class SimpleScalarPropertiesOutputBuilder
    implements
        Builder<SimpleScalarPropertiesOutput,
            SimpleScalarPropertiesOutputBuilder> {
  _$SimpleScalarPropertiesOutput? _$v;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  SimpleScalarPropertiesOutputBuilder() {
    SimpleScalarPropertiesOutput._init(this);
  }

  SimpleScalarPropertiesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doubleValue = $v.doubleValue;
      _floatValue = $v.floatValue;
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
            doubleValue: doubleValue, floatValue: floatValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
