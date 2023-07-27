// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replication_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationTime extends ReplicationTime {
  @override
  final _i2.ReplicationTimeStatus status;
  @override
  final _i3.ReplicationTimeValue time;

  factory _$ReplicationTime([void Function(ReplicationTimeBuilder)? updates]) =>
      (new ReplicationTimeBuilder()..update(updates))._build();

  _$ReplicationTime._({required this.status, required this.time}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'ReplicationTime', 'status');
    BuiltValueNullFieldError.checkNotNull(time, r'ReplicationTime', 'time');
  }

  @override
  ReplicationTime rebuild(void Function(ReplicationTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicationTimeBuilder toBuilder() =>
      new ReplicationTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicationTime &&
        status == other.status &&
        time == other.time;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicationTimeBuilder
    implements Builder<ReplicationTime, ReplicationTimeBuilder> {
  _$ReplicationTime? _$v;

  _i2.ReplicationTimeStatus? _status;
  _i2.ReplicationTimeStatus? get status => _$this._status;
  set status(_i2.ReplicationTimeStatus? status) => _$this._status = status;

  _i3.ReplicationTimeValueBuilder? _time;
  _i3.ReplicationTimeValueBuilder get time =>
      _$this._time ??= new _i3.ReplicationTimeValueBuilder();
  set time(_i3.ReplicationTimeValueBuilder? time) => _$this._time = time;

  ReplicationTimeBuilder();

  ReplicationTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _time = $v.time.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicationTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicationTime;
  }

  @override
  void update(void Function(ReplicationTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicationTime build() => _build();

  _$ReplicationTime _build() {
    _$ReplicationTime _$result;
    try {
      _$result = _$v ??
          new _$ReplicationTime._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ReplicationTime', 'status'),
              time: time.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'time';
        time.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicationTime', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
