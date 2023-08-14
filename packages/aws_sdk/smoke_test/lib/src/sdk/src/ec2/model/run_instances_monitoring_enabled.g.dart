// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_instances_monitoring_enabled.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RunInstancesMonitoringEnabled extends RunInstancesMonitoringEnabled {
  @override
  final bool enabled;

  factory _$RunInstancesMonitoringEnabled(
          [void Function(RunInstancesMonitoringEnabledBuilder)? updates]) =>
      (new RunInstancesMonitoringEnabledBuilder()..update(updates))._build();

  _$RunInstancesMonitoringEnabled._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'RunInstancesMonitoringEnabled', 'enabled');
  }

  @override
  RunInstancesMonitoringEnabled rebuild(
          void Function(RunInstancesMonitoringEnabledBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunInstancesMonitoringEnabledBuilder toBuilder() =>
      new RunInstancesMonitoringEnabledBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunInstancesMonitoringEnabled && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RunInstancesMonitoringEnabledBuilder
    implements
        Builder<RunInstancesMonitoringEnabled,
            RunInstancesMonitoringEnabledBuilder> {
  _$RunInstancesMonitoringEnabled? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  RunInstancesMonitoringEnabledBuilder() {
    RunInstancesMonitoringEnabled._init(this);
  }

  RunInstancesMonitoringEnabledBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunInstancesMonitoringEnabled other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RunInstancesMonitoringEnabled;
  }

  @override
  void update(void Function(RunInstancesMonitoringEnabledBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RunInstancesMonitoringEnabled build() => _build();

  _$RunInstancesMonitoringEnabled _build() {
    final _$result = _$v ??
        new _$RunInstancesMonitoringEnabled._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'RunInstancesMonitoringEnabled', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
