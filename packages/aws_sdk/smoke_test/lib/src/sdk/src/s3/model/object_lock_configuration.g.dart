// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_lock_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectLockConfiguration extends ObjectLockConfiguration {
  @override
  final _i2.ObjectLockEnabled? objectLockEnabled;
  @override
  final _i3.ObjectLockRule? rule;

  factory _$ObjectLockConfiguration(
          [void Function(ObjectLockConfigurationBuilder)? updates]) =>
      (new ObjectLockConfigurationBuilder()..update(updates))._build();

  _$ObjectLockConfiguration._({this.objectLockEnabled, this.rule}) : super._();

  @override
  ObjectLockConfiguration rebuild(
          void Function(ObjectLockConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectLockConfigurationBuilder toBuilder() =>
      new ObjectLockConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectLockConfiguration &&
        objectLockEnabled == other.objectLockEnabled &&
        rule == other.rule;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, objectLockEnabled.hashCode), rule.hashCode));
  }
}

class ObjectLockConfigurationBuilder
    implements
        Builder<ObjectLockConfiguration, ObjectLockConfigurationBuilder> {
  _$ObjectLockConfiguration? _$v;

  _i2.ObjectLockEnabled? _objectLockEnabled;
  _i2.ObjectLockEnabled? get objectLockEnabled => _$this._objectLockEnabled;
  set objectLockEnabled(_i2.ObjectLockEnabled? objectLockEnabled) =>
      _$this._objectLockEnabled = objectLockEnabled;

  _i3.ObjectLockRuleBuilder? _rule;
  _i3.ObjectLockRuleBuilder get rule =>
      _$this._rule ??= new _i3.ObjectLockRuleBuilder();
  set rule(_i3.ObjectLockRuleBuilder? rule) => _$this._rule = rule;

  ObjectLockConfigurationBuilder() {
    ObjectLockConfiguration._init(this);
  }

  ObjectLockConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectLockEnabled = $v.objectLockEnabled;
      _rule = $v.rule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectLockConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectLockConfiguration;
  }

  @override
  void update(void Function(ObjectLockConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectLockConfiguration build() => _build();

  _$ObjectLockConfiguration _build() {
    _$ObjectLockConfiguration _$result;
    try {
      _$result = _$v ??
          new _$ObjectLockConfiguration._(
              objectLockEnabled: objectLockEnabled, rule: _rule?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rule';
        _rule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ObjectLockConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
