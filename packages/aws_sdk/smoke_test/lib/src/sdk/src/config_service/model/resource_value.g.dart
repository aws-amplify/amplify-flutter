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
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
