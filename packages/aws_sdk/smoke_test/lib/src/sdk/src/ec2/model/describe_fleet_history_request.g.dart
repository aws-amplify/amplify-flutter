// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fleet_history_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetHistoryRequest extends DescribeFleetHistoryRequest {
  @override
  final bool dryRun;
  @override
  final FleetEventType? eventType;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final String? fleetId;
  @override
  final DateTime? startTime;

  factory _$DescribeFleetHistoryRequest(
          [void Function(DescribeFleetHistoryRequestBuilder)? updates]) =>
      (new DescribeFleetHistoryRequestBuilder()..update(updates))._build();

  _$DescribeFleetHistoryRequest._(
      {required this.dryRun,
      this.eventType,
      required this.maxResults,
      this.nextToken,
      this.fleetId,
      this.startTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFleetHistoryRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeFleetHistoryRequest', 'maxResults');
  }

  @override
  DescribeFleetHistoryRequest rebuild(
          void Function(DescribeFleetHistoryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetHistoryRequestBuilder toBuilder() =>
      new DescribeFleetHistoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetHistoryRequest &&
        dryRun == other.dryRun &&
        eventType == other.eventType &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        fleetId == other.fleetId &&
        startTime == other.startTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFleetHistoryRequestBuilder
    implements
        Builder<DescribeFleetHistoryRequest,
            DescribeFleetHistoryRequestBuilder> {
  _$DescribeFleetHistoryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  FleetEventType? _eventType;
  FleetEventType? get eventType => _$this._eventType;
  set eventType(FleetEventType? eventType) => _$this._eventType = eventType;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DescribeFleetHistoryRequestBuilder() {
    DescribeFleetHistoryRequest._init(this);
  }

  DescribeFleetHistoryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _eventType = $v.eventType;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _fleetId = $v.fleetId;
      _startTime = $v.startTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFleetHistoryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetHistoryRequest;
  }

  @override
  void update(void Function(DescribeFleetHistoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetHistoryRequest build() => _build();

  _$DescribeFleetHistoryRequest _build() {
    final _$result = _$v ??
        new _$DescribeFleetHistoryRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeFleetHistoryRequest', 'dryRun'),
            eventType: eventType,
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults, r'DescribeFleetHistoryRequest', 'maxResults'),
            nextToken: nextToken,
            fleetId: fleetId,
            startTime: startTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
