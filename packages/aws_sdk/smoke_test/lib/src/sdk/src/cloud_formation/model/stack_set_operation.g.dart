// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_set_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetOperation extends StackSetOperation {
  @override
  final String? operationId;
  @override
  final String? stackSetId;
  @override
  final StackSetOperationAction? action;
  @override
  final StackSetOperationStatus? status;
  @override
  final StackSetOperationPreferences? operationPreferences;
  @override
  final bool? retainStacks;
  @override
  final String? administrationRoleArn;
  @override
  final String? executionRoleName;
  @override
  final DateTime? creationTimestamp;
  @override
  final DateTime? endTimestamp;
  @override
  final DeploymentTargets? deploymentTargets;
  @override
  final StackSetDriftDetectionDetails? stackSetDriftDetectionDetails;
  @override
  final String? statusReason;
  @override
  final StackSetOperationStatusDetails? statusDetails;

  factory _$StackSetOperation(
          [void Function(StackSetOperationBuilder)? updates]) =>
      (new StackSetOperationBuilder()..update(updates))._build();

  _$StackSetOperation._(
      {this.operationId,
      this.stackSetId,
      this.action,
      this.status,
      this.operationPreferences,
      this.retainStacks,
      this.administrationRoleArn,
      this.executionRoleName,
      this.creationTimestamp,
      this.endTimestamp,
      this.deploymentTargets,
      this.stackSetDriftDetectionDetails,
      this.statusReason,
      this.statusDetails})
      : super._();

  @override
  StackSetOperation rebuild(void Function(StackSetOperationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetOperationBuilder toBuilder() =>
      new StackSetOperationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetOperation &&
        operationId == other.operationId &&
        stackSetId == other.stackSetId &&
        action == other.action &&
        status == other.status &&
        operationPreferences == other.operationPreferences &&
        retainStacks == other.retainStacks &&
        administrationRoleArn == other.administrationRoleArn &&
        executionRoleName == other.executionRoleName &&
        creationTimestamp == other.creationTimestamp &&
        endTimestamp == other.endTimestamp &&
        deploymentTargets == other.deploymentTargets &&
        stackSetDriftDetectionDetails == other.stackSetDriftDetectionDetails &&
        statusReason == other.statusReason &&
        statusDetails == other.statusDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, stackSetId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, operationPreferences.hashCode);
    _$hash = $jc(_$hash, retainStacks.hashCode);
    _$hash = $jc(_$hash, administrationRoleArn.hashCode);
    _$hash = $jc(_$hash, executionRoleName.hashCode);
    _$hash = $jc(_$hash, creationTimestamp.hashCode);
    _$hash = $jc(_$hash, endTimestamp.hashCode);
    _$hash = $jc(_$hash, deploymentTargets.hashCode);
    _$hash = $jc(_$hash, stackSetDriftDetectionDetails.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, statusDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetOperationBuilder
    implements Builder<StackSetOperation, StackSetOperationBuilder> {
  _$StackSetOperation? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  String? _stackSetId;
  String? get stackSetId => _$this._stackSetId;
  set stackSetId(String? stackSetId) => _$this._stackSetId = stackSetId;

  StackSetOperationAction? _action;
  StackSetOperationAction? get action => _$this._action;
  set action(StackSetOperationAction? action) => _$this._action = action;

  StackSetOperationStatus? _status;
  StackSetOperationStatus? get status => _$this._status;
  set status(StackSetOperationStatus? status) => _$this._status = status;

  StackSetOperationPreferencesBuilder? _operationPreferences;
  StackSetOperationPreferencesBuilder get operationPreferences =>
      _$this._operationPreferences ??=
          new StackSetOperationPreferencesBuilder();
  set operationPreferences(
          StackSetOperationPreferencesBuilder? operationPreferences) =>
      _$this._operationPreferences = operationPreferences;

  bool? _retainStacks;
  bool? get retainStacks => _$this._retainStacks;
  set retainStacks(bool? retainStacks) => _$this._retainStacks = retainStacks;

  String? _administrationRoleArn;
  String? get administrationRoleArn => _$this._administrationRoleArn;
  set administrationRoleArn(String? administrationRoleArn) =>
      _$this._administrationRoleArn = administrationRoleArn;

  String? _executionRoleName;
  String? get executionRoleName => _$this._executionRoleName;
  set executionRoleName(String? executionRoleName) =>
      _$this._executionRoleName = executionRoleName;

  DateTime? _creationTimestamp;
  DateTime? get creationTimestamp => _$this._creationTimestamp;
  set creationTimestamp(DateTime? creationTimestamp) =>
      _$this._creationTimestamp = creationTimestamp;

  DateTime? _endTimestamp;
  DateTime? get endTimestamp => _$this._endTimestamp;
  set endTimestamp(DateTime? endTimestamp) =>
      _$this._endTimestamp = endTimestamp;

  DeploymentTargetsBuilder? _deploymentTargets;
  DeploymentTargetsBuilder get deploymentTargets =>
      _$this._deploymentTargets ??= new DeploymentTargetsBuilder();
  set deploymentTargets(DeploymentTargetsBuilder? deploymentTargets) =>
      _$this._deploymentTargets = deploymentTargets;

  StackSetDriftDetectionDetailsBuilder? _stackSetDriftDetectionDetails;
  StackSetDriftDetectionDetailsBuilder get stackSetDriftDetectionDetails =>
      _$this._stackSetDriftDetectionDetails ??=
          new StackSetDriftDetectionDetailsBuilder();
  set stackSetDriftDetectionDetails(
          StackSetDriftDetectionDetailsBuilder?
              stackSetDriftDetectionDetails) =>
      _$this._stackSetDriftDetectionDetails = stackSetDriftDetectionDetails;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  StackSetOperationStatusDetailsBuilder? _statusDetails;
  StackSetOperationStatusDetailsBuilder get statusDetails =>
      _$this._statusDetails ??= new StackSetOperationStatusDetailsBuilder();
  set statusDetails(StackSetOperationStatusDetailsBuilder? statusDetails) =>
      _$this._statusDetails = statusDetails;

  StackSetOperationBuilder();

  StackSetOperationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _stackSetId = $v.stackSetId;
      _action = $v.action;
      _status = $v.status;
      _operationPreferences = $v.operationPreferences?.toBuilder();
      _retainStacks = $v.retainStacks;
      _administrationRoleArn = $v.administrationRoleArn;
      _executionRoleName = $v.executionRoleName;
      _creationTimestamp = $v.creationTimestamp;
      _endTimestamp = $v.endTimestamp;
      _deploymentTargets = $v.deploymentTargets?.toBuilder();
      _stackSetDriftDetectionDetails =
          $v.stackSetDriftDetectionDetails?.toBuilder();
      _statusReason = $v.statusReason;
      _statusDetails = $v.statusDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetOperation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetOperation;
  }

  @override
  void update(void Function(StackSetOperationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetOperation build() => _build();

  _$StackSetOperation _build() {
    _$StackSetOperation _$result;
    try {
      _$result = _$v ??
          new _$StackSetOperation._(
              operationId: operationId,
              stackSetId: stackSetId,
              action: action,
              status: status,
              operationPreferences: _operationPreferences?.build(),
              retainStacks: retainStacks,
              administrationRoleArn: administrationRoleArn,
              executionRoleName: executionRoleName,
              creationTimestamp: creationTimestamp,
              endTimestamp: endTimestamp,
              deploymentTargets: _deploymentTargets?.build(),
              stackSetDriftDetectionDetails:
                  _stackSetDriftDetectionDetails?.build(),
              statusReason: statusReason,
              statusDetails: _statusDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operationPreferences';
        _operationPreferences?.build();

        _$failedField = 'deploymentTargets';
        _deploymentTargets?.build();
        _$failedField = 'stackSetDriftDetectionDetails';
        _stackSetDriftDetectionDetails?.build();

        _$failedField = 'statusDetails';
        _statusDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackSetOperation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
