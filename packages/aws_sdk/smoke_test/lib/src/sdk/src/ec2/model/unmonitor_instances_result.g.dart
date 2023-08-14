// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unmonitor_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnmonitorInstancesResult extends UnmonitorInstancesResult {
  @override
  final _i2.BuiltList<InstanceMonitoring>? instanceMonitorings;

  factory _$UnmonitorInstancesResult(
          [void Function(UnmonitorInstancesResultBuilder)? updates]) =>
      (new UnmonitorInstancesResultBuilder()..update(updates))._build();

  _$UnmonitorInstancesResult._({this.instanceMonitorings}) : super._();

  @override
  UnmonitorInstancesResult rebuild(
          void Function(UnmonitorInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnmonitorInstancesResultBuilder toBuilder() =>
      new UnmonitorInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnmonitorInstancesResult &&
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

class UnmonitorInstancesResultBuilder
    implements
        Builder<UnmonitorInstancesResult, UnmonitorInstancesResultBuilder> {
  _$UnmonitorInstancesResult? _$v;

  _i2.ListBuilder<InstanceMonitoring>? _instanceMonitorings;
  _i2.ListBuilder<InstanceMonitoring> get instanceMonitorings =>
      _$this._instanceMonitorings ??= new _i2.ListBuilder<InstanceMonitoring>();
  set instanceMonitorings(
          _i2.ListBuilder<InstanceMonitoring>? instanceMonitorings) =>
      _$this._instanceMonitorings = instanceMonitorings;

  UnmonitorInstancesResultBuilder();

  UnmonitorInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceMonitorings = $v.instanceMonitorings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnmonitorInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnmonitorInstancesResult;
  }

  @override
  void update(void Function(UnmonitorInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnmonitorInstancesResult build() => _build();

  _$UnmonitorInstancesResult _build() {
    _$UnmonitorInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$UnmonitorInstancesResult._(
              instanceMonitorings: _instanceMonitorings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceMonitorings';
        _instanceMonitorings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnmonitorInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
