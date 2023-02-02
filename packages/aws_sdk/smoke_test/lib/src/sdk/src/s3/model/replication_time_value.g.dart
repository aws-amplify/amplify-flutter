// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.replication_time_value;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationTimeValue extends ReplicationTimeValue {
  @override
  final int? minutes;

  factory _$ReplicationTimeValue(
          [void Function(ReplicationTimeValueBuilder)? updates]) =>
      (new ReplicationTimeValueBuilder()..update(updates))._build();

  _$ReplicationTimeValue._({this.minutes}) : super._();

  @override
  ReplicationTimeValue rebuild(
          void Function(ReplicationTimeValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicationTimeValueBuilder toBuilder() =>
      new ReplicationTimeValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicationTimeValue && minutes == other.minutes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minutes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicationTimeValueBuilder
    implements Builder<ReplicationTimeValue, ReplicationTimeValueBuilder> {
  _$ReplicationTimeValue? _$v;

  int? _minutes;
  int? get minutes => _$this._minutes;
  set minutes(int? minutes) => _$this._minutes = minutes;

  ReplicationTimeValueBuilder() {
    ReplicationTimeValue._init(this);
  }

  ReplicationTimeValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minutes = $v.minutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicationTimeValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicationTimeValue;
  }

  @override
  void update(void Function(ReplicationTimeValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicationTimeValue build() => _build();

  _$ReplicationTimeValue _build() {
    final _$result = _$v ?? new _$ReplicationTimeValue._(minutes: minutes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
