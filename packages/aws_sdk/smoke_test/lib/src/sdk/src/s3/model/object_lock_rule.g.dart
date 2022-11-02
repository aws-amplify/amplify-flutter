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
    return $jf($jc(0, defaultRetention.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
