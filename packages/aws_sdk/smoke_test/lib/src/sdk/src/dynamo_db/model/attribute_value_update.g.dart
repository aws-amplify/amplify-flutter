// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_value_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeValueUpdate extends AttributeValueUpdate {
  @override
  final AttributeValue? value;
  @override
  final AttributeAction? action;

  factory _$AttributeValueUpdate(
          [void Function(AttributeValueUpdateBuilder)? updates]) =>
      (new AttributeValueUpdateBuilder()..update(updates))._build();

  _$AttributeValueUpdate._({this.value, this.action}) : super._();

  @override
  AttributeValueUpdate rebuild(
          void Function(AttributeValueUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeValueUpdateBuilder toBuilder() =>
      new AttributeValueUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeValueUpdate &&
        value == other.value &&
        action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttributeValueUpdateBuilder
    implements Builder<AttributeValueUpdate, AttributeValueUpdateBuilder> {
  _$AttributeValueUpdate? _$v;

  AttributeValue? _value;
  AttributeValue? get value => _$this._value;
  set value(AttributeValue? value) => _$this._value = value;

  AttributeAction? _action;
  AttributeAction? get action => _$this._action;
  set action(AttributeAction? action) => _$this._action = action;

  AttributeValueUpdateBuilder();

  AttributeValueUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeValueUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttributeValueUpdate;
  }

  @override
  void update(void Function(AttributeValueUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeValueUpdate build() => _build();

  _$AttributeValueUpdate _build() {
    final _$result =
        _$v ?? new _$AttributeValueUpdate._(value: value, action: action);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
