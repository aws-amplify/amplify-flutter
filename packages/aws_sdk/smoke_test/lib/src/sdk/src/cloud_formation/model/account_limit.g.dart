// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.account_limit;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountLimit extends AccountLimit {
  @override
  final String? name;
  @override
  final int? value;

  factory _$AccountLimit([void Function(AccountLimitBuilder)? updates]) =>
      (new AccountLimitBuilder()..update(updates))._build();

  _$AccountLimit._({this.name, this.value}) : super._();

  @override
  AccountLimit rebuild(void Function(AccountLimitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountLimitBuilder toBuilder() => new AccountLimitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountLimit && name == other.name && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccountLimitBuilder
    implements Builder<AccountLimit, AccountLimitBuilder> {
  _$AccountLimit? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  AccountLimitBuilder() {
    AccountLimit._init(this);
  }

  AccountLimitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountLimit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountLimit;
  }

  @override
  void update(void Function(AccountLimitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountLimit build() => _build();

  _$AccountLimit _build() {
    final _$result = _$v ?? new _$AccountLimit._(name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
