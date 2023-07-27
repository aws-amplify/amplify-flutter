// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_scaling_target_tracking_scaling_policy_configuration_update.dart';

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
    var _$hash = 0;
    _$hash = $jc(_$hash, disableScaleIn.hashCode);
    _$hash = $jc(_$hash, scaleInCooldown.hashCode);
    _$hash = $jc(_$hash, scaleOutCooldown.hashCode);
    _$hash = $jc(_$hash, targetValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  AutoScalingTargetTrackingScalingPolicyConfigurationUpdateBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
