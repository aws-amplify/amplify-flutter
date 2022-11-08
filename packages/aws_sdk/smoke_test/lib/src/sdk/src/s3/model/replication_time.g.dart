// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.replication_time;

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
    return $jf($jc($jc(0, status.hashCode), time.hashCode));
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

  ReplicationTimeBuilder() {
    ReplicationTime._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
