// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregated_source_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregatedSourceStatus extends AggregatedSourceStatus {
  @override
  final String? sourceId;
  @override
  final _i2.AggregatedSourceType? sourceType;
  @override
  final String? awsRegion;
  @override
  final _i3.AggregatedSourceStatusType? lastUpdateStatus;
  @override
  final DateTime? lastUpdateTime;
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;

  factory _$AggregatedSourceStatus(
          [void Function(AggregatedSourceStatusBuilder)? updates]) =>
      (new AggregatedSourceStatusBuilder()..update(updates))._build();

  _$AggregatedSourceStatus._(
      {this.sourceId,
      this.sourceType,
      this.awsRegion,
      this.lastUpdateStatus,
      this.lastUpdateTime,
      this.lastErrorCode,
      this.lastErrorMessage})
      : super._();

  @override
  AggregatedSourceStatus rebuild(
          void Function(AggregatedSourceStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregatedSourceStatusBuilder toBuilder() =>
      new AggregatedSourceStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregatedSourceStatus &&
        sourceId == other.sourceId &&
        sourceType == other.sourceType &&
        awsRegion == other.awsRegion &&
        lastUpdateStatus == other.lastUpdateStatus &&
        lastUpdateTime == other.lastUpdateTime &&
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, lastUpdateStatus.hashCode);
    _$hash = $jc(_$hash, lastUpdateTime.hashCode);
    _$hash = $jc(_$hash, lastErrorCode.hashCode);
    _$hash = $jc(_$hash, lastErrorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregatedSourceStatusBuilder
    implements Builder<AggregatedSourceStatus, AggregatedSourceStatusBuilder> {
  _$AggregatedSourceStatus? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  _i2.AggregatedSourceType? _sourceType;
  _i2.AggregatedSourceType? get sourceType => _$this._sourceType;
  set sourceType(_i2.AggregatedSourceType? sourceType) =>
      _$this._sourceType = sourceType;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i3.AggregatedSourceStatusType? _lastUpdateStatus;
  _i3.AggregatedSourceStatusType? get lastUpdateStatus =>
      _$this._lastUpdateStatus;
  set lastUpdateStatus(_i3.AggregatedSourceStatusType? lastUpdateStatus) =>
      _$this._lastUpdateStatus = lastUpdateStatus;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  AggregatedSourceStatusBuilder() {
    AggregatedSourceStatus._init(this);
  }

  AggregatedSourceStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _sourceType = $v.sourceType;
      _awsRegion = $v.awsRegion;
      _lastUpdateStatus = $v.lastUpdateStatus;
      _lastUpdateTime = $v.lastUpdateTime;
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregatedSourceStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregatedSourceStatus;
  }

  @override
  void update(void Function(AggregatedSourceStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregatedSourceStatus build() => _build();

  _$AggregatedSourceStatus _build() {
    final _$result = _$v ??
        new _$AggregatedSourceStatus._(
            sourceId: sourceId,
            sourceType: sourceType,
            awsRegion: awsRegion,
            lastUpdateStatus: lastUpdateStatus,
            lastUpdateTime: lastUpdateTime,
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
