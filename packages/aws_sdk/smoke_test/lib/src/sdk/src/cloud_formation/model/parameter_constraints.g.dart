// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.parameter_constraints;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParameterConstraints extends ParameterConstraints {
  @override
  final _i2.BuiltList<String>? allowedValues;

  factory _$ParameterConstraints(
          [void Function(ParameterConstraintsBuilder)? updates]) =>
      (new ParameterConstraintsBuilder()..update(updates))._build();

  _$ParameterConstraints._({this.allowedValues}) : super._();

  @override
  ParameterConstraints rebuild(
          void Function(ParameterConstraintsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParameterConstraintsBuilder toBuilder() =>
      new ParameterConstraintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParameterConstraints &&
        allowedValues == other.allowedValues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowedValues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ParameterConstraintsBuilder
    implements Builder<ParameterConstraints, ParameterConstraintsBuilder> {
  _$ParameterConstraints? _$v;

  _i2.ListBuilder<String>? _allowedValues;
  _i2.ListBuilder<String> get allowedValues =>
      _$this._allowedValues ??= new _i2.ListBuilder<String>();
  set allowedValues(_i2.ListBuilder<String>? allowedValues) =>
      _$this._allowedValues = allowedValues;

  ParameterConstraintsBuilder() {
    ParameterConstraints._init(this);
  }

  ParameterConstraintsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowedValues = $v.allowedValues?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParameterConstraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParameterConstraints;
  }

  @override
  void update(void Function(ParameterConstraintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParameterConstraints build() => _build();

  _$ParameterConstraints _build() {
    _$ParameterConstraints _$result;
    try {
      _$result = _$v ??
          new _$ParameterConstraints._(allowedValues: _allowedValues?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedValues';
        _allowedValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParameterConstraints', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
