// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeValue extends AttributeValue {
  @override
  final String? value;

  factory _$AttributeValue([void Function(AttributeValueBuilder)? updates]) =>
      (new AttributeValueBuilder()..update(updates))._build();

  _$AttributeValue._({this.value}) : super._();

  @override
  AttributeValue rebuild(void Function(AttributeValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeValueBuilder toBuilder() =>
      new AttributeValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttributeValueBuilder
    implements Builder<AttributeValue, AttributeValueBuilder> {
  _$AttributeValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  AttributeValueBuilder();

  AttributeValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttributeValue;
  }

  @override
  void update(void Function(AttributeValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeValue build() => _build();

  _$AttributeValue _build() {
    final _$result = _$v ?? new _$AttributeValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
