// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_set_drift_detection_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetDriftDetectionDetails extends StackSetDriftDetectionDetails {
  @override
  final _i2.StackSetDriftStatus? driftStatus;
  @override
  final _i3.StackSetDriftDetectionStatus? driftDetectionStatus;
  @override
  final DateTime? lastDriftCheckTimestamp;
  @override
  final int totalStackInstancesCount;
  @override
  final int driftedStackInstancesCount;
  @override
  final int inSyncStackInstancesCount;
  @override
  final int inProgressStackInstancesCount;
  @override
  final int failedStackInstancesCount;

  factory _$StackSetDriftDetectionDetails(
          [void Function(StackSetDriftDetectionDetailsBuilder)? updates]) =>
      (new StackSetDriftDetectionDetailsBuilder()..update(updates))._build();

  _$StackSetDriftDetectionDetails._(
      {this.driftStatus,
      this.driftDetectionStatus,
      this.lastDriftCheckTimestamp,
      required this.totalStackInstancesCount,
      required this.driftedStackInstancesCount,
      required this.inSyncStackInstancesCount,
      required this.inProgressStackInstancesCount,
      required this.failedStackInstancesCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalStackInstancesCount,
        r'StackSetDriftDetectionDetails', 'totalStackInstancesCount');
    BuiltValueNullFieldError.checkNotNull(driftedStackInstancesCount,
        r'StackSetDriftDetectionDetails', 'driftedStackInstancesCount');
    BuiltValueNullFieldError.checkNotNull(inSyncStackInstancesCount,
        r'StackSetDriftDetectionDetails', 'inSyncStackInstancesCount');
    BuiltValueNullFieldError.checkNotNull(inProgressStackInstancesCount,
        r'StackSetDriftDetectionDetails', 'inProgressStackInstancesCount');
    BuiltValueNullFieldError.checkNotNull(failedStackInstancesCount,
        r'StackSetDriftDetectionDetails', 'failedStackInstancesCount');
  }

  @override
  StackSetDriftDetectionDetails rebuild(
          void Function(StackSetDriftDetectionDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetDriftDetectionDetailsBuilder toBuilder() =>
      new StackSetDriftDetectionDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetDriftDetectionDetails &&
        driftStatus == other.driftStatus &&
        driftDetectionStatus == other.driftDetectionStatus &&
        lastDriftCheckTimestamp == other.lastDriftCheckTimestamp &&
        totalStackInstancesCount == other.totalStackInstancesCount &&
        driftedStackInstancesCount == other.driftedStackInstancesCount &&
        inSyncStackInstancesCount == other.inSyncStackInstancesCount &&
        inProgressStackInstancesCount == other.inProgressStackInstancesCount &&
        failedStackInstancesCount == other.failedStackInstancesCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, driftStatus.hashCode);
    _$hash = $jc(_$hash, driftDetectionStatus.hashCode);
    _$hash = $jc(_$hash, lastDriftCheckTimestamp.hashCode);
    _$hash = $jc(_$hash, totalStackInstancesCount.hashCode);
    _$hash = $jc(_$hash, driftedStackInstancesCount.hashCode);
    _$hash = $jc(_$hash, inSyncStackInstancesCount.hashCode);
    _$hash = $jc(_$hash, inProgressStackInstancesCount.hashCode);
    _$hash = $jc(_$hash, failedStackInstancesCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetDriftDetectionDetailsBuilder
    implements
        Builder<StackSetDriftDetectionDetails,
            StackSetDriftDetectionDetailsBuilder> {
  _$StackSetDriftDetectionDetails? _$v;

  _i2.StackSetDriftStatus? _driftStatus;
  _i2.StackSetDriftStatus? get driftStatus => _$this._driftStatus;
  set driftStatus(_i2.StackSetDriftStatus? driftStatus) =>
      _$this._driftStatus = driftStatus;

  _i3.StackSetDriftDetectionStatus? _driftDetectionStatus;
  _i3.StackSetDriftDetectionStatus? get driftDetectionStatus =>
      _$this._driftDetectionStatus;
  set driftDetectionStatus(
          _i3.StackSetDriftDetectionStatus? driftDetectionStatus) =>
      _$this._driftDetectionStatus = driftDetectionStatus;

  DateTime? _lastDriftCheckTimestamp;
  DateTime? get lastDriftCheckTimestamp => _$this._lastDriftCheckTimestamp;
  set lastDriftCheckTimestamp(DateTime? lastDriftCheckTimestamp) =>
      _$this._lastDriftCheckTimestamp = lastDriftCheckTimestamp;

  int? _totalStackInstancesCount;
  int? get totalStackInstancesCount => _$this._totalStackInstancesCount;
  set totalStackInstancesCount(int? totalStackInstancesCount) =>
      _$this._totalStackInstancesCount = totalStackInstancesCount;

  int? _driftedStackInstancesCount;
  int? get driftedStackInstancesCount => _$this._driftedStackInstancesCount;
  set driftedStackInstancesCount(int? driftedStackInstancesCount) =>
      _$this._driftedStackInstancesCount = driftedStackInstancesCount;

  int? _inSyncStackInstancesCount;
  int? get inSyncStackInstancesCount => _$this._inSyncStackInstancesCount;
  set inSyncStackInstancesCount(int? inSyncStackInstancesCount) =>
      _$this._inSyncStackInstancesCount = inSyncStackInstancesCount;

  int? _inProgressStackInstancesCount;
  int? get inProgressStackInstancesCount =>
      _$this._inProgressStackInstancesCount;
  set inProgressStackInstancesCount(int? inProgressStackInstancesCount) =>
      _$this._inProgressStackInstancesCount = inProgressStackInstancesCount;

  int? _failedStackInstancesCount;
  int? get failedStackInstancesCount => _$this._failedStackInstancesCount;
  set failedStackInstancesCount(int? failedStackInstancesCount) =>
      _$this._failedStackInstancesCount = failedStackInstancesCount;

  StackSetDriftDetectionDetailsBuilder() {
    StackSetDriftDetectionDetails._init(this);
  }

  StackSetDriftDetectionDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _driftStatus = $v.driftStatus;
      _driftDetectionStatus = $v.driftDetectionStatus;
      _lastDriftCheckTimestamp = $v.lastDriftCheckTimestamp;
      _totalStackInstancesCount = $v.totalStackInstancesCount;
      _driftedStackInstancesCount = $v.driftedStackInstancesCount;
      _inSyncStackInstancesCount = $v.inSyncStackInstancesCount;
      _inProgressStackInstancesCount = $v.inProgressStackInstancesCount;
      _failedStackInstancesCount = $v.failedStackInstancesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetDriftDetectionDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetDriftDetectionDetails;
  }

  @override
  void update(void Function(StackSetDriftDetectionDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetDriftDetectionDetails build() => _build();

  _$StackSetDriftDetectionDetails _build() {
    final _$result = _$v ??
        new _$StackSetDriftDetectionDetails._(
            driftStatus: driftStatus,
            driftDetectionStatus: driftDetectionStatus,
            lastDriftCheckTimestamp: lastDriftCheckTimestamp,
            totalStackInstancesCount: BuiltValueNullFieldError.checkNotNull(
                totalStackInstancesCount, r'StackSetDriftDetectionDetails', 'totalStackInstancesCount'),
            driftedStackInstancesCount: BuiltValueNullFieldError.checkNotNull(
                driftedStackInstancesCount,
                r'StackSetDriftDetectionDetails',
                'driftedStackInstancesCount'),
            inSyncStackInstancesCount: BuiltValueNullFieldError.checkNotNull(
                inSyncStackInstancesCount, r'StackSetDriftDetectionDetails', 'inSyncStackInstancesCount'),
            inProgressStackInstancesCount: BuiltValueNullFieldError.checkNotNull(
                inProgressStackInstancesCount,
                r'StackSetDriftDetectionDetails',
                'inProgressStackInstancesCount'),
            failedStackInstancesCount: BuiltValueNullFieldError.checkNotNull(
                failedStackInstancesCount,
                r'StackSetDriftDetectionDetails',
                'failedStackInstancesCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
