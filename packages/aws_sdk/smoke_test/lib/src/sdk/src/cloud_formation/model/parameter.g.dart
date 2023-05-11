// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.parameter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Parameter extends Parameter {
  @override
  final String? parameterKey;
  @override
  final String? parameterValue;
  @override
  final bool? usePreviousValue;
  @override
  final String? resolvedValue;

  factory _$Parameter([void Function(ParameterBuilder)? updates]) =>
      (new ParameterBuilder()..update(updates))._build();

  _$Parameter._(
      {this.parameterKey,
      this.parameterValue,
      this.usePreviousValue,
      this.resolvedValue})
      : super._();

  @override
  Parameter rebuild(void Function(ParameterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParameterBuilder toBuilder() => new ParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Parameter &&
        parameterKey == other.parameterKey &&
        parameterValue == other.parameterValue &&
        usePreviousValue == other.usePreviousValue &&
        resolvedValue == other.resolvedValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameterKey.hashCode);
    _$hash = $jc(_$hash, parameterValue.hashCode);
    _$hash = $jc(_$hash, usePreviousValue.hashCode);
    _$hash = $jc(_$hash, resolvedValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ParameterBuilder implements Builder<Parameter, ParameterBuilder> {
  _$Parameter? _$v;

  String? _parameterKey;
  String? get parameterKey => _$this._parameterKey;
  set parameterKey(String? parameterKey) => _$this._parameterKey = parameterKey;

  String? _parameterValue;
  String? get parameterValue => _$this._parameterValue;
  set parameterValue(String? parameterValue) =>
      _$this._parameterValue = parameterValue;

  bool? _usePreviousValue;
  bool? get usePreviousValue => _$this._usePreviousValue;
  set usePreviousValue(bool? usePreviousValue) =>
      _$this._usePreviousValue = usePreviousValue;

  String? _resolvedValue;
  String? get resolvedValue => _$this._resolvedValue;
  set resolvedValue(String? resolvedValue) =>
      _$this._resolvedValue = resolvedValue;

  ParameterBuilder() {
    Parameter._init(this);
  }

  ParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameterKey = $v.parameterKey;
      _parameterValue = $v.parameterValue;
      _usePreviousValue = $v.usePreviousValue;
      _resolvedValue = $v.resolvedValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Parameter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Parameter;
  }

  @override
  void update(void Function(ParameterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Parameter build() => _build();

  _$Parameter _build() {
    final _$result = _$v ??
        new _$Parameter._(
            parameterKey: parameterKey,
            parameterValue: parameterValue,
            usePreviousValue: usePreviousValue,
            resolvedValue: resolvedValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
