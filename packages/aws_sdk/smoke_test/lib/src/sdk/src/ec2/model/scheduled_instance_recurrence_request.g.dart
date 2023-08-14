// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instance_recurrence_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstanceRecurrenceRequest
    extends ScheduledInstanceRecurrenceRequest {
  @override
  final String? frequency;
  @override
  final int interval;
  @override
  final _i2.BuiltList<int>? occurrenceDays;
  @override
  final bool occurrenceRelativeToEnd;
  @override
  final String? occurrenceUnit;

  factory _$ScheduledInstanceRecurrenceRequest(
          [void Function(ScheduledInstanceRecurrenceRequestBuilder)?
              updates]) =>
      (new ScheduledInstanceRecurrenceRequestBuilder()..update(updates))
          ._build();

  _$ScheduledInstanceRecurrenceRequest._(
      {this.frequency,
      required this.interval,
      this.occurrenceDays,
      required this.occurrenceRelativeToEnd,
      this.occurrenceUnit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        interval, r'ScheduledInstanceRecurrenceRequest', 'interval');
    BuiltValueNullFieldError.checkNotNull(occurrenceRelativeToEnd,
        r'ScheduledInstanceRecurrenceRequest', 'occurrenceRelativeToEnd');
  }

  @override
  ScheduledInstanceRecurrenceRequest rebuild(
          void Function(ScheduledInstanceRecurrenceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstanceRecurrenceRequestBuilder toBuilder() =>
      new ScheduledInstanceRecurrenceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstanceRecurrenceRequest &&
        frequency == other.frequency &&
        interval == other.interval &&
        occurrenceDays == other.occurrenceDays &&
        occurrenceRelativeToEnd == other.occurrenceRelativeToEnd &&
        occurrenceUnit == other.occurrenceUnit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, occurrenceDays.hashCode);
    _$hash = $jc(_$hash, occurrenceRelativeToEnd.hashCode);
    _$hash = $jc(_$hash, occurrenceUnit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstanceRecurrenceRequestBuilder
    implements
        Builder<ScheduledInstanceRecurrenceRequest,
            ScheduledInstanceRecurrenceRequestBuilder> {
  _$ScheduledInstanceRecurrenceRequest? _$v;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(String? frequency) => _$this._frequency = frequency;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  _i2.ListBuilder<int>? _occurrenceDays;
  _i2.ListBuilder<int> get occurrenceDays =>
      _$this._occurrenceDays ??= new _i2.ListBuilder<int>();
  set occurrenceDays(_i2.ListBuilder<int>? occurrenceDays) =>
      _$this._occurrenceDays = occurrenceDays;

  bool? _occurrenceRelativeToEnd;
  bool? get occurrenceRelativeToEnd => _$this._occurrenceRelativeToEnd;
  set occurrenceRelativeToEnd(bool? occurrenceRelativeToEnd) =>
      _$this._occurrenceRelativeToEnd = occurrenceRelativeToEnd;

  String? _occurrenceUnit;
  String? get occurrenceUnit => _$this._occurrenceUnit;
  set occurrenceUnit(String? occurrenceUnit) =>
      _$this._occurrenceUnit = occurrenceUnit;

  ScheduledInstanceRecurrenceRequestBuilder() {
    ScheduledInstanceRecurrenceRequest._init(this);
  }

  ScheduledInstanceRecurrenceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _frequency = $v.frequency;
      _interval = $v.interval;
      _occurrenceDays = $v.occurrenceDays?.toBuilder();
      _occurrenceRelativeToEnd = $v.occurrenceRelativeToEnd;
      _occurrenceUnit = $v.occurrenceUnit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstanceRecurrenceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstanceRecurrenceRequest;
  }

  @override
  void update(
      void Function(ScheduledInstanceRecurrenceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstanceRecurrenceRequest build() => _build();

  _$ScheduledInstanceRecurrenceRequest _build() {
    _$ScheduledInstanceRecurrenceRequest _$result;
    try {
      _$result = _$v ??
          new _$ScheduledInstanceRecurrenceRequest._(
              frequency: frequency,
              interval: BuiltValueNullFieldError.checkNotNull(
                  interval, r'ScheduledInstanceRecurrenceRequest', 'interval'),
              occurrenceDays: _occurrenceDays?.build(),
              occurrenceRelativeToEnd: BuiltValueNullFieldError.checkNotNull(
                  occurrenceRelativeToEnd,
                  r'ScheduledInstanceRecurrenceRequest',
                  'occurrenceRelativeToEnd'),
              occurrenceUnit: occurrenceUnit);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'occurrenceDays';
        _occurrenceDays?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduledInstanceRecurrenceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
