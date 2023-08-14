// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_lock_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectLockConfiguration extends ObjectLockConfiguration {
  @override
  final ObjectLockEnabled? objectLockEnabled;
  @override
  final ObjectLockRule? rule;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, objectLockEnabled.hashCode);
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ObjectLockConfigurationBuilder
    implements
        Builder<ObjectLockConfiguration, ObjectLockConfigurationBuilder> {
  _$ObjectLockConfiguration? _$v;

  ObjectLockEnabled? _objectLockEnabled;
  ObjectLockEnabled? get objectLockEnabled => _$this._objectLockEnabled;
  set objectLockEnabled(ObjectLockEnabled? objectLockEnabled) =>
      _$this._objectLockEnabled = objectLockEnabled;

  ObjectLockRuleBuilder? _rule;
  ObjectLockRuleBuilder get rule =>
      _$this._rule ??= new ObjectLockRuleBuilder();
  set rule(ObjectLockRuleBuilder? rule) => _$this._rule = rule;

  ObjectLockConfigurationBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
