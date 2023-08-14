// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_scheduled_instance_availability_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeScheduledInstanceAvailabilityRequest
    extends DescribeScheduledInstanceAvailabilityRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final SlotDateTimeRangeRequest? firstSlotStartTimeRange;
  @override
  final int maxResults;
  @override
  final int maxSlotDurationInHours;
  @override
  final int minSlotDurationInHours;
  @override
  final String? nextToken;
  @override
  final ScheduledInstanceRecurrenceRequest? recurrence;

  factory _$DescribeScheduledInstanceAvailabilityRequest(
          [void Function(DescribeScheduledInstanceAvailabilityRequestBuilder)?
              updates]) =>
      (new DescribeScheduledInstanceAvailabilityRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeScheduledInstanceAvailabilityRequest._(
      {required this.dryRun,
      this.filters,
      this.firstSlotStartTimeRange,
      required this.maxResults,
      required this.maxSlotDurationInHours,
      required this.minSlotDurationInHours,
      this.nextToken,
      this.recurrence})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeScheduledInstanceAvailabilityRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeScheduledInstanceAvailabilityRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        maxSlotDurationInHours,
        r'DescribeScheduledInstanceAvailabilityRequest',
        'maxSlotDurationInHours');
    BuiltValueNullFieldError.checkNotNull(
        minSlotDurationInHours,
        r'DescribeScheduledInstanceAvailabilityRequest',
        'minSlotDurationInHours');
  }

  @override
  DescribeScheduledInstanceAvailabilityRequest rebuild(
          void Function(DescribeScheduledInstanceAvailabilityRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeScheduledInstanceAvailabilityRequestBuilder toBuilder() =>
      new DescribeScheduledInstanceAvailabilityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeScheduledInstanceAvailabilityRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        firstSlotStartTimeRange == other.firstSlotStartTimeRange &&
        maxResults == other.maxResults &&
        maxSlotDurationInHours == other.maxSlotDurationInHours &&
        minSlotDurationInHours == other.minSlotDurationInHours &&
        nextToken == other.nextToken &&
        recurrence == other.recurrence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, firstSlotStartTimeRange.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, maxSlotDurationInHours.hashCode);
    _$hash = $jc(_$hash, minSlotDurationInHours.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, recurrence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeScheduledInstanceAvailabilityRequestBuilder
    implements
        Builder<DescribeScheduledInstanceAvailabilityRequest,
            DescribeScheduledInstanceAvailabilityRequestBuilder> {
  _$DescribeScheduledInstanceAvailabilityRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  SlotDateTimeRangeRequestBuilder? _firstSlotStartTimeRange;
  SlotDateTimeRangeRequestBuilder get firstSlotStartTimeRange =>
      _$this._firstSlotStartTimeRange ??= new SlotDateTimeRangeRequestBuilder();
  set firstSlotStartTimeRange(
          SlotDateTimeRangeRequestBuilder? firstSlotStartTimeRange) =>
      _$this._firstSlotStartTimeRange = firstSlotStartTimeRange;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  int? _maxSlotDurationInHours;
  int? get maxSlotDurationInHours => _$this._maxSlotDurationInHours;
  set maxSlotDurationInHours(int? maxSlotDurationInHours) =>
      _$this._maxSlotDurationInHours = maxSlotDurationInHours;

  int? _minSlotDurationInHours;
  int? get minSlotDurationInHours => _$this._minSlotDurationInHours;
  set minSlotDurationInHours(int? minSlotDurationInHours) =>
      _$this._minSlotDurationInHours = minSlotDurationInHours;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ScheduledInstanceRecurrenceRequestBuilder? _recurrence;
  ScheduledInstanceRecurrenceRequestBuilder get recurrence =>
      _$this._recurrence ??= new ScheduledInstanceRecurrenceRequestBuilder();
  set recurrence(ScheduledInstanceRecurrenceRequestBuilder? recurrence) =>
      _$this._recurrence = recurrence;

  DescribeScheduledInstanceAvailabilityRequestBuilder() {
    DescribeScheduledInstanceAvailabilityRequest._init(this);
  }

  DescribeScheduledInstanceAvailabilityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _firstSlotStartTimeRange = $v.firstSlotStartTimeRange?.toBuilder();
      _maxResults = $v.maxResults;
      _maxSlotDurationInHours = $v.maxSlotDurationInHours;
      _minSlotDurationInHours = $v.minSlotDurationInHours;
      _nextToken = $v.nextToken;
      _recurrence = $v.recurrence?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeScheduledInstanceAvailabilityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeScheduledInstanceAvailabilityRequest;
  }

  @override
  void update(
      void Function(DescribeScheduledInstanceAvailabilityRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeScheduledInstanceAvailabilityRequest build() => _build();

  _$DescribeScheduledInstanceAvailabilityRequest _build() {
    _$DescribeScheduledInstanceAvailabilityRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeScheduledInstanceAvailabilityRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeScheduledInstanceAvailabilityRequest', 'dryRun'),
              filters: _filters?.build(),
              firstSlotStartTimeRange: _firstSlotStartTimeRange?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeScheduledInstanceAvailabilityRequest',
                  'maxResults'),
              maxSlotDurationInHours: BuiltValueNullFieldError.checkNotNull(
                  maxSlotDurationInHours,
                  r'DescribeScheduledInstanceAvailabilityRequest',
                  'maxSlotDurationInHours'),
              minSlotDurationInHours: BuiltValueNullFieldError.checkNotNull(
                  minSlotDurationInHours,
                  r'DescribeScheduledInstanceAvailabilityRequest',
                  'minSlotDurationInHours'),
              nextToken: nextToken,
              recurrence: _recurrence?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'firstSlotStartTimeRange';
        _firstSlotStartTimeRange?.build();

        _$failedField = 'recurrence';
        _recurrence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeScheduledInstanceAvailabilityRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
