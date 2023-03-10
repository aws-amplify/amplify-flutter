// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_lock_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectLockRule extends ObjectLockRule {
  @override
  final _i2.DefaultRetention? defaultRetention;

  factory _$ObjectLockRule([void Function(ObjectLockRuleBuilder)? updates]) =>
      (new ObjectLockRuleBuilder()..update(updates))._build();

  _$ObjectLockRule._({this.defaultRetention}) : super._();

  @override
  ObjectLockRule rebuild(void Function(ObjectLockRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectLockRuleBuilder toBuilder() =>
      new ObjectLockRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectLockRule &&
        defaultRetention == other.defaultRetention;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultRetention.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ObjectLockRuleBuilder
    implements Builder<ObjectLockRule, ObjectLockRuleBuilder> {
  _$ObjectLockRule? _$v;

  _i2.DefaultRetentionBuilder? _defaultRetention;
  _i2.DefaultRetentionBuilder get defaultRetention =>
      _$this._defaultRetention ??= new _i2.DefaultRetentionBuilder();
  set defaultRetention(_i2.DefaultRetentionBuilder? defaultRetention) =>
      _$this._defaultRetention = defaultRetention;

  ObjectLockRuleBuilder() {
    ObjectLockRule._init(this);
  }

  ObjectLockRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultRetention = $v.defaultRetention?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectLockRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectLockRule;
  }

  @override
  void update(void Function(ObjectLockRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectLockRule build() => _build();

  _$ObjectLockRule _build() {
    _$ObjectLockRule _$result;
    try {
      _$result = _$v ??
          new _$ObjectLockRule._(defaultRetention: _defaultRetention?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultRetention';
        _defaultRetention?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ObjectLockRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
