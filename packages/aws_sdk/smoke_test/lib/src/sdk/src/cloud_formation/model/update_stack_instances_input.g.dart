// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stack_instances_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStackInstancesInput extends UpdateStackInstancesInput {
  @override
  final String stackSetName;
  @override
  final _i3.BuiltList<String>? accounts;
  @override
  final DeploymentTargets? deploymentTargets;
  @override
  final _i3.BuiltList<String> regions;
  @override
  final _i3.BuiltList<Parameter>? parameterOverrides;
  @override
  final StackSetOperationPreferences? operationPreferences;
  @override
  final String? operationId;
  @override
  final CallAs? callAs;

  factory _$UpdateStackInstancesInput(
          [void Function(UpdateStackInstancesInputBuilder)? updates]) =>
      (new UpdateStackInstancesInputBuilder()..update(updates))._build();

  _$UpdateStackInstancesInput._(
      {required this.stackSetName,
      this.accounts,
      this.deploymentTargets,
      required this.regions,
      this.parameterOverrides,
      this.operationPreferences,
      this.operationId,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'UpdateStackInstancesInput', 'stackSetName');
    BuiltValueNullFieldError.checkNotNull(
        regions, r'UpdateStackInstancesInput', 'regions');
  }

  @override
  UpdateStackInstancesInput rebuild(
          void Function(UpdateStackInstancesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStackInstancesInputBuilder toBuilder() =>
      new UpdateStackInstancesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStackInstancesInput &&
        stackSetName == other.stackSetName &&
        accounts == other.accounts &&
        deploymentTargets == other.deploymentTargets &&
        regions == other.regions &&
        parameterOverrides == other.parameterOverrides &&
        operationPreferences == other.operationPreferences &&
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
    _$hash = $jc(_$hash, parameterOverrides.hashCode);
    _$hash = $jc(_$hash, operationPreferences.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateStackInstancesInputBuilder
    implements
        Builder<UpdateStackInstancesInput, UpdateStackInstancesInputBuilder> {
  _$UpdateStackInstancesInput? _$v;

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

  _i3.ListBuilder<Parameter>? _parameterOverrides;
  _i3.ListBuilder<Parameter> get parameterOverrides =>
      _$this._parameterOverrides ??= new _i3.ListBuilder<Parameter>();
  set parameterOverrides(_i3.ListBuilder<Parameter>? parameterOverrides) =>
      _$this._parameterOverrides = parameterOverrides;

  StackSetOperationPreferencesBuilder? _operationPreferences;
  StackSetOperationPreferencesBuilder get operationPreferences =>
      _$this._operationPreferences ??=
          new StackSetOperationPreferencesBuilder();
  set operationPreferences(
          StackSetOperationPreferencesBuilder? operationPreferences) =>
      _$this._operationPreferences = operationPreferences;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  CallAs? _callAs;
  CallAs? get callAs => _$this._callAs;
  set callAs(CallAs? callAs) => _$this._callAs = callAs;

  UpdateStackInstancesInputBuilder() {
    UpdateStackInstancesInput._init(this);
  }

  UpdateStackInstancesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _accounts = $v.accounts?.toBuilder();
      _deploymentTargets = $v.deploymentTargets?.toBuilder();
      _regions = $v.regions.toBuilder();
      _parameterOverrides = $v.parameterOverrides?.toBuilder();
      _operationPreferences = $v.operationPreferences?.toBuilder();
      _operationId = $v.operationId;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStackInstancesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStackInstancesInput;
  }

  @override
  void update(void Function(UpdateStackInstancesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStackInstancesInput build() => _build();

  _$UpdateStackInstancesInput _build() {
    _$UpdateStackInstancesInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateStackInstancesInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(
                  stackSetName, r'UpdateStackInstancesInput', 'stackSetName'),
              accounts: _accounts?.build(),
              deploymentTargets: _deploymentTargets?.build(),
              regions: regions.build(),
              parameterOverrides: _parameterOverrides?.build(),
              operationPreferences: _operationPreferences?.build(),
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
        _$failedField = 'parameterOverrides';
        _parameterOverrides?.build();
        _$failedField = 'operationPreferences';
        _operationPreferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateStackInstancesInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
