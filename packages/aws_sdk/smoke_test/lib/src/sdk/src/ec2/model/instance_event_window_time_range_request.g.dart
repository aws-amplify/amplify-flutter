// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_event_window_time_range_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceEventWindowTimeRangeRequest
    extends InstanceEventWindowTimeRangeRequest {
  @override
  final WeekDay? startWeekDay;
  @override
  final int startHour;
  @override
  final WeekDay? endWeekDay;
  @override
  final int endHour;

  factory _$InstanceEventWindowTimeRangeRequest(
          [void Function(InstanceEventWindowTimeRangeRequestBuilder)?
              updates]) =>
      (new InstanceEventWindowTimeRangeRequestBuilder()..update(updates))
          ._build();

  _$InstanceEventWindowTimeRangeRequest._(
      {this.startWeekDay,
      required this.startHour,
      this.endWeekDay,
      required this.endHour})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        startHour, r'InstanceEventWindowTimeRangeRequest', 'startHour');
    BuiltValueNullFieldError.checkNotNull(
        endHour, r'InstanceEventWindowTimeRangeRequest', 'endHour');
  }

  @override
  InstanceEventWindowTimeRangeRequest rebuild(
          void Function(InstanceEventWindowTimeRangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceEventWindowTimeRangeRequestBuilder toBuilder() =>
      new InstanceEventWindowTimeRangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceEventWindowTimeRangeRequest &&
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

class InstanceEventWindowTimeRangeRequestBuilder
    implements
        Builder<InstanceEventWindowTimeRangeRequest,
            InstanceEventWindowTimeRangeRequestBuilder> {
  _$InstanceEventWindowTimeRangeRequest? _$v;

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

  InstanceEventWindowTimeRangeRequestBuilder() {
    InstanceEventWindowTimeRangeRequest._init(this);
  }

  InstanceEventWindowTimeRangeRequestBuilder get _$this {
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
  void replace(InstanceEventWindowTimeRangeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceEventWindowTimeRangeRequest;
  }

  @override
  void update(
      void Function(InstanceEventWindowTimeRangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceEventWindowTimeRangeRequest build() => _build();

  _$InstanceEventWindowTimeRangeRequest _build() {
    final _$result = _$v ??
        new _$InstanceEventWindowTimeRangeRequest._(
            startWeekDay: startWeekDay,
            startHour: BuiltValueNullFieldError.checkNotNull(
                startHour, r'InstanceEventWindowTimeRangeRequest', 'startHour'),
            endWeekDay: endWeekDay,
            endHour: BuiltValueNullFieldError.checkNotNull(
                endHour, r'InstanceEventWindowTimeRangeRequest', 'endHour'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
