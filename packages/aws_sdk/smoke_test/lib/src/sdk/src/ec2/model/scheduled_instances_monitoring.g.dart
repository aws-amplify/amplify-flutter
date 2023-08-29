// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_monitoring.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesMonitoring extends ScheduledInstancesMonitoring {
  @override
  final bool enabled;

  factory _$ScheduledInstancesMonitoring(
          [void Function(ScheduledInstancesMonitoringBuilder)? updates]) =>
      (new ScheduledInstancesMonitoringBuilder()..update(updates))._build();

  _$ScheduledInstancesMonitoring._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'ScheduledInstancesMonitoring', 'enabled');
  }

  @override
  ScheduledInstancesMonitoring rebuild(
          void Function(ScheduledInstancesMonitoringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesMonitoringBuilder toBuilder() =>
      new ScheduledInstancesMonitoringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesMonitoring && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesMonitoringBuilder
    implements
        Builder<ScheduledInstancesMonitoring,
            ScheduledInstancesMonitoringBuilder> {
  _$ScheduledInstancesMonitoring? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ScheduledInstancesMonitoringBuilder() {
    ScheduledInstancesMonitoring._init(this);
  }

  ScheduledInstancesMonitoringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesMonitoring other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesMonitoring;
  }

  @override
  void update(void Function(ScheduledInstancesMonitoringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesMonitoring build() => _build();

  _$ScheduledInstancesMonitoring _build() {
    final _$result = _$v ??
        new _$ScheduledInstancesMonitoring._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'ScheduledInstancesMonitoring', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
