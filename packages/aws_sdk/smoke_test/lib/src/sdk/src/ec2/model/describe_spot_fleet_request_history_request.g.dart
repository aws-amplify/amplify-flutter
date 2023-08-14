// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_fleet_request_history_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotFleetRequestHistoryRequest
    extends DescribeSpotFleetRequestHistoryRequest {
  @override
  final bool dryRun;
  @override
  final EventType? eventType;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final String? spotFleetRequestId;
  @override
  final DateTime? startTime;

  factory _$DescribeSpotFleetRequestHistoryRequest(
          [void Function(DescribeSpotFleetRequestHistoryRequestBuilder)?
              updates]) =>
      (new DescribeSpotFleetRequestHistoryRequestBuilder()..update(updates))
          ._build();

  _$DescribeSpotFleetRequestHistoryRequest._(
      {required this.dryRun,
      this.eventType,
      required this.maxResults,
      this.nextToken,
      this.spotFleetRequestId,
      this.startTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSpotFleetRequestHistoryRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSpotFleetRequestHistoryRequest', 'maxResults');
  }

  @override
  DescribeSpotFleetRequestHistoryRequest rebuild(
          void Function(DescribeSpotFleetRequestHistoryRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotFleetRequestHistoryRequestBuilder toBuilder() =>
      new DescribeSpotFleetRequestHistoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotFleetRequestHistoryRequest &&
        dryRun == other.dryRun &&
        eventType == other.eventType &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        spotFleetRequestId == other.spotFleetRequestId &&
        startTime == other.startTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotFleetRequestHistoryRequestBuilder
    implements
        Builder<DescribeSpotFleetRequestHistoryRequest,
            DescribeSpotFleetRequestHistoryRequestBuilder> {
  _$DescribeSpotFleetRequestHistoryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EventType? _eventType;
  EventType? get eventType => _$this._eventType;
  set eventType(EventType? eventType) => _$this._eventType = eventType;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DescribeSpotFleetRequestHistoryRequestBuilder() {
    DescribeSpotFleetRequestHistoryRequest._init(this);
  }

  DescribeSpotFleetRequestHistoryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _eventType = $v.eventType;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _spotFleetRequestId = $v.spotFleetRequestId;
      _startTime = $v.startTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotFleetRequestHistoryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotFleetRequestHistoryRequest;
  }

  @override
  void update(
      void Function(DescribeSpotFleetRequestHistoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotFleetRequestHistoryRequest build() => _build();

  _$DescribeSpotFleetRequestHistoryRequest _build() {
    final _$result = _$v ??
        new _$DescribeSpotFleetRequestHistoryRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeSpotFleetRequestHistoryRequest', 'dryRun'),
            eventType: eventType,
            maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                r'DescribeSpotFleetRequestHistoryRequest', 'maxResults'),
            nextToken: nextToken,
            spotFleetRequestId: spotFleetRequestId,
            startTime: startTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
