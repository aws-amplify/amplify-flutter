// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_stack_instances_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStackInstancesInput extends DeleteStackInstancesInput {
  @override
  final String stackSetName;
  @override
  final _i3.BuiltList<String>? accounts;
  @override
  final DeploymentTargets? deploymentTargets;
  @override
  final _i3.BuiltList<String> regions;
  @override
  final StackSetOperationPreferences? operationPreferences;
  @override
  final bool retainStacks;
  @override
  final String? operationId;
  @override
  final CallAs? callAs;

  factory _$DeleteStackInstancesInput(
          [void Function(DeleteStackInstancesInputBuilder)? updates]) =>
      (new DeleteStackInstancesInputBuilder()..update(updates))._build();

  _$DeleteStackInstancesInput._(
      {required this.stackSetName,
      this.accounts,
      this.deploymentTargets,
      required this.regions,
      this.operationPreferences,
      required this.retainStacks,
      this.operationId,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'DeleteStackInstancesInput', 'stackSetName');
    BuiltValueNullFieldError.checkNotNull(
        regions, r'DeleteStackInstancesInput', 'regions');
    BuiltValueNullFieldError.checkNotNull(
        retainStacks, r'DeleteStackInstancesInput', 'retainStacks');
  }

  @override
  DeleteStackInstancesInput rebuild(
          void Function(DeleteStackInstancesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStackInstancesInputBuilder toBuilder() =>
      new DeleteStackInstancesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStackInstancesInput &&
        stackSetName == other.stackSetName &&
        accounts == other.accounts &&
        deploymentTargets == other.deploymentTargets &&
        regions == other.regions &&
        operationPreferences == other.operationPreferences &&
        retainStacks == other.retainStacks &&
        operationId == other.operationId &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, deploymentTargets.hashCode);
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jc(_$hash, operationPreferences.hashCode);
    _$hash = $jc(_$hash, retainStacks.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteStackInstancesInputBuilder
    implements
        Builder<DeleteStackInstancesInput, DeleteStackInstancesInputBuilder> {
  _$DeleteStackInstancesInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  _i3.ListBuilder<String>? _accounts;
  _i3.ListBuilder<String> get accounts =>
      _$this._accounts ??= new _i3.ListBuilder<String>();
  set accounts(_i3.ListBuilder<String>? accounts) =>
      _$this._accounts = accounts;

  DeploymentTargetsBuilder? _deploymentTargets;
  DeploymentTargetsBuilder get deploymentTargets =>
      _$this._deploymentTargets ??= new DeploymentTargetsBuilder();
  set deploymentTargets(DeploymentTargetsBuilder? deploymentTargets) =>
      _$this._deploymentTargets = deploymentTargets;

  _i3.ListBuilder<String>? _regions;
  _i3.ListBuilder<String> get regions =>
      _$this._regions ??= new _i3.ListBuilder<String>();
  set regions(_i3.ListBuilder<String>? regions) => _$this._regions = regions;

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

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  CallAs? _callAs;
  CallAs? get callAs => _$this._callAs;
  set callAs(CallAs? callAs) => _$this._callAs = callAs;

  DeleteStackInstancesInputBuilder() {
    DeleteStackInstancesInput._init(this);
  }

  DeleteStackInstancesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _accounts = $v.accounts?.toBuilder();
      _deploymentTargets = $v.deploymentTargets?.toBuilder();
      _regions = $v.regions.toBuilder();
      _operationPreferences = $v.operationPreferences?.toBuilder();
      _retainStacks = $v.retainStacks;
      _operationId = $v.operationId;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteStackInstancesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStackInstancesInput;
  }

  @override
  void update(void Function(DeleteStackInstancesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStackInstancesInput build() => _build();

  _$DeleteStackInstancesInput _build() {
    _$DeleteStackInstancesInput _$result;
    try {
      _$result = _$v ??
          new _$DeleteStackInstancesInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(
                  stackSetName, r'DeleteStackInstancesInput', 'stackSetName'),
              accounts: _accounts?.build(),
              deploymentTargets: _deploymentTargets?.build(),
              regions: regions.build(),
              operationPreferences: _operationPreferences?.build(),
              retainStacks: BuiltValueNullFieldError.checkNotNull(
                  retainStacks, r'DeleteStackInstancesInput', 'retainStacks'),
              operationId: operationId,
              callAs: callAs);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        _accounts?.build();
        _$failedField = 'deploymentTargets';
        _deploymentTargets?.build();
        _$failedField = 'regions';
        regions.build();
        _$failedField = 'operationPreferences';
        _operationPreferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteStackInstancesInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
