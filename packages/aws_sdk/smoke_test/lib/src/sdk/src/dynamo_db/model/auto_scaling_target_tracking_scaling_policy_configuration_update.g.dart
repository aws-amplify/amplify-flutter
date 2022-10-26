// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.auto_scaling_target_tracking_scaling_policy_configuration_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    extends AutoScalingTargetTrackingScalingPolicyConfigurationUpdate {
  @override
  final bool? disableScaleIn;
  @override
  final int? scaleInCooldown;
  @override
  final int? scaleOutCooldown;
  @override
  final double targetValue;

  factory _$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate(
          [void Function(
                  AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder)?
              updates]) =>
      (new AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder()
            ..update(updates))
          ._build();

  _$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate._(
      {this.disableScaleIn,
      this.scaleInCooldown,
      this.scaleOutCooldown,
      required this.targetValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetValue,
        r'AutoScalingTargetTrackingScalingPolicyConfigurationUpdate',
        'targetValue');
  }

  @override
  AutoScalingTargetTrackingScalingPolicyConfigurationUpdate rebuild(
          void Function(
                  AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder
      toBuilder() =>
          new AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoScalingTargetTrackingScalingPolicyConfigurationUpdate &&
        disableScaleIn == other.disableScaleIn &&
        scaleInCooldown == other.scaleInCooldown &&
        scaleOutCooldown == other.scaleOutCooldown &&
        targetValue == other.targetValue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, disableScaleIn.hashCode), scaleInCooldown.hashCode),
            scaleOutCooldown.hashCode),
        targetValue.hashCode));
  }
}

class AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder
    implements
        Builder<AutoScalingTargetTrackingScalingPolicyConfigurationUpdate,
            AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder> {
  _$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate? _$v;

  bool? _disableScaleIn;
  bool? get disableScaleIn => _$this._disableScaleIn;
  set disableScaleIn(bool? disableScaleIn) =>
      _$this._disableScaleIn = disableScaleIn;

  int? _scaleInCooldown;
  int? get scaleInCooldown => _$this._scaleInCooldown;
  set scaleInCooldown(int? scaleInCooldown) =>
      _$this._scaleInCooldown = scaleInCooldown;

  int? _scaleOutCooldown;
  int? get scaleOutCooldown => _$this._scaleOutCooldown;
  set scaleOutCooldown(int? scaleOutCooldown) =>
      _$this._scaleOutCooldown = scaleOutCooldown;

  double? _targetValue;
  double? get targetValue => _$this._targetValue;
  set targetValue(double? targetValue) => _$this._targetValue = targetValue;

  AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder() {
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate._init(this);
  }

  AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disableScaleIn = $v.disableScaleIn;
      _scaleInCooldown = $v.scaleInCooldown;
      _scaleOutCooldown = $v.scaleOutCooldown;
      _targetValue = $v.targetValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      AutoScalingTargetTrackingScalingPolicyConfigurationUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate;
  }

  @override
  void update(
      void Function(
              AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoScalingTargetTrackingScalingPolicyConfigurationUpdate build() => _build();

  _$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate _build() {
    final _$result = _$v ??
        new _$AutoScalingTargetTrackingScalingPolicyConfigurationUpdate._(
            disableScaleIn: disableScaleIn,
            scaleInCooldown: scaleInCooldown,
            scaleOutCooldown: scaleOutCooldown,
            targetValue: BuiltValueNullFieldError.checkNotNull(
                targetValue,
                r'AutoScalingTargetTrackingScalingPolicyConfigurationUpdate',
                'targetValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
