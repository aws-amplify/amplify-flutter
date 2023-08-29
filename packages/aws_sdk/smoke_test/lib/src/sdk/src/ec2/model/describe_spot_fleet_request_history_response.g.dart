// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_fleet_request_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotFleetRequestHistoryResponse
    extends DescribeSpotFleetRequestHistoryResponse {
  @override
  final _i2.BuiltList<HistoryRecord>? historyRecords;
  @override
  final DateTime? lastEvaluatedTime;
  @override
  final String? nextToken;
  @override
  final String? spotFleetRequestId;
  @override
  final DateTime? startTime;

  factory _$DescribeSpotFleetRequestHistoryResponse(
          [void Function(DescribeSpotFleetRequestHistoryResponseBuilder)?
              updates]) =>
      (new DescribeSpotFleetRequestHistoryResponseBuilder()..update(updates))
          ._build();

  _$DescribeSpotFleetRequestHistoryResponse._(
      {this.historyRecords,
      this.lastEvaluatedTime,
      this.nextToken,
      this.spotFleetRequestId,
      this.startTime})
      : super._();

  @override
  DescribeSpotFleetRequestHistoryResponse rebuild(
          void Function(DescribeSpotFleetRequestHistoryResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotFleetRequestHistoryResponseBuilder toBuilder() =>
      new DescribeSpotFleetRequestHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotFleetRequestHistoryResponse &&
        historyRecords == other.historyRecords &&
        lastEvaluatedTime == other.lastEvaluatedTime &&
        nextToken == other.nextToken &&
        spotFleetRequestId == other.spotFleetRequestId &&
        startTime == other.startTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, historyRecords.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedTime.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotFleetRequestHistoryResponseBuilder
    implements
        Builder<DescribeSpotFleetRequestHistoryResponse,
            DescribeSpotFleetRequestHistoryResponseBuilder> {
  _$DescribeSpotFleetRequestHistoryResponse? _$v;

  _i2.ListBuilder<HistoryRecord>? _historyRecords;
  _i2.ListBuilder<HistoryRecord> get historyRecords =>
      _$this._historyRecords ??= new _i2.ListBuilder<HistoryRecord>();
  set historyRecords(_i2.ListBuilder<HistoryRecord>? historyRecords) =>
      _$this._historyRecords = historyRecords;

  DateTime? _lastEvaluatedTime;
  DateTime? get lastEvaluatedTime => _$this._lastEvaluatedTime;
  set lastEvaluatedTime(DateTime? lastEvaluatedTime) =>
      _$this._lastEvaluatedTime = lastEvaluatedTime;

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

  DescribeSpotFleetRequestHistoryResponseBuilder();

  DescribeSpotFleetRequestHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _historyRecords = $v.historyRecords?.toBuilder();
      _lastEvaluatedTime = $v.lastEvaluatedTime;
      _nextToken = $v.nextToken;
      _spotFleetRequestId = $v.spotFleetRequestId;
      _startTime = $v.startTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotFleetRequestHistoryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotFleetRequestHistoryResponse;
  }

  @override
  void update(
      void Function(DescribeSpotFleetRequestHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotFleetRequestHistoryResponse build() => _build();

  _$DescribeSpotFleetRequestHistoryResponse _build() {
    _$DescribeSpotFleetRequestHistoryResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotFleetRequestHistoryResponse._(
              historyRecords: _historyRecords?.build(),
              lastEvaluatedTime: lastEvaluatedTime,
              nextToken: nextToken,
              spotFleetRequestId: spotFleetRequestId,
              startTime: startTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'historyRecords';
        _historyRecords?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotFleetRequestHistoryResponse',
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
