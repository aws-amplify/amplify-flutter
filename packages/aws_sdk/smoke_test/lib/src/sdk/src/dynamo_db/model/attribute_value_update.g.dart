// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.attribute_value_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeValueUpdate extends AttributeValueUpdate {
  @override
  final _i2.AttributeAction? action;
  @override
  final _i3.AttributeValue? value;

  factory _$AttributeValueUpdate(
          [void Function(AttributeValueUpdateBuilder)? updates]) =>
      (new AttributeValueUpdateBuilder()..update(updates))._build();

  _$AttributeValueUpdate._({this.action, this.value}) : super._();

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
        action == other.action &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, action.hashCode), value.hashCode));
  }
}

class AttributeValueUpdateBuilder
    implements Builder<AttributeValueUpdate, AttributeValueUpdateBuilder> {
  _$AttributeValueUpdate? _$v;

  _i2.AttributeAction? _action;
  _i2.AttributeAction? get action => _$this._action;
  set action(_i2.AttributeAction? action) => _$this._action = action;

  _i3.AttributeValue? _value;
  _i3.AttributeValue? get value => _$this._value;
  set value(_i3.AttributeValue? value) => _$this._value = value;

  AttributeValueUpdateBuilder() {
    AttributeValueUpdate._init(this);
  }

  AttributeValueUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _value = $v.value;
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
        _$v ?? new _$AttributeValueUpdate._(action: action, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
