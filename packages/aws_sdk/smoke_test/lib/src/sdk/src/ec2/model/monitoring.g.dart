// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Monitoring extends Monitoring {
  @override
  final MonitoringState? state;

  factory _$Monitoring([void Function(MonitoringBuilder)? updates]) =>
      (new MonitoringBuilder()..update(updates))._build();

  _$Monitoring._({this.state}) : super._();

  @override
  Monitoring rebuild(void Function(MonitoringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonitoringBuilder toBuilder() => new MonitoringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Monitoring && state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MonitoringBuilder implements Builder<Monitoring, MonitoringBuilder> {
  _$Monitoring? _$v;

  MonitoringState? _state;
  MonitoringState? get state => _$this._state;
  set state(MonitoringState? state) => _$this._state = state;

  MonitoringBuilder();

  MonitoringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Monitoring other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Monitoring;
  }

  @override
  void update(void Function(MonitoringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Monitoring build() => _build();

  _$Monitoring _build() {
    final _$result = _$v ?? new _$Monitoring._(state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
