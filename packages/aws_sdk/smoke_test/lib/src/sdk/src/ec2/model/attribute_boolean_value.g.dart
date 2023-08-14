// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_boolean_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeBooleanValue extends AttributeBooleanValue {
  @override
  final bool value;

  factory _$AttributeBooleanValue(
          [void Function(AttributeBooleanValueBuilder)? updates]) =>
      (new AttributeBooleanValueBuilder()..update(updates))._build();

  _$AttributeBooleanValue._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, r'AttributeBooleanValue', 'value');
  }

  @override
  AttributeBooleanValue rebuild(
          void Function(AttributeBooleanValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeBooleanValueBuilder toBuilder() =>
      new AttributeBooleanValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeBooleanValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttributeBooleanValueBuilder
    implements Builder<AttributeBooleanValue, AttributeBooleanValueBuilder> {
  _$AttributeBooleanValue? _$v;

  bool? _value;
  bool? get value => _$this._value;
  set value(bool? value) => _$this._value = value;

  AttributeBooleanValueBuilder() {
    AttributeBooleanValue._init(this);
  }

  AttributeBooleanValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeBooleanValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttributeBooleanValue;
  }

  @override
  void update(void Function(AttributeBooleanValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeBooleanValue build() => _build();

  _$AttributeBooleanValue _build() {
    final _$result = _$v ??
        new _$AttributeBooleanValue._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'AttributeBooleanValue', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
