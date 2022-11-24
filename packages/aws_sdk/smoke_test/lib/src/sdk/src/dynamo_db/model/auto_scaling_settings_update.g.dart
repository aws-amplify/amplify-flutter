// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.auto_scaling_settings_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoScalingSettingsUpdate extends AutoScalingSettingsUpdate {
  @override
  final bool? autoScalingDisabled;
  @override
  final String? autoScalingRoleArn;
  @override
  final _i2.Int64? maximumUnits;
  @override
  final _i2.Int64? minimumUnits;
  @override
  final _i3.AutoScalingPolicyUpdate? scalingPolicyUpdate;

  factory _$AutoScalingSettingsUpdate(
          [void Function(AutoScalingSettingsUpdateBuilder)? updates]) =>
      (new AutoScalingSettingsUpdateBuilder()..update(updates))._build();

  _$AutoScalingSettingsUpdate._(
      {this.autoScalingDisabled,
      this.autoScalingRoleArn,
      this.maximumUnits,
      this.minimumUnits,
      this.scalingPolicyUpdate})
      : super._();

  @override
  AutoScalingSettingsUpdate rebuild(
          void Function(AutoScalingSettingsUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoScalingSettingsUpdateBuilder toBuilder() =>
      new AutoScalingSettingsUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoScalingSettingsUpdate &&
        autoScalingDisabled == other.autoScalingDisabled &&
        autoScalingRoleArn == other.autoScalingRoleArn &&
        maximumUnits == other.maximumUnits &&
        minimumUnits == other.minimumUnits &&
        scalingPolicyUpdate == other.scalingPolicyUpdate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, autoScalingDisabled.hashCode),
                    autoScalingRoleArn.hashCode),
                maximumUnits.hashCode),
            minimumUnits.hashCode),
        scalingPolicyUpdate.hashCode));
  }
}

class AutoScalingSettingsUpdateBuilder
    implements
        Builder<AutoScalingSettingsUpdate, AutoScalingSettingsUpdateBuilder> {
  _$AutoScalingSettingsUpdate? _$v;

  bool? _autoScalingDisabled;
  bool? get autoScalingDisabled => _$this._autoScalingDisabled;
  set autoScalingDisabled(bool? autoScalingDisabled) =>
      _$this._autoScalingDisabled = autoScalingDisabled;

  String? _autoScalingRoleArn;
  String? get autoScalingRoleArn => _$this._autoScalingRoleArn;
  set autoScalingRoleArn(String? autoScalingRoleArn) =>
      _$this._autoScalingRoleArn = autoScalingRoleArn;

  _i2.Int64? _maximumUnits;
  _i2.Int64? get maximumUnits => _$this._maximumUnits;
  set maximumUnits(_i2.Int64? maximumUnits) =>
      _$this._maximumUnits = maximumUnits;

  _i2.Int64? _minimumUnits;
  _i2.Int64? get minimumUnits => _$this._minimumUnits;
  set minimumUnits(_i2.Int64? minimumUnits) =>
      _$this._minimumUnits = minimumUnits;

  _i3.AutoScalingPolicyUpdateBuilder? _scalingPolicyUpdate;
  _i3.AutoScalingPolicyUpdateBuilder get scalingPolicyUpdate =>
      _$this._scalingPolicyUpdate ??= new _i3.AutoScalingPolicyUpdateBuilder();
  set scalingPolicyUpdate(
          _i3.AutoScalingPolicyUpdateBuilder? scalingPolicyUpdate) =>
      _$this._scalingPolicyUpdate = scalingPolicyUpdate;

  AutoScalingSettingsUpdateBuilder() {
    AutoScalingSettingsUpdate._init(this);
  }

  AutoScalingSettingsUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoScalingDisabled = $v.autoScalingDisabled;
      _autoScalingRoleArn = $v.autoScalingRoleArn;
      _maximumUnits = $v.maximumUnits;
      _minimumUnits = $v.minimumUnits;
      _scalingPolicyUpdate = $v.scalingPolicyUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoScalingSettingsUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AutoScalingSettingsUpdate;
  }

  @override
  void update(void Function(AutoScalingSettingsUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoScalingSettingsUpdate build() => _build();

  _$AutoScalingSettingsUpdate _build() {
    _$AutoScalingSettingsUpdate _$result;
    try {
      _$result = _$v ??
          new _$AutoScalingSettingsUpdate._(
              autoScalingDisabled: autoScalingDisabled,
              autoScalingRoleArn: autoScalingRoleArn,
              maximumUnits: maximumUnits,
              minimumUnits: minimumUnits,
              scalingPolicyUpdate: _scalingPolicyUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scalingPolicyUpdate';
        _scalingPolicyUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AutoScalingSettingsUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
