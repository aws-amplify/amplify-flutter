// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.auto_scaling_policy_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoScalingPolicyUpdate extends AutoScalingPolicyUpdate {
  @override
  final String? policyName;
  @override
  final _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      targetTrackingScalingPolicyConfiguration;

  factory _$AutoScalingPolicyUpdate(
          [void Function(AutoScalingPolicyUpdateBuilder)? updates]) =>
      (new AutoScalingPolicyUpdateBuilder()..update(updates))._build();

  _$AutoScalingPolicyUpdate._(
      {this.policyName, required this.targetTrackingScalingPolicyConfiguration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetTrackingScalingPolicyConfiguration,
        r'AutoScalingPolicyUpdate',
        'targetTrackingScalingPolicyConfiguration');
  }

  @override
  AutoScalingPolicyUpdate rebuild(
          void Function(AutoScalingPolicyUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoScalingPolicyUpdateBuilder toBuilder() =>
      new AutoScalingPolicyUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoScalingPolicyUpdate &&
        policyName == other.policyName &&
        targetTrackingScalingPolicyConfiguration ==
            other.targetTrackingScalingPolicyConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, policyName.hashCode),
        targetTrackingScalingPolicyConfiguration.hashCode));
  }
}

class AutoScalingPolicyUpdateBuilder
    implements
        Builder<AutoScalingPolicyUpdate, AutoScalingPolicyUpdateBuilder> {
  _$AutoScalingPolicyUpdate? _$v;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder?
      _targetTrackingScalingPolicyConfiguration;
  _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder
      get targetTrackingScalingPolicyConfiguration =>
          _$this._targetTrackingScalingPolicyConfiguration ??= new _i2
              .AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder();
  set targetTrackingScalingPolicyConfiguration(
          _i2.AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder?
              targetTrackingScalingPolicyConfiguration) =>
      _$this._targetTrackingScalingPolicyConfiguration =
          targetTrackingScalingPolicyConfiguration;

  AutoScalingPolicyUpdateBuilder() {
    AutoScalingPolicyUpdate._init(this);
  }

  AutoScalingPolicyUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyName = $v.policyName;
      _targetTrackingScalingPolicyConfiguration =
          $v.targetTrackingScalingPolicyConfiguration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoScalingPolicyUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AutoScalingPolicyUpdate;
  }

  @override
  void update(void Function(AutoScalingPolicyUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoScalingPolicyUpdate build() => _build();

  _$AutoScalingPolicyUpdate _build() {
    _$AutoScalingPolicyUpdate _$result;
    try {
      _$result = _$v ??
          new _$AutoScalingPolicyUpdate._(
              policyName: policyName,
              targetTrackingScalingPolicyConfiguration:
                  targetTrackingScalingPolicyConfiguration.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetTrackingScalingPolicyConfiguration';
        targetTrackingScalingPolicyConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AutoScalingPolicyUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
