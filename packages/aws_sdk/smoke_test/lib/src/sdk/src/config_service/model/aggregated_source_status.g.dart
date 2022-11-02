// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregated_source_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregatedSourceStatus extends AggregatedSourceStatus {
  @override
  final String? awsRegion;
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;
  @override
  final _i2.AggregatedSourceStatusType? lastUpdateStatus;
  @override
  final DateTime? lastUpdateTime;
  @override
  final String? sourceId;
  @override
  final _i3.AggregatedSourceType? sourceType;

  factory _$AggregatedSourceStatus(
          [void Function(AggregatedSourceStatusBuilder)? updates]) =>
      (new AggregatedSourceStatusBuilder()..update(updates))._build();

  _$AggregatedSourceStatus._(
      {this.awsRegion,
      this.lastErrorCode,
      this.lastErrorMessage,
      this.lastUpdateStatus,
      this.lastUpdateTime,
      this.sourceId,
      this.sourceType})
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
        awsRegion == other.awsRegion &&
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage &&
        lastUpdateStatus == other.lastUpdateStatus &&
        lastUpdateTime == other.lastUpdateTime &&
        sourceId == other.sourceId &&
        sourceType == other.sourceType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, awsRegion.hashCode), lastErrorCode.hashCode),
                        lastErrorMessage.hashCode),
                    lastUpdateStatus.hashCode),
                lastUpdateTime.hashCode),
            sourceId.hashCode),
        sourceType.hashCode));
  }
}

class AggregatedSourceStatusBuilder
    implements Builder<AggregatedSourceStatus, AggregatedSourceStatusBuilder> {
  _$AggregatedSourceStatus? _$v;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  _i2.AggregatedSourceStatusType? _lastUpdateStatus;
  _i2.AggregatedSourceStatusType? get lastUpdateStatus =>
      _$this._lastUpdateStatus;
  set lastUpdateStatus(_i2.AggregatedSourceStatusType? lastUpdateStatus) =>
      _$this._lastUpdateStatus = lastUpdateStatus;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  _i3.AggregatedSourceType? _sourceType;
  _i3.AggregatedSourceType? get sourceType => _$this._sourceType;
  set sourceType(_i3.AggregatedSourceType? sourceType) =>
      _$this._sourceType = sourceType;

  AggregatedSourceStatusBuilder() {
    AggregatedSourceStatus._init(this);
  }

  AggregatedSourceStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsRegion = $v.awsRegion;
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _lastUpdateStatus = $v.lastUpdateStatus;
      _lastUpdateTime = $v.lastUpdateTime;
      _sourceId = $v.sourceId;
      _sourceType = $v.sourceType;
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
            awsRegion: awsRegion,
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage,
            lastUpdateStatus: lastUpdateStatus,
            lastUpdateTime: lastUpdateTime,
            sourceId: sourceId,
            sourceType: sourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
