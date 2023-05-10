// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_set_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetSummary extends StackSetSummary {
  @override
  final String? stackSetName;
  @override
  final String? stackSetId;
  @override
  final String? description;
  @override
  final _i2.StackSetStatus? status;
  @override
  final _i3.AutoDeployment? autoDeployment;
  @override
  final _i4.PermissionModels? permissionModel;
  @override
  final _i5.StackDriftStatus? driftStatus;
  @override
  final DateTime? lastDriftCheckTimestamp;
  @override
  final _i6.ManagedExecution? managedExecution;

  factory _$StackSetSummary([void Function(StackSetSummaryBuilder)? updates]) =>
      (new StackSetSummaryBuilder()..update(updates))._build();

  _$StackSetSummary._(
      {this.stackSetName,
      this.stackSetId,
      this.description,
      this.status,
      this.autoDeployment,
      this.permissionModel,
      this.driftStatus,
      this.lastDriftCheckTimestamp,
      this.managedExecution})
      : super._();

  @override
  StackSetSummary rebuild(void Function(StackSetSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetSummaryBuilder toBuilder() =>
      new StackSetSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetSummary &&
        stackSetName == other.stackSetName &&
        stackSetId == other.stackSetId &&
        description == other.description &&
        status == other.status &&
        autoDeployment == other.autoDeployment &&
        permissionModel == other.permissionModel &&
        driftStatus == other.driftStatus &&
        lastDriftCheckTimestamp == other.lastDriftCheckTimestamp &&
        managedExecution == other.managedExecution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, stackSetId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, autoDeployment.hashCode);
    _$hash = $jc(_$hash, permissionModel.hashCode);
    _$hash = $jc(_$hash, driftStatus.hashCode);
    _$hash = $jc(_$hash, lastDriftCheckTimestamp.hashCode);
    _$hash = $jc(_$hash, managedExecution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetSummaryBuilder
    implements Builder<StackSetSummary, StackSetSummaryBuilder> {
  _$StackSetSummary? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _stackSetId;
  String? get stackSetId => _$this._stackSetId;
  set stackSetId(String? stackSetId) => _$this._stackSetId = stackSetId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.StackSetStatus? _status;
  _i2.StackSetStatus? get status => _$this._status;
  set status(_i2.StackSetStatus? status) => _$this._status = status;

  _i3.AutoDeploymentBuilder? _autoDeployment;
  _i3.AutoDeploymentBuilder get autoDeployment =>
      _$this._autoDeployment ??= new _i3.AutoDeploymentBuilder();
  set autoDeployment(_i3.AutoDeploymentBuilder? autoDeployment) =>
      _$this._autoDeployment = autoDeployment;

  _i4.PermissionModels? _permissionModel;
  _i4.PermissionModels? get permissionModel => _$this._permissionModel;
  set permissionModel(_i4.PermissionModels? permissionModel) =>
      _$this._permissionModel = permissionModel;

  _i5.StackDriftStatus? _driftStatus;
  _i5.StackDriftStatus? get driftStatus => _$this._driftStatus;
  set driftStatus(_i5.StackDriftStatus? driftStatus) =>
      _$this._driftStatus = driftStatus;

  DateTime? _lastDriftCheckTimestamp;
  DateTime? get lastDriftCheckTimestamp => _$this._lastDriftCheckTimestamp;
  set lastDriftCheckTimestamp(DateTime? lastDriftCheckTimestamp) =>
      _$this._lastDriftCheckTimestamp = lastDriftCheckTimestamp;

  _i6.ManagedExecutionBuilder? _managedExecution;
  _i6.ManagedExecutionBuilder get managedExecution =>
      _$this._managedExecution ??= new _i6.ManagedExecutionBuilder();
  set managedExecution(_i6.ManagedExecutionBuilder? managedExecution) =>
      _$this._managedExecution = managedExecution;

  StackSetSummaryBuilder() {
    StackSetSummary._init(this);
  }

  StackSetSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _stackSetId = $v.stackSetId;
      _description = $v.description;
      _status = $v.status;
      _autoDeployment = $v.autoDeployment?.toBuilder();
      _permissionModel = $v.permissionModel;
      _driftStatus = $v.driftStatus;
      _lastDriftCheckTimestamp = $v.lastDriftCheckTimestamp;
      _managedExecution = $v.managedExecution?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetSummary;
  }

  @override
  void update(void Function(StackSetSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetSummary build() => _build();

  _$StackSetSummary _build() {
    _$StackSetSummary _$result;
    try {
      _$result = _$v ??
          new _$StackSetSummary._(
              stackSetName: stackSetName,
              stackSetId: stackSetId,
              description: description,
              status: status,
              autoDeployment: _autoDeployment?.build(),
              permissionModel: permissionModel,
              driftStatus: driftStatus,
              lastDriftCheckTimestamp: lastDriftCheckTimestamp,
              managedExecution: _managedExecution?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'autoDeployment';
        _autoDeployment?.build();

        _$failedField = 'managedExecution';
        _managedExecution?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackSetSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
