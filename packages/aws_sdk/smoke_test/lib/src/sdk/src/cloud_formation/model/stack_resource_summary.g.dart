// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_resource_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackResourceSummary extends StackResourceSummary {
  @override
  final String logicalResourceId;
  @override
  final String? physicalResourceId;
  @override
  final String resourceType;
  @override
  final DateTime lastUpdatedTimestamp;
  @override
  final _i2.ResourceStatus resourceStatus;
  @override
  final String? resourceStatusReason;
  @override
  final _i3.StackResourceDriftInformationSummary? driftInformation;
  @override
  final _i4.ModuleInfo? moduleInfo;

  factory _$StackResourceSummary(
          [void Function(StackResourceSummaryBuilder)? updates]) =>
      (new StackResourceSummaryBuilder()..update(updates))._build();

  _$StackResourceSummary._(
      {required this.logicalResourceId,
      this.physicalResourceId,
      required this.resourceType,
      required this.lastUpdatedTimestamp,
      required this.resourceStatus,
      this.resourceStatusReason,
      this.driftInformation,
      this.moduleInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logicalResourceId, r'StackResourceSummary', 'logicalResourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'StackResourceSummary', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdatedTimestamp, r'StackResourceSummary', 'lastUpdatedTimestamp');
    BuiltValueNullFieldError.checkNotNull(
        resourceStatus, r'StackResourceSummary', 'resourceStatus');
  }

  @override
  StackResourceSummary rebuild(
          void Function(StackResourceSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackResourceSummaryBuilder toBuilder() =>
      new StackResourceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackResourceSummary &&
        logicalResourceId == other.logicalResourceId &&
        physicalResourceId == other.physicalResourceId &&
        resourceType == other.resourceType &&
        lastUpdatedTimestamp == other.lastUpdatedTimestamp &&
        resourceStatus == other.resourceStatus &&
        resourceStatusReason == other.resourceStatusReason &&
        driftInformation == other.driftInformation &&
        moduleInfo == other.moduleInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTimestamp.hashCode);
    _$hash = $jc(_$hash, resourceStatus.hashCode);
    _$hash = $jc(_$hash, resourceStatusReason.hashCode);
    _$hash = $jc(_$hash, driftInformation.hashCode);
    _$hash = $jc(_$hash, moduleInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackResourceSummaryBuilder
    implements Builder<StackResourceSummary, StackResourceSummaryBuilder> {
  _$StackResourceSummary? _$v;

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

  DateTime? _lastUpdatedTimestamp;
  DateTime? get lastUpdatedTimestamp => _$this._lastUpdatedTimestamp;
  set lastUpdatedTimestamp(DateTime? lastUpdatedTimestamp) =>
      _$this._lastUpdatedTimestamp = lastUpdatedTimestamp;

  _i2.ResourceStatus? _resourceStatus;
  _i2.ResourceStatus? get resourceStatus => _$this._resourceStatus;
  set resourceStatus(_i2.ResourceStatus? resourceStatus) =>
      _$this._resourceStatus = resourceStatus;

  String? _resourceStatusReason;
  String? get resourceStatusReason => _$this._resourceStatusReason;
  set resourceStatusReason(String? resourceStatusReason) =>
      _$this._resourceStatusReason = resourceStatusReason;

  _i3.StackResourceDriftInformationSummaryBuilder? _driftInformation;
  _i3.StackResourceDriftInformationSummaryBuilder get driftInformation =>
      _$this._driftInformation ??=
          new _i3.StackResourceDriftInformationSummaryBuilder();
  set driftInformation(
          _i3.StackResourceDriftInformationSummaryBuilder? driftInformation) =>
      _$this._driftInformation = driftInformation;

  _i4.ModuleInfoBuilder? _moduleInfo;
  _i4.ModuleInfoBuilder get moduleInfo =>
      _$this._moduleInfo ??= new _i4.ModuleInfoBuilder();
  set moduleInfo(_i4.ModuleInfoBuilder? moduleInfo) =>
      _$this._moduleInfo = moduleInfo;

  StackResourceSummaryBuilder() {
    StackResourceSummary._init(this);
  }

  StackResourceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logicalResourceId = $v.logicalResourceId;
      _physicalResourceId = $v.physicalResourceId;
      _resourceType = $v.resourceType;
      _lastUpdatedTimestamp = $v.lastUpdatedTimestamp;
      _resourceStatus = $v.resourceStatus;
      _resourceStatusReason = $v.resourceStatusReason;
      _driftInformation = $v.driftInformation?.toBuilder();
      _moduleInfo = $v.moduleInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackResourceSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackResourceSummary;
  }

  @override
  void update(void Function(StackResourceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackResourceSummary build() => _build();

  _$StackResourceSummary _build() {
    _$StackResourceSummary _$result;
    try {
      _$result = _$v ??
          new _$StackResourceSummary._(
              logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                  logicalResourceId,
                  r'StackResourceSummary',
                  'logicalResourceId'),
              physicalResourceId: physicalResourceId,
              resourceType: BuiltValueNullFieldError.checkNotNull(
                  resourceType, r'StackResourceSummary', 'resourceType'),
              lastUpdatedTimestamp: BuiltValueNullFieldError.checkNotNull(
                  lastUpdatedTimestamp,
                  r'StackResourceSummary',
                  'lastUpdatedTimestamp'),
              resourceStatus: BuiltValueNullFieldError.checkNotNull(
                  resourceStatus, r'StackResourceSummary', 'resourceStatus'),
              resourceStatusReason: resourceStatusReason,
              driftInformation: _driftInformation?.build(),
              moduleInfo: _moduleInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'driftInformation';
        _driftInformation?.build();
        _$failedField = 'moduleInfo';
        _moduleInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackResourceSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
