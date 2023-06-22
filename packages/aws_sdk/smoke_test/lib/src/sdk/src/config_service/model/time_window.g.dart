// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeWindow extends TimeWindow {
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;

  factory _$TimeWindow([void Function(TimeWindowBuilder)? updates]) =>
      (new TimeWindowBuilder()..update(updates))._build();

  _$TimeWindow._({this.startTime, this.endTime}) : super._();

  @override
  TimeWindow rebuild(void Function(TimeWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeWindowBuilder toBuilder() => new TimeWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeWindow &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TimeWindowBuilder implements Builder<TimeWindow, TimeWindowBuilder> {
  _$TimeWindow? _$v;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  TimeWindowBuilder() {
    TimeWindow._init(this);
  }

  TimeWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeWindow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeWindow;
  }

  @override
  void update(void Function(TimeWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeWindow build() => _build();

  _$TimeWindow _build() {
    final _$result =
        _$v ?? new _$TimeWindow._(startTime: startTime, endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
