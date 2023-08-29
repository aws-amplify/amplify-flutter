// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instance_recurrence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstanceRecurrence extends ScheduledInstanceRecurrence {
  @override
  final String? frequency;
  @override
  final int interval;
  @override
  final _i2.BuiltList<int>? occurrenceDaySet;
  @override
  final bool occurrenceRelativeToEnd;
  @override
  final String? occurrenceUnit;

  factory _$ScheduledInstanceRecurrence(
          [void Function(ScheduledInstanceRecurrenceBuilder)? updates]) =>
      (new ScheduledInstanceRecurrenceBuilder()..update(updates))._build();

  _$ScheduledInstanceRecurrence._(
      {this.frequency,
      required this.interval,
      this.occurrenceDaySet,
      required this.occurrenceRelativeToEnd,
      this.occurrenceUnit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        interval, r'ScheduledInstanceRecurrence', 'interval');
    BuiltValueNullFieldError.checkNotNull(occurrenceRelativeToEnd,
        r'ScheduledInstanceRecurrence', 'occurrenceRelativeToEnd');
  }

  @override
  ScheduledInstanceRecurrence rebuild(
          void Function(ScheduledInstanceRecurrenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstanceRecurrenceBuilder toBuilder() =>
      new ScheduledInstanceRecurrenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstanceRecurrence &&
        frequency == other.frequency &&
        interval == other.interval &&
        occurrenceDaySet == other.occurrenceDaySet &&
        occurrenceRelativeToEnd == other.occurrenceRelativeToEnd &&
        occurrenceUnit == other.occurrenceUnit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, occurrenceDaySet.hashCode);
    _$hash = $jc(_$hash, occurrenceRelativeToEnd.hashCode);
    _$hash = $jc(_$hash, occurrenceUnit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstanceRecurrenceBuilder
    implements
        Builder<ScheduledInstanceRecurrence,
            ScheduledInstanceRecurrenceBuilder> {
  _$ScheduledInstanceRecurrence? _$v;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(String? frequency) => _$this._frequency = frequency;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  _i2.ListBuilder<int>? _occurrenceDaySet;
  _i2.ListBuilder<int> get occurrenceDaySet =>
      _$this._occurrenceDaySet ??= new _i2.ListBuilder<int>();
  set occurrenceDaySet(_i2.ListBuilder<int>? occurrenceDaySet) =>
      _$this._occurrenceDaySet = occurrenceDaySet;

  bool? _occurrenceRelativeToEnd;
  bool? get occurrenceRelativeToEnd => _$this._occurrenceRelativeToEnd;
  set occurrenceRelativeToEnd(bool? occurrenceRelativeToEnd) =>
      _$this._occurrenceRelativeToEnd = occurrenceRelativeToEnd;

  String? _occurrenceUnit;
  String? get occurrenceUnit => _$this._occurrenceUnit;
  set occurrenceUnit(String? occurrenceUnit) =>
      _$this._occurrenceUnit = occurrenceUnit;

  ScheduledInstanceRecurrenceBuilder() {
    ScheduledInstanceRecurrence._init(this);
  }

  ScheduledInstanceRecurrenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _frequency = $v.frequency;
      _interval = $v.interval;
      _occurrenceDaySet = $v.occurrenceDaySet?.toBuilder();
      _occurrenceRelativeToEnd = $v.occurrenceRelativeToEnd;
      _occurrenceUnit = $v.occurrenceUnit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstanceRecurrence other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstanceRecurrence;
  }

  @override
  void update(void Function(ScheduledInstanceRecurrenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstanceRecurrence build() => _build();

  _$ScheduledInstanceRecurrence _build() {
    _$ScheduledInstanceRecurrence _$result;
    try {
      _$result = _$v ??
          new _$ScheduledInstanceRecurrence._(
              frequency: frequency,
              interval: BuiltValueNullFieldError.checkNotNull(
                  interval, r'ScheduledInstanceRecurrence', 'interval'),
              occurrenceDaySet: _occurrenceDaySet?.build(),
              occurrenceRelativeToEnd: BuiltValueNullFieldError.checkNotNull(
                  occurrenceRelativeToEnd,
                  r'ScheduledInstanceRecurrence',
                  'occurrenceRelativeToEnd'),
              occurrenceUnit: occurrenceUnit);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'occurrenceDaySet';
        _occurrenceDaySet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduledInstanceRecurrence', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
