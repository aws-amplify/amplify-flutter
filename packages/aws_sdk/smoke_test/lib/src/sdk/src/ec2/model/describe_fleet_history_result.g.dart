// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fleet_history_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetHistoryResult extends DescribeFleetHistoryResult {
  @override
  final _i2.BuiltList<HistoryRecordEntry>? historyRecords;
  @override
  final DateTime? lastEvaluatedTime;
  @override
  final String? nextToken;
  @override
  final String? fleetId;
  @override
  final DateTime? startTime;

  factory _$DescribeFleetHistoryResult(
          [void Function(DescribeFleetHistoryResultBuilder)? updates]) =>
      (new DescribeFleetHistoryResultBuilder()..update(updates))._build();

  _$DescribeFleetHistoryResult._(
      {this.historyRecords,
      this.lastEvaluatedTime,
      this.nextToken,
      this.fleetId,
      this.startTime})
      : super._();

  @override
  DescribeFleetHistoryResult rebuild(
          void Function(DescribeFleetHistoryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetHistoryResultBuilder toBuilder() =>
      new DescribeFleetHistoryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetHistoryResult &&
        historyRecords == other.historyRecords &&
        lastEvaluatedTime == other.lastEvaluatedTime &&
        nextToken == other.nextToken &&
        fleetId == other.fleetId &&
        startTime == other.startTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, historyRecords.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedTime.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFleetHistoryResultBuilder
    implements
        Builder<DescribeFleetHistoryResult, DescribeFleetHistoryResultBuilder> {
  _$DescribeFleetHistoryResult? _$v;

  _i2.ListBuilder<HistoryRecordEntry>? _historyRecords;
  _i2.ListBuilder<HistoryRecordEntry> get historyRecords =>
      _$this._historyRecords ??= new _i2.ListBuilder<HistoryRecordEntry>();
  set historyRecords(_i2.ListBuilder<HistoryRecordEntry>? historyRecords) =>
      _$this._historyRecords = historyRecords;

  DateTime? _lastEvaluatedTime;
  DateTime? get lastEvaluatedTime => _$this._lastEvaluatedTime;
  set lastEvaluatedTime(DateTime? lastEvaluatedTime) =>
      _$this._lastEvaluatedTime = lastEvaluatedTime;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DescribeFleetHistoryResultBuilder();

  DescribeFleetHistoryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _historyRecords = $v.historyRecords?.toBuilder();
      _lastEvaluatedTime = $v.lastEvaluatedTime;
      _nextToken = $v.nextToken;
      _fleetId = $v.fleetId;
      _startTime = $v.startTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFleetHistoryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetHistoryResult;
  }

  @override
  void update(void Function(DescribeFleetHistoryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetHistoryResult build() => _build();

  _$DescribeFleetHistoryResult _build() {
    _$DescribeFleetHistoryResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFleetHistoryResult._(
              historyRecords: _historyRecords?.build(),
              lastEvaluatedTime: lastEvaluatedTime,
              nextToken: nextToken,
              fleetId: fleetId,
              startTime: startTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'historyRecords';
        _historyRecords?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFleetHistoryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
