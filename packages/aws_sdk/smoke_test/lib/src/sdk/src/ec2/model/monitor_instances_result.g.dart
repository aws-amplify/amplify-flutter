// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitor_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MonitorInstancesResult extends MonitorInstancesResult {
  @override
  final _i2.BuiltList<InstanceMonitoring>? instanceMonitorings;

  factory _$MonitorInstancesResult(
          [void Function(MonitorInstancesResultBuilder)? updates]) =>
      (new MonitorInstancesResultBuilder()..update(updates))._build();

  _$MonitorInstancesResult._({this.instanceMonitorings}) : super._();

  @override
  MonitorInstancesResult rebuild(
          void Function(MonitorInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonitorInstancesResultBuilder toBuilder() =>
      new MonitorInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonitorInstancesResult &&
        instanceMonitorings == other.instanceMonitorings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceMonitorings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MonitorInstancesResultBuilder
    implements Builder<MonitorInstancesResult, MonitorInstancesResultBuilder> {
  _$MonitorInstancesResult? _$v;

  _i2.ListBuilder<InstanceMonitoring>? _instanceMonitorings;
  _i2.ListBuilder<InstanceMonitoring> get instanceMonitorings =>
      _$this._instanceMonitorings ??= new _i2.ListBuilder<InstanceMonitoring>();
  set instanceMonitorings(
          _i2.ListBuilder<InstanceMonitoring>? instanceMonitorings) =>
      _$this._instanceMonitorings = instanceMonitorings;

  MonitorInstancesResultBuilder();

  MonitorInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceMonitorings = $v.instanceMonitorings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonitorInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonitorInstancesResult;
  }

  @override
  void update(void Function(MonitorInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonitorInstancesResult build() => _build();

  _$MonitorInstancesResult _build() {
    _$MonitorInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$MonitorInstancesResult._(
              instanceMonitorings: _instanceMonitorings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceMonitorings';
        _instanceMonitorings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MonitorInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
