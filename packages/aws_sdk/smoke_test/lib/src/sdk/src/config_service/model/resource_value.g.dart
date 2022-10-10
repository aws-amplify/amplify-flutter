// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_value;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceValue extends ResourceValue {
  @override
  final _i2.ResourceValueType value;

  factory _$ResourceValue([void Function(ResourceValueBuilder)? updates]) =>
      (new ResourceValueBuilder()..update(updates))._build();

  _$ResourceValue._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'ResourceValue', 'value');
  }

  @override
  ResourceValue rebuild(void Function(ResourceValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceValueBuilder toBuilder() => new ResourceValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceValue && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }
}

class ResourceValueBuilder
    implements Builder<ResourceValue, ResourceValueBuilder> {
  _$ResourceValue? _$v;

  _i2.ResourceValueType? _value;
  _i2.ResourceValueType? get value => _$this._value;
  set value(_i2.ResourceValueType? value) => _$this._value = value;

  ResourceValueBuilder() {
    ResourceValue._init(this);
  }

  ResourceValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceValue;
  }

  @override
  void update(void Function(ResourceValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceValue build() => _build();

  _$ResourceValue _build() {
    final _$result = _$v ??
        new _$ResourceValue._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'ResourceValue', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
