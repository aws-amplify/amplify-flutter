// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackEvent extends StackEvent {
  @override
  final String stackId;
  @override
  final String eventId;
  @override
  final String stackName;
  @override
  final String? logicalResourceId;
  @override
  final String? physicalResourceId;
  @override
  final String? resourceType;
  @override
  final DateTime timestamp;
  @override
  final _i2.ResourceStatus? resourceStatus;
  @override
  final String? resourceStatusReason;
  @override
  final String? resourceProperties;
  @override
  final String? clientRequestToken;
  @override
  final String? hookType;
  @override
  final _i3.HookStatus? hookStatus;
  @override
  final String? hookStatusReason;
  @override
  final _i4.HookInvocationPoint? hookInvocationPoint;
  @override
  final _i5.HookFailureMode? hookFailureMode;

  factory _$StackEvent([void Function(StackEventBuilder)? updates]) =>
      (new StackEventBuilder()..update(updates))._build();

  _$StackEvent._(
      {required this.stackId,
      required this.eventId,
      required this.stackName,
      this.logicalResourceId,
      this.physicalResourceId,
      this.resourceType,
      required this.timestamp,
      this.resourceStatus,
      this.resourceStatusReason,
      this.resourceProperties,
      this.clientRequestToken,
      this.hookType,
      this.hookStatus,
      this.hookStatusReason,
      this.hookInvocationPoint,
      this.hookFailureMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackId, r'StackEvent', 'stackId');
    BuiltValueNullFieldError.checkNotNull(eventId, r'StackEvent', 'eventId');
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'StackEvent', 'stackName');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'StackEvent', 'timestamp');
  }

  @override
  StackEvent rebuild(void Function(StackEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackEventBuilder toBuilder() => new StackEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackEvent &&
        stackId == other.stackId &&
        eventId == other.eventId &&
        stackName == other.stackName &&
        logicalResourceId == other.logicalResourceId &&
        physicalResourceId == other.physicalResourceId &&
        resourceType == other.resourceType &&
        timestamp == other.timestamp &&
        resourceStatus == other.resourceStatus &&
        resourceStatusReason == other.resourceStatusReason &&
        resourceProperties == other.resourceProperties &&
        clientRequestToken == other.clientRequestToken &&
        hookType == other.hookType &&
        hookStatus == other.hookStatus &&
        hookStatusReason == other.hookStatusReason &&
        hookInvocationPoint == other.hookInvocationPoint &&
        hookFailureMode == other.hookFailureMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, resourceStatus.hashCode);
    _$hash = $jc(_$hash, resourceStatusReason.hashCode);
    _$hash = $jc(_$hash, resourceProperties.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jc(_$hash, hookType.hashCode);
    _$hash = $jc(_$hash, hookStatus.hashCode);
    _$hash = $jc(_$hash, hookStatusReason.hashCode);
    _$hash = $jc(_$hash, hookInvocationPoint.hashCode);
    _$hash = $jc(_$hash, hookFailureMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackEventBuilder implements Builder<StackEvent, StackEventBuilder> {
  _$StackEvent? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  String? _physicalResourceId;
  String? get physicalResourceId => _$this._physicalResourceId;
  set physicalResourceId(String? physicalResourceId) =>
      _$this._physicalResourceId = physicalResourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  _i2.ResourceStatus? _resourceStatus;
  _i2.ResourceStatus? get resourceStatus => _$this._resourceStatus;
  set resourceStatus(_i2.ResourceStatus? resourceStatus) =>
      _$this._resourceStatus = resourceStatus;

  String? _resourceStatusReason;
  String? get resourceStatusReason => _$this._resourceStatusReason;
  set resourceStatusReason(String? resourceStatusReason) =>
      _$this._resourceStatusReason = resourceStatusReason;

  String? _resourceProperties;
  String? get resourceProperties => _$this._resourceProperties;
  set resourceProperties(String? resourceProperties) =>
      _$this._resourceProperties = resourceProperties;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  String? _hookType;
  String? get hookType => _$this._hookType;
  set hookType(String? hookType) => _$this._hookType = hookType;

  _i3.HookStatus? _hookStatus;
  _i3.HookStatus? get hookStatus => _$this._hookStatus;
  set hookStatus(_i3.HookStatus? hookStatus) => _$this._hookStatus = hookStatus;

  String? _hookStatusReason;
  String? get hookStatusReason => _$this._hookStatusReason;
  set hookStatusReason(String? hookStatusReason) =>
      _$this._hookStatusReason = hookStatusReason;

  _i4.HookInvocationPoint? _hookInvocationPoint;
  _i4.HookInvocationPoint? get hookInvocationPoint =>
      _$this._hookInvocationPoint;
  set hookInvocationPoint(_i4.HookInvocationPoint? hookInvocationPoint) =>
      _$this._hookInvocationPoint = hookInvocationPoint;

  _i5.HookFailureMode? _hookFailureMode;
  _i5.HookFailureMode? get hookFailureMode => _$this._hookFailureMode;
  set hookFailureMode(_i5.HookFailureMode? hookFailureMode) =>
      _$this._hookFailureMode = hookFailureMode;

  StackEventBuilder() {
    StackEvent._init(this);
  }

  StackEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _eventId = $v.eventId;
      _stackName = $v.stackName;
      _logicalResourceId = $v.logicalResourceId;
      _physicalResourceId = $v.physicalResourceId;
      _resourceType = $v.resourceType;
      _timestamp = $v.timestamp;
      _resourceStatus = $v.resourceStatus;
      _resourceStatusReason = $v.resourceStatusReason;
      _resourceProperties = $v.resourceProperties;
      _clientRequestToken = $v.clientRequestToken;
      _hookType = $v.hookType;
      _hookStatus = $v.hookStatus;
      _hookStatusReason = $v.hookStatusReason;
      _hookInvocationPoint = $v.hookInvocationPoint;
      _hookFailureMode = $v.hookFailureMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackEvent;
  }

  @override
  void update(void Function(StackEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackEvent build() => _build();

  _$StackEvent _build() {
    final _$result = _$v ??
        new _$StackEvent._(
            stackId: BuiltValueNullFieldError.checkNotNull(
                stackId, r'StackEvent', 'stackId'),
            eventId: BuiltValueNullFieldError.checkNotNull(
                eventId, r'StackEvent', 'eventId'),
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'StackEvent', 'stackName'),
            logicalResourceId: logicalResourceId,
            physicalResourceId: physicalResourceId,
            resourceType: resourceType,
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'StackEvent', 'timestamp'),
            resourceStatus: resourceStatus,
            resourceStatusReason: resourceStatusReason,
            resourceProperties: resourceProperties,
            clientRequestToken: clientRequestToken,
            hookType: hookType,
            hookStatus: hookStatus,
            hookStatusReason: hookStatusReason,
            hookInvocationPoint: hookInvocationPoint,
            hookFailureMode: hookFailureMode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
