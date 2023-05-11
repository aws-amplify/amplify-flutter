// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_drift_detection_status_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackDriftDetectionStatusOutput
    extends DescribeStackDriftDetectionStatusOutput {
  @override
  final String stackId;
  @override
  final String stackDriftDetectionId;
  @override
  final _i2.StackDriftStatus? stackDriftStatus;
  @override
  final _i3.StackDriftDetectionStatus detectionStatus;
  @override
  final String? detectionStatusReason;
  @override
  final int? driftedStackResourceCount;
  @override
  final DateTime timestamp;

  factory _$DescribeStackDriftDetectionStatusOutput(
          [void Function(DescribeStackDriftDetectionStatusOutputBuilder)?
              updates]) =>
      (new DescribeStackDriftDetectionStatusOutputBuilder()..update(updates))
          ._build();

  _$DescribeStackDriftDetectionStatusOutput._(
      {required this.stackId,
      required this.stackDriftDetectionId,
      this.stackDriftStatus,
      required this.detectionStatus,
      this.detectionStatusReason,
      this.driftedStackResourceCount,
      required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackId, r'DescribeStackDriftDetectionStatusOutput', 'stackId');
    BuiltValueNullFieldError.checkNotNull(stackDriftDetectionId,
        r'DescribeStackDriftDetectionStatusOutput', 'stackDriftDetectionId');
    BuiltValueNullFieldError.checkNotNull(detectionStatus,
        r'DescribeStackDriftDetectionStatusOutput', 'detectionStatus');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'DescribeStackDriftDetectionStatusOutput', 'timestamp');
  }

  @override
  DescribeStackDriftDetectionStatusOutput rebuild(
          void Function(DescribeStackDriftDetectionStatusOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackDriftDetectionStatusOutputBuilder toBuilder() =>
      new DescribeStackDriftDetectionStatusOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackDriftDetectionStatusOutput &&
        stackId == other.stackId &&
        stackDriftDetectionId == other.stackDriftDetectionId &&
        stackDriftStatus == other.stackDriftStatus &&
        detectionStatus == other.detectionStatus &&
        detectionStatusReason == other.detectionStatusReason &&
        driftedStackResourceCount == other.driftedStackResourceCount &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, stackDriftDetectionId.hashCode);
    _$hash = $jc(_$hash, stackDriftStatus.hashCode);
    _$hash = $jc(_$hash, detectionStatus.hashCode);
    _$hash = $jc(_$hash, detectionStatusReason.hashCode);
    _$hash = $jc(_$hash, driftedStackResourceCount.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackDriftDetectionStatusOutputBuilder
    implements
        Builder<DescribeStackDriftDetectionStatusOutput,
            DescribeStackDriftDetectionStatusOutputBuilder> {
  _$DescribeStackDriftDetectionStatusOutput? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _stackDriftDetectionId;
  String? get stackDriftDetectionId => _$this._stackDriftDetectionId;
  set stackDriftDetectionId(String? stackDriftDetectionId) =>
      _$this._stackDriftDetectionId = stackDriftDetectionId;

  _i2.StackDriftStatus? _stackDriftStatus;
  _i2.StackDriftStatus? get stackDriftStatus => _$this._stackDriftStatus;
  set stackDriftStatus(_i2.StackDriftStatus? stackDriftStatus) =>
      _$this._stackDriftStatus = stackDriftStatus;

  _i3.StackDriftDetectionStatus? _detectionStatus;
  _i3.StackDriftDetectionStatus? get detectionStatus => _$this._detectionStatus;
  set detectionStatus(_i3.StackDriftDetectionStatus? detectionStatus) =>
      _$this._detectionStatus = detectionStatus;

  String? _detectionStatusReason;
  String? get detectionStatusReason => _$this._detectionStatusReason;
  set detectionStatusReason(String? detectionStatusReason) =>
      _$this._detectionStatusReason = detectionStatusReason;

  int? _driftedStackResourceCount;
  int? get driftedStackResourceCount => _$this._driftedStackResourceCount;
  set driftedStackResourceCount(int? driftedStackResourceCount) =>
      _$this._driftedStackResourceCount = driftedStackResourceCount;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DescribeStackDriftDetectionStatusOutputBuilder() {
    DescribeStackDriftDetectionStatusOutput._init(this);
  }

  DescribeStackDriftDetectionStatusOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _stackDriftDetectionId = $v.stackDriftDetectionId;
      _stackDriftStatus = $v.stackDriftStatus;
      _detectionStatus = $v.detectionStatus;
      _detectionStatusReason = $v.detectionStatusReason;
      _driftedStackResourceCount = $v.driftedStackResourceCount;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackDriftDetectionStatusOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackDriftDetectionStatusOutput;
  }

  @override
  void update(
      void Function(DescribeStackDriftDetectionStatusOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackDriftDetectionStatusOutput build() => _build();

  _$DescribeStackDriftDetectionStatusOutput _build() {
    final _$result = _$v ??
        new _$DescribeStackDriftDetectionStatusOutput._(
            stackId: BuiltValueNullFieldError.checkNotNull(
                stackId, r'DescribeStackDriftDetectionStatusOutput', 'stackId'),
            stackDriftDetectionId: BuiltValueNullFieldError.checkNotNull(
                stackDriftDetectionId,
                r'DescribeStackDriftDetectionStatusOutput',
                'stackDriftDetectionId'),
            stackDriftStatus: stackDriftStatus,
            detectionStatus: BuiltValueNullFieldError.checkNotNull(
                detectionStatus,
                r'DescribeStackDriftDetectionStatusOutput',
                'detectionStatus'),
            detectionStatusReason: detectionStatusReason,
            driftedStackResourceCount: driftedStackResourceCount,
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'DescribeStackDriftDetectionStatusOutput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
