// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_event_window_time_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceEventWindowTimeRange extends InstanceEventWindowTimeRange {
  @override
  final WeekDay? startWeekDay;
  @override
  final int startHour;
  @override
  final WeekDay? endWeekDay;
  @override
  final int endHour;

  factory _$InstanceEventWindowTimeRange(
          [void Function(InstanceEventWindowTimeRangeBuilder)? updates]) =>
      (new InstanceEventWindowTimeRangeBuilder()..update(updates))._build();

  _$InstanceEventWindowTimeRange._(
      {this.startWeekDay,
      required this.startHour,
      this.endWeekDay,
      required this.endHour})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        startHour, r'InstanceEventWindowTimeRange', 'startHour');
    BuiltValueNullFieldError.checkNotNull(
        endHour, r'InstanceEventWindowTimeRange', 'endHour');
  }

  @override
  InstanceEventWindowTimeRange rebuild(
          void Function(InstanceEventWindowTimeRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceEventWindowTimeRangeBuilder toBuilder() =>
      new InstanceEventWindowTimeRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceEventWindowTimeRange &&
        startWeekDay == other.startWeekDay &&
        startHour == other.startHour &&
        endWeekDay == other.endWeekDay &&
        endHour == other.endHour;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startWeekDay.hashCode);
    _$hash = $jc(_$hash, startHour.hashCode);
    _$hash = $jc(_$hash, endWeekDay.hashCode);
    _$hash = $jc(_$hash, endHour.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceEventWindowTimeRangeBuilder
    implements
        Builder<InstanceEventWindowTimeRange,
            InstanceEventWindowTimeRangeBuilder> {
  _$InstanceEventWindowTimeRange? _$v;

  WeekDay? _startWeekDay;
  WeekDay? get startWeekDay => _$this._startWeekDay;
  set startWeekDay(WeekDay? startWeekDay) =>
      _$this._startWeekDay = startWeekDay;

  int? _startHour;
  int? get startHour => _$this._startHour;
  set startHour(int? startHour) => _$this._startHour = startHour;

  WeekDay? _endWeekDay;
  WeekDay? get endWeekDay => _$this._endWeekDay;
  set endWeekDay(WeekDay? endWeekDay) => _$this._endWeekDay = endWeekDay;

  int? _endHour;
  int? get endHour => _$this._endHour;
  set endHour(int? endHour) => _$this._endHour = endHour;

  InstanceEventWindowTimeRangeBuilder() {
    InstanceEventWindowTimeRange._init(this);
  }

  InstanceEventWindowTimeRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startWeekDay = $v.startWeekDay;
      _startHour = $v.startHour;
      _endWeekDay = $v.endWeekDay;
      _endHour = $v.endHour;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceEventWindowTimeRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceEventWindowTimeRange;
  }

  @override
  void update(void Function(InstanceEventWindowTimeRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceEventWindowTimeRange build() => _build();

  _$InstanceEventWindowTimeRange _build() {
    final _$result = _$v ??
        new _$InstanceEventWindowTimeRange._(
            startWeekDay: startWeekDay,
            startHour: BuiltValueNullFieldError.checkNotNull(
                startHour, r'InstanceEventWindowTimeRange', 'startHour'),
            endWeekDay: endWeekDay,
            endHour: BuiltValueNullFieldError.checkNotNull(
                endHour, r'InstanceEventWindowTimeRange', 'endHour'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
