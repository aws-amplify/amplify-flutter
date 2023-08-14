// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_fleet_monitoring.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotFleetMonitoring extends SpotFleetMonitoring {
  @override
  final bool enabled;

  factory _$SpotFleetMonitoring(
          [void Function(SpotFleetMonitoringBuilder)? updates]) =>
      (new SpotFleetMonitoringBuilder()..update(updates))._build();

  _$SpotFleetMonitoring._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'SpotFleetMonitoring', 'enabled');
  }

  @override
  SpotFleetMonitoring rebuild(
          void Function(SpotFleetMonitoringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotFleetMonitoringBuilder toBuilder() =>
      new SpotFleetMonitoringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotFleetMonitoring && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotFleetMonitoringBuilder
    implements Builder<SpotFleetMonitoring, SpotFleetMonitoringBuilder> {
  _$SpotFleetMonitoring? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  SpotFleetMonitoringBuilder() {
    SpotFleetMonitoring._init(this);
  }

  SpotFleetMonitoringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotFleetMonitoring other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotFleetMonitoring;
  }

  @override
  void update(void Function(SpotFleetMonitoringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotFleetMonitoring build() => _build();

  _$SpotFleetMonitoring _build() {
    final _$result = _$v ??
        new _$SpotFleetMonitoring._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'SpotFleetMonitoring', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
