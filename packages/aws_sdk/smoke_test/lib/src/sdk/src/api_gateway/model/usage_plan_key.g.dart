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
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
