// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_scheduled_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeScheduledInstancesRequest
    extends DescribeScheduledInstancesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? scheduledInstanceIds;
  @override
  final SlotStartTimeRangeRequest? slotStartTimeRange;

  factory _$DescribeScheduledInstancesRequest(
          [void Function(DescribeScheduledInstancesRequestBuilder)? updates]) =>
      (new DescribeScheduledInstancesRequestBuilder()..update(updates))
          ._build();

  _$DescribeScheduledInstancesRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken,
      this.scheduledInstanceIds,
      this.slotStartTimeRange})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeScheduledInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeScheduledInstancesRequest', 'maxResults');
  }

  @override
  DescribeScheduledInstancesRequest rebuild(
          void Function(DescribeScheduledInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeScheduledInstancesRequestBuilder toBuilder() =>
      new DescribeScheduledInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeScheduledInstancesRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        scheduledInstanceIds == other.scheduledInstanceIds &&
        slotStartTimeRange == other.slotStartTimeRange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, scheduledInstanceIds.hashCode);
    _$hash = $jc(_$hash, slotStartTimeRange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeScheduledInstancesRequestBuilder
    implements
        Builder<DescribeScheduledInstancesRequest,
            DescribeScheduledInstancesRequestBuilder> {
  _$DescribeScheduledInstancesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _scheduledInstanceIds;
  _i3.ListBuilder<String> get scheduledInstanceIds =>
      _$this._scheduledInstanceIds ??= new _i3.ListBuilder<String>();
  set scheduledInstanceIds(_i3.ListBuilder<String>? scheduledInstanceIds) =>
      _$this._scheduledInstanceIds = scheduledInstanceIds;

  SlotStartTimeRangeRequestBuilder? _slotStartTimeRange;
  SlotStartTimeRangeRequestBuilder get slotStartTimeRange =>
      _$this._slotStartTimeRange ??= new SlotStartTimeRangeRequestBuilder();
  set slotStartTimeRange(
          SlotStartTimeRangeRequestBuilder? slotStartTimeRange) =>
      _$this._slotStartTimeRange = slotStartTimeRange;

  DescribeScheduledInstancesRequestBuilder() {
    DescribeScheduledInstancesRequest._init(this);
  }

  DescribeScheduledInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _scheduledInstanceIds = $v.scheduledInstanceIds?.toBuilder();
      _slotStartTimeRange = $v.slotStartTimeRange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeScheduledInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeScheduledInstancesRequest;
  }

  @override
  void update(
      void Function(DescribeScheduledInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeScheduledInstancesRequest build() => _build();

  _$DescribeScheduledInstancesRequest _build() {
    _$DescribeScheduledInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeScheduledInstancesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeScheduledInstancesRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeScheduledInstancesRequest', 'maxResults'),
              nextToken: nextToken,
              scheduledInstanceIds: _scheduledInstanceIds?.build(),
              slotStartTimeRange: _slotStartTimeRange?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'scheduledInstanceIds';
        _scheduledInstanceIds?.build();
        _$failedField = 'slotStartTimeRange';
        _slotStartTimeRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeScheduledInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
