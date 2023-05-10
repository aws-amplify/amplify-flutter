// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_resource_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackResourceDetail extends StackResourceDetail {
  @override
  final String? stackName;
  @override
  final String? stackId;
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
  final String? description;
  @override
  final String? metadata;
  @override
  final _i3.StackResourceDriftInformation? driftInformation;
  @override
  final _i4.ModuleInfo? moduleInfo;

  factory _$StackResourceDetail(
          [void Function(StackResourceDetailBuilder)? updates]) =>
      (new StackResourceDetailBuilder()..update(updates))._build();

  _$StackResourceDetail._(
      {this.stackName,
      this.stackId,
      required this.logicalResourceId,
      this.physicalResourceId,
      required this.resourceType,
      required this.lastUpdatedTimestamp,
      required this.resourceStatus,
      this.resourceStatusReason,
      this.description,
      this.metadata,
      this.driftInformation,
      this.moduleInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logicalResourceId, r'StackResourceDetail', 'logicalResourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'StackResourceDetail', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdatedTimestamp, r'StackResourceDetail', 'lastUpdatedTimestamp');
    BuiltValueNullFieldError.checkNotNull(
        resourceStatus, r'StackResourceDetail', 'resourceStatus');
  }

  @override
  StackResourceDetail rebuild(
          void Function(StackResourceDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackResourceDetailBuilder toBuilder() =>
      new StackResourceDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackResourceDetail &&
        stackName == other.stackName &&
        stackId == other.stackId &&
        logicalResourceId == other.logicalResourceId &&
        physicalResourceId == other.physicalResourceId &&
        resourceType == other.resourceType &&
        lastUpdatedTimestamp == other.lastUpdatedTimestamp &&
        resourceStatus == other.resourceStatus &&
        resourceStatusReason == other.resourceStatusReason &&
        description == other.description &&
        metadata == other.metadata &&
        driftInformation == other.driftInformation &&
        moduleInfo == other.moduleInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTimestamp.hashCode);
    _$hash = $jc(_$hash, resourceStatus.hashCode);
    _$hash = $jc(_$hash, resourceStatusReason.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, driftInformation.hashCode);
    _$hash = $jc(_$hash, moduleInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackResourceDetailBuilder
    implements Builder<StackResourceDetail, StackResourceDetailBuilder> {
  _$StackResourceDetail? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

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

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(String? metadata) => _$this._metadata = metadata;

  _i3.StackResourceDriftInformationBuilder? _driftInformation;
  _i3.StackResourceDriftInformationBuilder get driftInformation =>
      _$this._driftInformation ??=
          new _i3.StackResourceDriftInformationBuilder();
  set driftInformation(
          _i3.StackResourceDriftInformationBuilder? driftInformation) =>
      _$this._driftInformation = driftInformation;

  _i4.ModuleInfoBuilder? _moduleInfo;
  _i4.ModuleInfoBuilder get moduleInfo =>
      _$this._moduleInfo ??= new _i4.ModuleInfoBuilder();
  set moduleInfo(_i4.ModuleInfoBuilder? moduleInfo) =>
      _$this._moduleInfo = moduleInfo;

  StackResourceDetailBuilder() {
    StackResourceDetail._init(this);
  }

  StackResourceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _stackId = $v.stackId;
      _logicalResourceId = $v.logicalResourceId;
      _physicalResourceId = $v.physicalResourceId;
      _resourceType = $v.resourceType;
      _lastUpdatedTimestamp = $v.lastUpdatedTimestamp;
      _resourceStatus = $v.resourceStatus;
      _resourceStatusReason = $v.resourceStatusReason;
      _description = $v.description;
      _metadata = $v.metadata;
      _driftInformation = $v.driftInformation?.toBuilder();
      _moduleInfo = $v.moduleInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackResourceDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackResourceDetail;
  }

  @override
  void update(void Function(StackResourceDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackResourceDetail build() => _build();

  _$StackResourceDetail _build() {
    _$StackResourceDetail _$result;
    try {
      _$result = _$v ??
          new _$StackResourceDetail._(
              stackName: stackName,
              stackId: stackId,
              logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                  logicalResourceId,
                  r'StackResourceDetail',
                  'logicalResourceId'),
              physicalResourceId: physicalResourceId,
              resourceType: BuiltValueNullFieldError.checkNotNull(
                  resourceType, r'StackResourceDetail', 'resourceType'),
              lastUpdatedTimestamp: BuiltValueNullFieldError.checkNotNull(
                  lastUpdatedTimestamp,
                  r'StackResourceDetail',
                  'lastUpdatedTimestamp'),
              resourceStatus: BuiltValueNullFieldError.checkNotNull(
                  resourceStatus, r'StackResourceDetail', 'resourceStatus'),
              resourceStatusReason: resourceStatusReason,
              description: description,
              metadata: metadata,
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
            r'StackResourceDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
