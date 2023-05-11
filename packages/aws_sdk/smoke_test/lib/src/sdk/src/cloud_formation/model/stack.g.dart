// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Stack extends Stack {
  @override
  final String? stackId;
  @override
  final String stackName;
  @override
  final String? changeSetId;
  @override
  final String? description;
  @override
  final _i9.BuiltList<_i2.Parameter>? parameters;
  @override
  final DateTime creationTime;
  @override
  final DateTime? deletionTime;
  @override
  final DateTime? lastUpdatedTime;
  @override
  final _i3.RollbackConfiguration? rollbackConfiguration;
  @override
  final _i4.StackStatus stackStatus;
  @override
  final String? stackStatusReason;
  @override
  final bool? disableRollback;
  @override
  final _i9.BuiltList<String>? notificationArNs;
  @override
  final int? timeoutInMinutes;
  @override
  final _i9.BuiltList<_i5.Capability>? capabilities;
  @override
  final _i9.BuiltList<_i6.Output>? outputs;
  @override
  final String? roleArn;
  @override
  final _i9.BuiltList<_i7.Tag>? tags;
  @override
  final bool? enableTerminationProtection;
  @override
  final String? parentId;
  @override
  final String? rootId;
  @override
  final _i8.StackDriftInformation? driftInformation;

  factory _$Stack([void Function(StackBuilder)? updates]) =>
      (new StackBuilder()..update(updates))._build();

  _$Stack._(
      {this.stackId,
      required this.stackName,
      this.changeSetId,
      this.description,
      this.parameters,
      required this.creationTime,
      this.deletionTime,
      this.lastUpdatedTime,
      this.rollbackConfiguration,
      required this.stackStatus,
      this.stackStatusReason,
      this.disableRollback,
      this.notificationArNs,
      this.timeoutInMinutes,
      this.capabilities,
      this.outputs,
      this.roleArn,
      this.tags,
      this.enableTerminationProtection,
      this.parentId,
      this.rootId,
      this.driftInformation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackName, r'Stack', 'stackName');
    BuiltValueNullFieldError.checkNotNull(
        creationTime, r'Stack', 'creationTime');
    BuiltValueNullFieldError.checkNotNull(stackStatus, r'Stack', 'stackStatus');
  }

  @override
  Stack rebuild(void Function(StackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackBuilder toBuilder() => new StackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stack &&
        stackId == other.stackId &&
        stackName == other.stackName &&
        changeSetId == other.changeSetId &&
        description == other.description &&
        parameters == other.parameters &&
        creationTime == other.creationTime &&
        deletionTime == other.deletionTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        rollbackConfiguration == other.rollbackConfiguration &&
        stackStatus == other.stackStatus &&
        stackStatusReason == other.stackStatusReason &&
        disableRollback == other.disableRollback &&
        notificationArNs == other.notificationArNs &&
        timeoutInMinutes == other.timeoutInMinutes &&
        capabilities == other.capabilities &&
        outputs == other.outputs &&
        roleArn == other.roleArn &&
        tags == other.tags &&
        enableTerminationProtection == other.enableTerminationProtection &&
        parentId == other.parentId &&
        rootId == other.rootId &&
        driftInformation == other.driftInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, changeSetId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jc(_$hash, rollbackConfiguration.hashCode);
    _$hash = $jc(_$hash, stackStatus.hashCode);
    _$hash = $jc(_$hash, stackStatusReason.hashCode);
    _$hash = $jc(_$hash, disableRollback.hashCode);
    _$hash = $jc(_$hash, notificationArNs.hashCode);
    _$hash = $jc(_$hash, timeoutInMinutes.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, outputs.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, enableTerminationProtection.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, rootId.hashCode);
    _$hash = $jc(_$hash, driftInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackBuilder implements Builder<Stack, StackBuilder> {
  _$Stack? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _changeSetId;
  String? get changeSetId => _$this._changeSetId;
  set changeSetId(String? changeSetId) => _$this._changeSetId = changeSetId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i9.ListBuilder<_i2.Parameter>? _parameters;
  _i9.ListBuilder<_i2.Parameter> get parameters =>
      _$this._parameters ??= new _i9.ListBuilder<_i2.Parameter>();
  set parameters(_i9.ListBuilder<_i2.Parameter>? parameters) =>
      _$this._parameters = parameters;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  DateTime? _lastUpdatedTime;
  DateTime? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(DateTime? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  _i3.RollbackConfigurationBuilder? _rollbackConfiguration;
  _i3.RollbackConfigurationBuilder get rollbackConfiguration =>
      _$this._rollbackConfiguration ??= new _i3.RollbackConfigurationBuilder();
  set rollbackConfiguration(
          _i3.RollbackConfigurationBuilder? rollbackConfiguration) =>
      _$this._rollbackConfiguration = rollbackConfiguration;

  _i4.StackStatus? _stackStatus;
  _i4.StackStatus? get stackStatus => _$this._stackStatus;
  set stackStatus(_i4.StackStatus? stackStatus) =>
      _$this._stackStatus = stackStatus;

  String? _stackStatusReason;
  String? get stackStatusReason => _$this._stackStatusReason;
  set stackStatusReason(String? stackStatusReason) =>
      _$this._stackStatusReason = stackStatusReason;

  bool? _disableRollback;
  bool? get disableRollback => _$this._disableRollback;
  set disableRollback(bool? disableRollback) =>
      _$this._disableRollback = disableRollback;

  _i9.ListBuilder<String>? _notificationArNs;
  _i9.ListBuilder<String> get notificationArNs =>
      _$this._notificationArNs ??= new _i9.ListBuilder<String>();
  set notificationArNs(_i9.ListBuilder<String>? notificationArNs) =>
      _$this._notificationArNs = notificationArNs;

  int? _timeoutInMinutes;
  int? get timeoutInMinutes => _$this._timeoutInMinutes;
  set timeoutInMinutes(int? timeoutInMinutes) =>
      _$this._timeoutInMinutes = timeoutInMinutes;

  _i9.ListBuilder<_i5.Capability>? _capabilities;
  _i9.ListBuilder<_i5.Capability> get capabilities =>
      _$this._capabilities ??= new _i9.ListBuilder<_i5.Capability>();
  set capabilities(_i9.ListBuilder<_i5.Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  _i9.ListBuilder<_i6.Output>? _outputs;
  _i9.ListBuilder<_i6.Output> get outputs =>
      _$this._outputs ??= new _i9.ListBuilder<_i6.Output>();
  set outputs(_i9.ListBuilder<_i6.Output>? outputs) =>
      _$this._outputs = outputs;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  _i9.ListBuilder<_i7.Tag>? _tags;
  _i9.ListBuilder<_i7.Tag> get tags =>
      _$this._tags ??= new _i9.ListBuilder<_i7.Tag>();
  set tags(_i9.ListBuilder<_i7.Tag>? tags) => _$this._tags = tags;

  bool? _enableTerminationProtection;
  bool? get enableTerminationProtection => _$this._enableTerminationProtection;
  set enableTerminationProtection(bool? enableTerminationProtection) =>
      _$this._enableTerminationProtection = enableTerminationProtection;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _rootId;
  String? get rootId => _$this._rootId;
  set rootId(String? rootId) => _$this._rootId = rootId;

  _i8.StackDriftInformationBuilder? _driftInformation;
  _i8.StackDriftInformationBuilder get driftInformation =>
      _$this._driftInformation ??= new _i8.StackDriftInformationBuilder();
  set driftInformation(_i8.StackDriftInformationBuilder? driftInformation) =>
      _$this._driftInformation = driftInformation;

  StackBuilder() {
    Stack._init(this);
  }

  StackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _stackName = $v.stackName;
      _changeSetId = $v.changeSetId;
      _description = $v.description;
      _parameters = $v.parameters?.toBuilder();
      _creationTime = $v.creationTime;
      _deletionTime = $v.deletionTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _rollbackConfiguration = $v.rollbackConfiguration?.toBuilder();
      _stackStatus = $v.stackStatus;
      _stackStatusReason = $v.stackStatusReason;
      _disableRollback = $v.disableRollback;
      _notificationArNs = $v.notificationArNs?.toBuilder();
      _timeoutInMinutes = $v.timeoutInMinutes;
      _capabilities = $v.capabilities?.toBuilder();
      _outputs = $v.outputs?.toBuilder();
      _roleArn = $v.roleArn;
      _tags = $v.tags?.toBuilder();
      _enableTerminationProtection = $v.enableTerminationProtection;
      _parentId = $v.parentId;
      _rootId = $v.rootId;
      _driftInformation = $v.driftInformation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Stack;
  }

  @override
  void update(void Function(StackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Stack build() => _build();

  _$Stack _build() {
    _$Stack _$result;
    try {
      _$result = _$v ??
          new _$Stack._(
              stackId: stackId,
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'Stack', 'stackName'),
              changeSetId: changeSetId,
              description: description,
              parameters: _parameters?.build(),
              creationTime: BuiltValueNullFieldError.checkNotNull(
                  creationTime, r'Stack', 'creationTime'),
              deletionTime: deletionTime,
              lastUpdatedTime: lastUpdatedTime,
              rollbackConfiguration: _rollbackConfiguration?.build(),
              stackStatus: BuiltValueNullFieldError.checkNotNull(
                  stackStatus, r'Stack', 'stackStatus'),
              stackStatusReason: stackStatusReason,
              disableRollback: disableRollback,
              notificationArNs: _notificationArNs?.build(),
              timeoutInMinutes: timeoutInMinutes,
              capabilities: _capabilities?.build(),
              outputs: _outputs?.build(),
              roleArn: roleArn,
              tags: _tags?.build(),
              enableTerminationProtection: enableTerminationProtection,
              parentId: parentId,
              rootId: rootId,
              driftInformation: _driftInformation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'rollbackConfiguration';
        _rollbackConfiguration?.build();

        _$failedField = 'notificationArNs';
        _notificationArNs?.build();

        _$failedField = 'capabilities';
        _capabilities?.build();
        _$failedField = 'outputs';
        _outputs?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'driftInformation';
        _driftInformation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Stack', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
