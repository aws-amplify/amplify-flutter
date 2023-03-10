// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.auto_scaling_settings_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoScalingSettingsDescription extends AutoScalingSettingsDescription {
  @override
  final bool? autoScalingDisabled;
  @override
  final String? autoScalingRoleArn;
  @override
  final _i2.Int64? maximumUnits;
  @override
  final _i2.Int64? minimumUnits;
  @override
  final _i4.BuiltList<_i3.AutoScalingPolicyDescription>? scalingPolicies;

  factory _$AutoScalingSettingsDescription(
          [void Function(AutoScalingSettingsDescriptionBuilder)? updates]) =>
      (new AutoScalingSettingsDescriptionBuilder()..update(updates))._build();

  _$AutoScalingSettingsDescription._(
      {this.autoScalingDisabled,
      this.autoScalingRoleArn,
      this.maximumUnits,
      this.minimumUnits,
      this.scalingPolicies})
      : super._();

  @override
  AutoScalingSettingsDescription rebuild(
          void Function(AutoScalingSettingsDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoScalingSettingsDescriptionBuilder toBuilder() =>
      new AutoScalingSettingsDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoScalingSettingsDescription &&
        autoScalingDisabled == other.autoScalingDisabled &&
        autoScalingRoleArn == other.autoScalingRoleArn &&
        maximumUnits == other.maximumUnits &&
        minimumUnits == other.minimumUnits &&
        scalingPolicies == other.scalingPolicies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoScalingDisabled.hashCode);
    _$hash = $jc(_$hash, autoScalingRoleArn.hashCode);
    _$hash = $jc(_$hash, maximumUnits.hashCode);
    _$hash = $jc(_$hash, minimumUnits.hashCode);
    _$hash = $jc(_$hash, scalingPolicies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AutoScalingSettingsDescriptionBuilder
    implements
        Builder<AutoScalingSettingsDescription,
            AutoScalingSettingsDescriptionBuilder> {
  _$AutoScalingSettingsDescription? _$v;

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

  _i4.ListBuilder<_i3.AutoScalingPolicyDescription>? _scalingPolicies;
  _i4.ListBuilder<_i3.AutoScalingPolicyDescription> get scalingPolicies =>
      _$this._scalingPolicies ??=
          new _i4.ListBuilder<_i3.AutoScalingPolicyDescription>();
  set scalingPolicies(
          _i4.ListBuilder<_i3.AutoScalingPolicyDescription>? scalingPolicies) =>
      _$this._scalingPolicies = scalingPolicies;

  AutoScalingSettingsDescriptionBuilder() {
    AutoScalingSettingsDescription._init(this);
  }

  AutoScalingSettingsDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoScalingDisabled = $v.autoScalingDisabled;
      _autoScalingRoleArn = $v.autoScalingRoleArn;
      _maximumUnits = $v.maximumUnits;
      _minimumUnits = $v.minimumUnits;
      _scalingPolicies = $v.scalingPolicies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoScalingSettingsDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AutoScalingSettingsDescription;
  }

  @override
  void update(void Function(AutoScalingSettingsDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoScalingSettingsDescription build() => _build();

  _$AutoScalingSettingsDescription _build() {
    _$AutoScalingSettingsDescription _$result;
    try {
      _$result = _$v ??
          new _$AutoScalingSettingsDescription._(
              autoScalingDisabled: autoScalingDisabled,
              autoScalingRoleArn: autoScalingRoleArn,
              maximumUnits: maximumUnits,
              minimumUnits: minimumUnits,
              scalingPolicies: _scalingPolicies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scalingPolicies';
        _scalingPolicies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AutoScalingSettingsDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
