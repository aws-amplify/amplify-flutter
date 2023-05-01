// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.auto_scaling_settings_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoScalingSettingsUpdate extends AutoScalingSettingsUpdate {
  @override
  final _i2.Int64? minimumUnits;
  @override
  final _i2.Int64? maximumUnits;
  @override
  final bool? autoScalingDisabled;
  @override
  final String? autoScalingRoleArn;
  @override
  final _i3.AutoScalingPolicyUpdate? scalingPolicyUpdate;

  factory _$AutoScalingSettingsUpdate(
          [void Function(AutoScalingSettingsUpdateBuilder)? updates]) =>
      (new AutoScalingSettingsUpdateBuilder()..update(updates))._build();

  _$AutoScalingSettingsUpdate._(
      {this.minimumUnits,
      this.maximumUnits,
      this.autoScalingDisabled,
      this.autoScalingRoleArn,
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
        minimumUnits == other.minimumUnits &&
        maximumUnits == other.maximumUnits &&
        autoScalingDisabled == other.autoScalingDisabled &&
        autoScalingRoleArn == other.autoScalingRoleArn &&
        scalingPolicyUpdate == other.scalingPolicyUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minimumUnits.hashCode);
    _$hash = $jc(_$hash, maximumUnits.hashCode);
    _$hash = $jc(_$hash, autoScalingDisabled.hashCode);
    _$hash = $jc(_$hash, autoScalingRoleArn.hashCode);
    _$hash = $jc(_$hash, scalingPolicyUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AutoScalingSettingsUpdateBuilder
    implements
        Builder<AutoScalingSettingsUpdate, AutoScalingSettingsUpdateBuilder> {
  _$AutoScalingSettingsUpdate? _$v;

  _i2.Int64? _minimumUnits;
  _i2.Int64? get minimumUnits => _$this._minimumUnits;
  set minimumUnits(_i2.Int64? minimumUnits) =>
      _$this._minimumUnits = minimumUnits;

  _i2.Int64? _maximumUnits;
  _i2.Int64? get maximumUnits => _$this._maximumUnits;
  set maximumUnits(_i2.Int64? maximumUnits) =>
      _$this._maximumUnits = maximumUnits;

  bool? _autoScalingDisabled;
  bool? get autoScalingDisabled => _$this._autoScalingDisabled;
  set autoScalingDisabled(bool? autoScalingDisabled) =>
      _$this._autoScalingDisabled = autoScalingDisabled;

  String? _autoScalingRoleArn;
  String? get autoScalingRoleArn => _$this._autoScalingRoleArn;
  set autoScalingRoleArn(String? autoScalingRoleArn) =>
      _$this._autoScalingRoleArn = autoScalingRoleArn;

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
      _minimumUnits = $v.minimumUnits;
      _maximumUnits = $v.maximumUnits;
      _autoScalingDisabled = $v.autoScalingDisabled;
      _autoScalingRoleArn = $v.autoScalingRoleArn;
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
              minimumUnits: minimumUnits,
              maximumUnits: maximumUnits,
              autoScalingDisabled: autoScalingDisabled,
              autoScalingRoleArn: autoScalingRoleArn,
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
