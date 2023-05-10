// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.update_stack_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStackSetInput extends UpdateStackSetInput {
  @override
  final String stackSetName;
  @override
  final String? description;
  @override
  final String? templateBody;
  @override
  final String? templateUrl;
  @override
  final bool? usePreviousTemplate;
  @override
  final _i12.BuiltList<_i3.Parameter>? parameters;
  @override
  final _i12.BuiltList<_i4.Capability>? capabilities;
  @override
  final _i12.BuiltList<_i5.Tag>? tags;
  @override
  final _i6.StackSetOperationPreferences? operationPreferences;
  @override
  final String? administrationRoleArn;
  @override
  final String? executionRoleName;
  @override
  final _i7.DeploymentTargets? deploymentTargets;
  @override
  final _i8.PermissionModels? permissionModel;
  @override
  final _i9.AutoDeployment? autoDeployment;
  @override
  final String? operationId;
  @override
  final _i12.BuiltList<String>? accounts;
  @override
  final _i12.BuiltList<String>? regions;
  @override
  final _i10.CallAs? callAs;
  @override
  final _i11.ManagedExecution? managedExecution;

  factory _$UpdateStackSetInput(
          [void Function(UpdateStackSetInputBuilder)? updates]) =>
      (new UpdateStackSetInputBuilder()..update(updates))._build();

  _$UpdateStackSetInput._(
      {required this.stackSetName,
      this.description,
      this.templateBody,
      this.templateUrl,
      this.usePreviousTemplate,
      this.parameters,
      this.capabilities,
      this.tags,
      this.operationPreferences,
      this.administrationRoleArn,
      this.executionRoleName,
      this.deploymentTargets,
      this.permissionModel,
      this.autoDeployment,
      this.operationId,
      this.accounts,
      this.regions,
      this.callAs,
      this.managedExecution})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'UpdateStackSetInput', 'stackSetName');
  }

  @override
  UpdateStackSetInput rebuild(
          void Function(UpdateStackSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStackSetInputBuilder toBuilder() =>
      new UpdateStackSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStackSetInput &&
        stackSetName == other.stackSetName &&
        description == other.description &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl &&
        usePreviousTemplate == other.usePreviousTemplate &&
        parameters == other.parameters &&
        capabilities == other.capabilities &&
        tags == other.tags &&
        operationPreferences == other.operationPreferences &&
        administrationRoleArn == other.administrationRoleArn &&
        executionRoleName == other.executionRoleName &&
        deploymentTargets == other.deploymentTargets &&
        permissionModel == other.permissionModel &&
        autoDeployment == other.autoDeployment &&
        operationId == other.operationId &&
        accounts == other.accounts &&
        regions == other.regions &&
        callAs == other.callAs &&
        managedExecution == other.managedExecution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, usePreviousTemplate.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, operationPreferences.hashCode);
    _$hash = $jc(_$hash, administrationRoleArn.hashCode);
    _$hash = $jc(_$hash, executionRoleName.hashCode);
    _$hash = $jc(_$hash, deploymentTargets.hashCode);
    _$hash = $jc(_$hash, permissionModel.hashCode);
    _$hash = $jc(_$hash, autoDeployment.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jc(_$hash, managedExecution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateStackSetInputBuilder
    implements Builder<UpdateStackSetInput, UpdateStackSetInputBuilder> {
  _$UpdateStackSetInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _templateUrl;
  String? get templateUrl => _$this._templateUrl;
  set templateUrl(String? templateUrl) => _$this._templateUrl = templateUrl;

  bool? _usePreviousTemplate;
  bool? get usePreviousTemplate => _$this._usePreviousTemplate;
  set usePreviousTemplate(bool? usePreviousTemplate) =>
      _$this._usePreviousTemplate = usePreviousTemplate;

  _i12.ListBuilder<_i3.Parameter>? _parameters;
  _i12.ListBuilder<_i3.Parameter> get parameters =>
      _$this._parameters ??= new _i12.ListBuilder<_i3.Parameter>();
  set parameters(_i12.ListBuilder<_i3.Parameter>? parameters) =>
      _$this._parameters = parameters;

  _i12.ListBuilder<_i4.Capability>? _capabilities;
  _i12.ListBuilder<_i4.Capability> get capabilities =>
      _$this._capabilities ??= new _i12.ListBuilder<_i4.Capability>();
  set capabilities(_i12.ListBuilder<_i4.Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  _i12.ListBuilder<_i5.Tag>? _tags;
  _i12.ListBuilder<_i5.Tag> get tags =>
      _$this._tags ??= new _i12.ListBuilder<_i5.Tag>();
  set tags(_i12.ListBuilder<_i5.Tag>? tags) => _$this._tags = tags;

  _i6.StackSetOperationPreferencesBuilder? _operationPreferences;
  _i6.StackSetOperationPreferencesBuilder get operationPreferences =>
      _$this._operationPreferences ??=
          new _i6.StackSetOperationPreferencesBuilder();
  set operationPreferences(
          _i6.StackSetOperationPreferencesBuilder? operationPreferences) =>
      _$this._operationPreferences = operationPreferences;

  String? _administrationRoleArn;
  String? get administrationRoleArn => _$this._administrationRoleArn;
  set administrationRoleArn(String? administrationRoleArn) =>
      _$this._administrationRoleArn = administrationRoleArn;

  String? _executionRoleName;
  String? get executionRoleName => _$this._executionRoleName;
  set executionRoleName(String? executionRoleName) =>
      _$this._executionRoleName = executionRoleName;

  _i7.DeploymentTargetsBuilder? _deploymentTargets;
  _i7.DeploymentTargetsBuilder get deploymentTargets =>
      _$this._deploymentTargets ??= new _i7.DeploymentTargetsBuilder();
  set deploymentTargets(_i7.DeploymentTargetsBuilder? deploymentTargets) =>
      _$this._deploymentTargets = deploymentTargets;

  _i8.PermissionModels? _permissionModel;
  _i8.PermissionModels? get permissionModel => _$this._permissionModel;
  set permissionModel(_i8.PermissionModels? permissionModel) =>
      _$this._permissionModel = permissionModel;

  _i9.AutoDeploymentBuilder? _autoDeployment;
  _i9.AutoDeploymentBuilder get autoDeployment =>
      _$this._autoDeployment ??= new _i9.AutoDeploymentBuilder();
  set autoDeployment(_i9.AutoDeploymentBuilder? autoDeployment) =>
      _$this._autoDeployment = autoDeployment;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  _i12.ListBuilder<String>? _accounts;
  _i12.ListBuilder<String> get accounts =>
      _$this._accounts ??= new _i12.ListBuilder<String>();
  set accounts(_i12.ListBuilder<String>? accounts) =>
      _$this._accounts = accounts;

  _i12.ListBuilder<String>? _regions;
  _i12.ListBuilder<String> get regions =>
      _$this._regions ??= new _i12.ListBuilder<String>();
  set regions(_i12.ListBuilder<String>? regions) => _$this._regions = regions;

  _i10.CallAs? _callAs;
  _i10.CallAs? get callAs => _$this._callAs;
  set callAs(_i10.CallAs? callAs) => _$this._callAs = callAs;

  _i11.ManagedExecutionBuilder? _managedExecution;
  _i11.ManagedExecutionBuilder get managedExecution =>
      _$this._managedExecution ??= new _i11.ManagedExecutionBuilder();
  set managedExecution(_i11.ManagedExecutionBuilder? managedExecution) =>
      _$this._managedExecution = managedExecution;

  UpdateStackSetInputBuilder() {
    UpdateStackSetInput._init(this);
  }

  UpdateStackSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _description = $v.description;
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _usePreviousTemplate = $v.usePreviousTemplate;
      _parameters = $v.parameters?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _operationPreferences = $v.operationPreferences?.toBuilder();
      _administrationRoleArn = $v.administrationRoleArn;
      _executionRoleName = $v.executionRoleName;
      _deploymentTargets = $v.deploymentTargets?.toBuilder();
      _permissionModel = $v.permissionModel;
      _autoDeployment = $v.autoDeployment?.toBuilder();
      _operationId = $v.operationId;
      _accounts = $v.accounts?.toBuilder();
      _regions = $v.regions?.toBuilder();
      _callAs = $v.callAs;
      _managedExecution = $v.managedExecution?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStackSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStackSetInput;
  }

  @override
  void update(void Function(UpdateStackSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStackSetInput build() => _build();

  _$UpdateStackSetInput _build() {
    _$UpdateStackSetInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateStackSetInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(
                  stackSetName, r'UpdateStackSetInput', 'stackSetName'),
              description: description,
              templateBody: templateBody,
              templateUrl: templateUrl,
              usePreviousTemplate: usePreviousTemplate,
              parameters: _parameters?.build(),
              capabilities: _capabilities?.build(),
              tags: _tags?.build(),
              operationPreferences: _operationPreferences?.build(),
              administrationRoleArn: administrationRoleArn,
              executionRoleName: executionRoleName,
              deploymentTargets: _deploymentTargets?.build(),
              permissionModel: permissionModel,
              autoDeployment: _autoDeployment?.build(),
              operationId: operationId,
              accounts: _accounts?.build(),
              regions: _regions?.build(),
              callAs: callAs,
              managedExecution: _managedExecution?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
        _$failedField = 'capabilities';
        _capabilities?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'operationPreferences';
        _operationPreferences?.build();

        _$failedField = 'deploymentTargets';
        _deploymentTargets?.build();

        _$failedField = 'autoDeployment';
        _autoDeployment?.build();

        _$failedField = 'accounts';
        _accounts?.build();
        _$failedField = 'regions';
        _regions?.build();

        _$failedField = 'managedExecution';
        _managedExecution?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateStackSetInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
