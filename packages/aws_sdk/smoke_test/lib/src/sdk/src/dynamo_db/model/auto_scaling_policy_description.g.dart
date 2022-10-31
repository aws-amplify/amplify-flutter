// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.auto_scaling_policy_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoScalingPolicyDescription extends AutoScalingPolicyDescription {
  @override
  final String? policyName;
  @override
  final _i2.AutoScalingTargetTrackingScalingPolicyConfigurationDescription?
      targetTrackingScalingPolicyConfiguration;

  factory _$AutoScalingPolicyDescription(
          [void Function(AutoScalingPolicyDescriptionBuilder)? updates]) =>
      (new AutoScalingPolicyDescriptionBuilder()..update(updates))._build();

  _$AutoScalingPolicyDescription._(
      {this.policyName, this.targetTrackingScalingPolicyConfiguration})
      : super._();

  @override
  AutoScalingPolicyDescription rebuild(
          void Function(AutoScalingPolicyDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoScalingPolicyDescriptionBuilder toBuilder() =>
      new AutoScalingPolicyDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoScalingPolicyDescription &&
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

class AutoScalingPolicyDescriptionBuilder
    implements
        Builder<AutoScalingPolicyDescription,
            AutoScalingPolicyDescriptionBuilder> {
  _$AutoScalingPolicyDescription? _$v;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  _i2.AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionBuilder?
      _targetTrackingScalingPolicyConfiguration;
  _i2.AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionBuilder
      get targetTrackingScalingPolicyConfiguration =>
          _$this._targetTrackingScalingPolicyConfiguration ??= new _i2
              .AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionBuilder();
  set targetTrackingScalingPolicyConfiguration(
          _i2.AutoScalingTargetTrackingScalingPolicyConfigurationDescriptionBuilder?
              targetTrackingScalingPolicyConfiguration) =>
      _$this._targetTrackingScalingPolicyConfiguration =
          targetTrackingScalingPolicyConfiguration;

  AutoScalingPolicyDescriptionBuilder() {
    AutoScalingPolicyDescription._init(this);
  }

  AutoScalingPolicyDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyName = $v.policyName;
      _targetTrackingScalingPolicyConfiguration =
          $v.targetTrackingScalingPolicyConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoScalingPolicyDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AutoScalingPolicyDescription;
  }

  @override
  void update(void Function(AutoScalingPolicyDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoScalingPolicyDescription build() => _build();

  _$AutoScalingPolicyDescription _build() {
    _$AutoScalingPolicyDescription _$result;
    try {
      _$result = _$v ??
          new _$AutoScalingPolicyDescription._(
              policyName: policyName,
              targetTrackingScalingPolicyConfiguration:
                  _targetTrackingScalingPolicyConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetTrackingScalingPolicyConfiguration';
        _targetTrackingScalingPolicyConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AutoScalingPolicyDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
