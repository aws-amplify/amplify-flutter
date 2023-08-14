// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlowLog extends FlowLog {
  @override
  final DateTime? creationTime;
  @override
  final String? deliverLogsErrorMessage;
  @override
  final String? deliverLogsPermissionArn;
  @override
  final String? deliverCrossAccountRole;
  @override
  final String? deliverLogsStatus;
  @override
  final String? flowLogId;
  @override
  final String? flowLogStatus;
  @override
  final String? logGroupName;
  @override
  final String? resourceId;
  @override
  final TrafficType? trafficType;
  @override
  final LogDestinationType? logDestinationType;
  @override
  final String? logDestination;
  @override
  final String? logFormat;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final int maxAggregationInterval;
  @override
  final DestinationOptionsResponse? destinationOptions;

  factory _$FlowLog([void Function(FlowLogBuilder)? updates]) =>
      (new FlowLogBuilder()..update(updates))._build();

  _$FlowLog._(
      {this.creationTime,
      this.deliverLogsErrorMessage,
      this.deliverLogsPermissionArn,
      this.deliverCrossAccountRole,
      this.deliverLogsStatus,
      this.flowLogId,
      this.flowLogStatus,
      this.logGroupName,
      this.resourceId,
      this.trafficType,
      this.logDestinationType,
      this.logDestination,
      this.logFormat,
      this.tags,
      required this.maxAggregationInterval,
      this.destinationOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxAggregationInterval, r'FlowLog', 'maxAggregationInterval');
  }

  @override
  FlowLog rebuild(void Function(FlowLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowLogBuilder toBuilder() => new FlowLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowLog &&
        creationTime == other.creationTime &&
        deliverLogsErrorMessage == other.deliverLogsErrorMessage &&
        deliverLogsPermissionArn == other.deliverLogsPermissionArn &&
        deliverCrossAccountRole == other.deliverCrossAccountRole &&
        deliverLogsStatus == other.deliverLogsStatus &&
        flowLogId == other.flowLogId &&
        flowLogStatus == other.flowLogStatus &&
        logGroupName == other.logGroupName &&
        resourceId == other.resourceId &&
        trafficType == other.trafficType &&
        logDestinationType == other.logDestinationType &&
        logDestination == other.logDestination &&
        logFormat == other.logFormat &&
        tags == other.tags &&
        maxAggregationInterval == other.maxAggregationInterval &&
        destinationOptions == other.destinationOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, deliverLogsErrorMessage.hashCode);
    _$hash = $jc(_$hash, deliverLogsPermissionArn.hashCode);
    _$hash = $jc(_$hash, deliverCrossAccountRole.hashCode);
    _$hash = $jc(_$hash, deliverLogsStatus.hashCode);
    _$hash = $jc(_$hash, flowLogId.hashCode);
    _$hash = $jc(_$hash, flowLogStatus.hashCode);
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, trafficType.hashCode);
    _$hash = $jc(_$hash, logDestinationType.hashCode);
    _$hash = $jc(_$hash, logDestination.hashCode);
    _$hash = $jc(_$hash, logFormat.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, maxAggregationInterval.hashCode);
    _$hash = $jc(_$hash, destinationOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FlowLogBuilder implements Builder<FlowLog, FlowLogBuilder> {
  _$FlowLog? _$v;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _deliverLogsErrorMessage;
  String? get deliverLogsErrorMessage => _$this._deliverLogsErrorMessage;
  set deliverLogsErrorMessage(String? deliverLogsErrorMessage) =>
      _$this._deliverLogsErrorMessage = deliverLogsErrorMessage;

  String? _deliverLogsPermissionArn;
  String? get deliverLogsPermissionArn => _$this._deliverLogsPermissionArn;
  set deliverLogsPermissionArn(String? deliverLogsPermissionArn) =>
      _$this._deliverLogsPermissionArn = deliverLogsPermissionArn;

  String? _deliverCrossAccountRole;
  String? get deliverCrossAccountRole => _$this._deliverCrossAccountRole;
  set deliverCrossAccountRole(String? deliverCrossAccountRole) =>
      _$this._deliverCrossAccountRole = deliverCrossAccountRole;

  String? _deliverLogsStatus;
  String? get deliverLogsStatus => _$this._deliverLogsStatus;
  set deliverLogsStatus(String? deliverLogsStatus) =>
      _$this._deliverLogsStatus = deliverLogsStatus;

  String? _flowLogId;
  String? get flowLogId => _$this._flowLogId;
  set flowLogId(String? flowLogId) => _$this._flowLogId = flowLogId;

  String? _flowLogStatus;
  String? get flowLogStatus => _$this._flowLogStatus;
  set flowLogStatus(String? flowLogStatus) =>
      _$this._flowLogStatus = flowLogStatus;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  TrafficType? _trafficType;
  TrafficType? get trafficType => _$this._trafficType;
  set trafficType(TrafficType? trafficType) =>
      _$this._trafficType = trafficType;

  LogDestinationType? _logDestinationType;
  LogDestinationType? get logDestinationType => _$this._logDestinationType;
  set logDestinationType(LogDestinationType? logDestinationType) =>
      _$this._logDestinationType = logDestinationType;

  String? _logDestination;
  String? get logDestination => _$this._logDestination;
  set logDestination(String? logDestination) =>
      _$this._logDestination = logDestination;

  String? _logFormat;
  String? get logFormat => _$this._logFormat;
  set logFormat(String? logFormat) => _$this._logFormat = logFormat;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  int? _maxAggregationInterval;
  int? get maxAggregationInterval => _$this._maxAggregationInterval;
  set maxAggregationInterval(int? maxAggregationInterval) =>
      _$this._maxAggregationInterval = maxAggregationInterval;

  DestinationOptionsResponseBuilder? _destinationOptions;
  DestinationOptionsResponseBuilder get destinationOptions =>
      _$this._destinationOptions ??= new DestinationOptionsResponseBuilder();
  set destinationOptions(
          DestinationOptionsResponseBuilder? destinationOptions) =>
      _$this._destinationOptions = destinationOptions;

  FlowLogBuilder() {
    FlowLog._init(this);
  }

  FlowLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creationTime = $v.creationTime;
      _deliverLogsErrorMessage = $v.deliverLogsErrorMessage;
      _deliverLogsPermissionArn = $v.deliverLogsPermissionArn;
      _deliverCrossAccountRole = $v.deliverCrossAccountRole;
      _deliverLogsStatus = $v.deliverLogsStatus;
      _flowLogId = $v.flowLogId;
      _flowLogStatus = $v.flowLogStatus;
      _logGroupName = $v.logGroupName;
      _resourceId = $v.resourceId;
      _trafficType = $v.trafficType;
      _logDestinationType = $v.logDestinationType;
      _logDestination = $v.logDestination;
      _logFormat = $v.logFormat;
      _tags = $v.tags?.toBuilder();
      _maxAggregationInterval = $v.maxAggregationInterval;
      _destinationOptions = $v.destinationOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowLog other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlowLog;
  }

  @override
  void update(void Function(FlowLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowLog build() => _build();

  _$FlowLog _build() {
    _$FlowLog _$result;
    try {
      _$result = _$v ??
          new _$FlowLog._(
              creationTime: creationTime,
              deliverLogsErrorMessage: deliverLogsErrorMessage,
              deliverLogsPermissionArn: deliverLogsPermissionArn,
              deliverCrossAccountRole: deliverCrossAccountRole,
              deliverLogsStatus: deliverLogsStatus,
              flowLogId: flowLogId,
              flowLogStatus: flowLogStatus,
              logGroupName: logGroupName,
              resourceId: resourceId,
              trafficType: trafficType,
              logDestinationType: logDestinationType,
              logDestination: logDestination,
              logFormat: logFormat,
              tags: _tags?.build(),
              maxAggregationInterval: BuiltValueNullFieldError.checkNotNull(
                  maxAggregationInterval, r'FlowLog', 'maxAggregationInterval'),
              destinationOptions: _destinationOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'destinationOptions';
        _destinationOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlowLog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
