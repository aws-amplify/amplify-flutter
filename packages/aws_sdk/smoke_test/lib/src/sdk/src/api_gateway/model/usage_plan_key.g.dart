// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.usage_plan_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsagePlanKey extends UsagePlanKey {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? value;

  factory _$UsagePlanKey([void Function(UsagePlanKeyBuilder)? updates]) =>
      (new UsagePlanKeyBuilder()..update(updates))._build();

  _$UsagePlanKey._({this.id, this.name, this.type, this.value}) : super._();

  @override
  UsagePlanKey rebuild(void Function(UsagePlanKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsagePlanKeyBuilder toBuilder() => new UsagePlanKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsagePlanKey &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), name.hashCode), type.hashCode),
        value.hashCode));
  }
}

class UsagePlanKeyBuilder
    implements Builder<UsagePlanKey, UsagePlanKeyBuilder> {
  _$UsagePlanKey? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  UsagePlanKeyBuilder() {
    UsagePlanKey._init(this);
  }

  UsagePlanKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsagePlanKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsagePlanKey;
  }

  @override
  void update(void Function(UsagePlanKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsagePlanKey build() => _build();

  _$UsagePlanKey _build() {
    final _$result = _$v ??
        new _$UsagePlanKey._(id: id, name: name, type: type, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
