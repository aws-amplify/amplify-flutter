// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_parameter_value;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationParameterValue extends RemediationParameterValue {
  @override
  final _i2.ResourceValue? resourceValue;
  @override
  final _i3.StaticValue? staticValue;

  factory _$RemediationParameterValue(
          [void Function(RemediationParameterValueBuilder)? updates]) =>
      (new RemediationParameterValueBuilder()..update(updates))._build();

  _$RemediationParameterValue._({this.resourceValue, this.staticValue})
      : super._();

  @override
  RemediationParameterValue rebuild(
          void Function(RemediationParameterValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemediationParameterValueBuilder toBuilder() =>
      new RemediationParameterValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemediationParameterValue &&
        resourceValue == other.resourceValue &&
        staticValue == other.staticValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceValue.hashCode);
    _$hash = $jc(_$hash, staticValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationParameterValueBuilder
    implements
        Builder<RemediationParameterValue, RemediationParameterValueBuilder> {
  _$RemediationParameterValue? _$v;

  _i2.ResourceValueBuilder? _resourceValue;
  _i2.ResourceValueBuilder get resourceValue =>
      _$this._resourceValue ??= new _i2.ResourceValueBuilder();
  set resourceValue(_i2.ResourceValueBuilder? resourceValue) =>
      _$this._resourceValue = resourceValue;

  _i3.StaticValueBuilder? _staticValue;
  _i3.StaticValueBuilder get staticValue =>
      _$this._staticValue ??= new _i3.StaticValueBuilder();
  set staticValue(_i3.StaticValueBuilder? staticValue) =>
      _$this._staticValue = staticValue;

  RemediationParameterValueBuilder() {
    RemediationParameterValue._init(this);
  }

  RemediationParameterValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceValue = $v.resourceValue?.toBuilder();
      _staticValue = $v.staticValue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemediationParameterValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemediationParameterValue;
  }

  @override
  void update(void Function(RemediationParameterValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemediationParameterValue build() => _build();

  _$RemediationParameterValue _build() {
    _$RemediationParameterValue _$result;
    try {
      _$result = _$v ??
          new _$RemediationParameterValue._(
              resourceValue: _resourceValue?.build(),
              staticValue: _staticValue?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceValue';
        _resourceValue?.build();
        _$failedField = 'staticValue';
        _staticValue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RemediationParameterValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
