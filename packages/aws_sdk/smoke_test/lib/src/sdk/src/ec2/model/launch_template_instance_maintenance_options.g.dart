// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_instance_maintenance_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateInstanceMaintenanceOptions
    extends LaunchTemplateInstanceMaintenanceOptions {
  @override
  final LaunchTemplateAutoRecoveryState? autoRecovery;

  factory _$LaunchTemplateInstanceMaintenanceOptions(
          [void Function(LaunchTemplateInstanceMaintenanceOptionsBuilder)?
              updates]) =>
      (new LaunchTemplateInstanceMaintenanceOptionsBuilder()..update(updates))
          ._build();

  _$LaunchTemplateInstanceMaintenanceOptions._({this.autoRecovery}) : super._();

  @override
  LaunchTemplateInstanceMaintenanceOptions rebuild(
          void Function(LaunchTemplateInstanceMaintenanceOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateInstanceMaintenanceOptionsBuilder toBuilder() =>
      new LaunchTemplateInstanceMaintenanceOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateInstanceMaintenanceOptions &&
        autoRecovery == other.autoRecovery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoRecovery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateInstanceMaintenanceOptionsBuilder
    implements
        Builder<LaunchTemplateInstanceMaintenanceOptions,
            LaunchTemplateInstanceMaintenanceOptionsBuilder> {
  _$LaunchTemplateInstanceMaintenanceOptions? _$v;

  LaunchTemplateAutoRecoveryState? _autoRecovery;
  LaunchTemplateAutoRecoveryState? get autoRecovery => _$this._autoRecovery;
  set autoRecovery(LaunchTemplateAutoRecoveryState? autoRecovery) =>
      _$this._autoRecovery = autoRecovery;

  LaunchTemplateInstanceMaintenanceOptionsBuilder();

  LaunchTemplateInstanceMaintenanceOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoRecovery = $v.autoRecovery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateInstanceMaintenanceOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateInstanceMaintenanceOptions;
  }

  @override
  void update(
      void Function(LaunchTemplateInstanceMaintenanceOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateInstanceMaintenanceOptions build() => _build();

  _$LaunchTemplateInstanceMaintenanceOptions _build() {
    final _$result = _$v ??
        new _$LaunchTemplateInstanceMaintenanceOptions._(
            autoRecovery: autoRecovery);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
