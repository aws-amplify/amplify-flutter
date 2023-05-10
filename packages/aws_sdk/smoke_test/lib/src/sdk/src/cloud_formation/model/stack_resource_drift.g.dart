// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_resource_drift;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackResourceDrift extends StackResourceDrift {
  @override
  final String stackId;
  @override
  final String logicalResourceId;
  @override
  final String? physicalResourceId;
  @override
  final _i6.BuiltList<_i2.PhysicalResourceIdContextKeyValuePair>?
      physicalResourceIdContext;
  @override
  final String resourceType;
  @override
  final String? expectedProperties;
  @override
  final String? actualProperties;
  @override
  final _i6.BuiltList<_i3.PropertyDifference>? propertyDifferences;
  @override
  final _i4.StackResourceDriftStatus stackResourceDriftStatus;
  @override
  final DateTime timestamp;
  @override
  final _i5.ModuleInfo? moduleInfo;

  factory _$StackResourceDrift(
          [void Function(StackResourceDriftBuilder)? updates]) =>
      (new StackResourceDriftBuilder()..update(updates))._build();

  _$StackResourceDrift._(
      {required this.stackId,
      required this.logicalResourceId,
      this.physicalResourceId,
      this.physicalResourceIdContext,
      required this.resourceType,
      this.expectedProperties,
      this.actualProperties,
      this.propertyDifferences,
      required this.stackResourceDriftStatus,
      required this.timestamp,
      this.moduleInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackId, r'StackResourceDrift', 'stackId');
    BuiltValueNullFieldError.checkNotNull(
        logicalResourceId, r'StackResourceDrift', 'logicalResourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'StackResourceDrift', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(stackResourceDriftStatus,
        r'StackResourceDrift', 'stackResourceDriftStatus');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'StackResourceDrift', 'timestamp');
  }

  @override
  StackResourceDrift rebuild(
          void Function(StackResourceDriftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackResourceDriftBuilder toBuilder() =>
      new StackResourceDriftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackResourceDrift &&
        stackId == other.stackId &&
        logicalResourceId == other.logicalResourceId &&
        physicalResourceId == other.physicalResourceId &&
        physicalResourceIdContext == other.physicalResourceIdContext &&
        resourceType == other.resourceType &&
        expectedProperties == other.expectedProperties &&
        actualProperties == other.actualProperties &&
        propertyDifferences == other.propertyDifferences &&
        stackResourceDriftStatus == other.stackResourceDriftStatus &&
        timestamp == other.timestamp &&
        moduleInfo == other.moduleInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceIdContext.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, expectedProperties.hashCode);
    _$hash = $jc(_$hash, actualProperties.hashCode);
    _$hash = $jc(_$hash, propertyDifferences.hashCode);
    _$hash = $jc(_$hash, stackResourceDriftStatus.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, moduleInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackResourceDriftBuilder
    implements Builder<StackResourceDrift, StackResourceDriftBuilder> {
  _$StackResourceDrift? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  String? _physicalResourceId;
  String? get physicalResourceId => _$this._physicalResourceId;
  set physicalResourceId(String? physicalResourceId) =>
      _$this._physicalResourceId = physicalResourceId;

  _i6.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>?
      _physicalResourceIdContext;
  _i6.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>
      get physicalResourceIdContext => _$this._physicalResourceIdContext ??=
          new _i6.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>();
  set physicalResourceIdContext(
          _i6.ListBuilder<_i2.PhysicalResourceIdContextKeyValuePair>?
              physicalResourceIdContext) =>
      _$this._physicalResourceIdContext = physicalResourceIdContext;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _expectedProperties;
  String? get expectedProperties => _$this._expectedProperties;
  set expectedProperties(String? expectedProperties) =>
      _$this._expectedProperties = expectedProperties;

  String? _actualProperties;
  String? get actualProperties => _$this._actualProperties;
  set actualProperties(String? actualProperties) =>
      _$this._actualProperties = actualProperties;

  _i6.ListBuilder<_i3.PropertyDifference>? _propertyDifferences;
  _i6.ListBuilder<_i3.PropertyDifference> get propertyDifferences =>
      _$this._propertyDifferences ??=
          new _i6.ListBuilder<_i3.PropertyDifference>();
  set propertyDifferences(
          _i6.ListBuilder<_i3.PropertyDifference>? propertyDifferences) =>
      _$this._propertyDifferences = propertyDifferences;

  _i4.StackResourceDriftStatus? _stackResourceDriftStatus;
  _i4.StackResourceDriftStatus? get stackResourceDriftStatus =>
      _$this._stackResourceDriftStatus;
  set stackResourceDriftStatus(
          _i4.StackResourceDriftStatus? stackResourceDriftStatus) =>
      _$this._stackResourceDriftStatus = stackResourceDriftStatus;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  _i5.ModuleInfoBuilder? _moduleInfo;
  _i5.ModuleInfoBuilder get moduleInfo =>
      _$this._moduleInfo ??= new _i5.ModuleInfoBuilder();
  set moduleInfo(_i5.ModuleInfoBuilder? moduleInfo) =>
      _$this._moduleInfo = moduleInfo;

  StackResourceDriftBuilder() {
    StackResourceDrift._init(this);
  }

  StackResourceDriftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _logicalResourceId = $v.logicalResourceId;
      _physicalResourceId = $v.physicalResourceId;
      _physicalResourceIdContext = $v.physicalResourceIdContext?.toBuilder();
      _resourceType = $v.resourceType;
      _expectedProperties = $v.expectedProperties;
      _actualProperties = $v.actualProperties;
      _propertyDifferences = $v.propertyDifferences?.toBuilder();
      _stackResourceDriftStatus = $v.stackResourceDriftStatus;
      _timestamp = $v.timestamp;
      _moduleInfo = $v.moduleInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackResourceDrift other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackResourceDrift;
  }

  @override
  void update(void Function(StackResourceDriftBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackResourceDrift build() => _build();

  _$StackResourceDrift _build() {
    _$StackResourceDrift _$result;
    try {
      _$result = _$v ??
          new _$StackResourceDrift._(
              stackId: BuiltValueNullFieldError.checkNotNull(
                  stackId, r'StackResourceDrift', 'stackId'),
              logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                  logicalResourceId,
                  r'StackResourceDrift',
                  'logicalResourceId'),
              physicalResourceId: physicalResourceId,
              physicalResourceIdContext: _physicalResourceIdContext?.build(),
              resourceType: BuiltValueNullFieldError.checkNotNull(
                  resourceType, r'StackResourceDrift', 'resourceType'),
              expectedProperties: expectedProperties,
              actualProperties: actualProperties,
              propertyDifferences: _propertyDifferences?.build(),
              stackResourceDriftStatus: BuiltValueNullFieldError.checkNotNull(
                  stackResourceDriftStatus,
                  r'StackResourceDrift',
                  'stackResourceDriftStatus'),
              timestamp: BuiltValueNullFieldError.checkNotNull(
                  timestamp, r'StackResourceDrift', 'timestamp'),
              moduleInfo: _moduleInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'physicalResourceIdContext';
        _physicalResourceIdContext?.build();

        _$failedField = 'propertyDifferences';
        _propertyDifferences?.build();

        _$failedField = 'moduleInfo';
        _moduleInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackResourceDrift', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
