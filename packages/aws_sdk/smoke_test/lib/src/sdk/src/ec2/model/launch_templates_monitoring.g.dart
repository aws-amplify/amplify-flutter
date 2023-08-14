// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_templates_monitoring.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplatesMonitoring extends LaunchTemplatesMonitoring {
  @override
  final bool enabled;

  factory _$LaunchTemplatesMonitoring(
          [void Function(LaunchTemplatesMonitoringBuilder)? updates]) =>
      (new LaunchTemplatesMonitoringBuilder()..update(updates))._build();

  _$LaunchTemplatesMonitoring._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'LaunchTemplatesMonitoring', 'enabled');
  }

  @override
  LaunchTemplatesMonitoring rebuild(
          void Function(LaunchTemplatesMonitoringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplatesMonitoringBuilder toBuilder() =>
      new LaunchTemplatesMonitoringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplatesMonitoring && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplatesMonitoringBuilder
    implements
        Builder<LaunchTemplatesMonitoring, LaunchTemplatesMonitoringBuilder> {
  _$LaunchTemplatesMonitoring? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  LaunchTemplatesMonitoringBuilder() {
    LaunchTemplatesMonitoring._init(this);
  }

  LaunchTemplatesMonitoringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplatesMonitoring other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplatesMonitoring;
  }

  @override
  void update(void Function(LaunchTemplatesMonitoringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplatesMonitoring build() => _build();

  _$LaunchTemplatesMonitoring _build() {
    final _$result = _$v ??
        new _$LaunchTemplatesMonitoring._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'LaunchTemplatesMonitoring', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
