// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.create_stack_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStackSetInput extends CreateStackSetInput {
  @override
  final String stackSetName;
  @override
  final String? description;
  @override
  final String? templateBody;
  @override
  final String? templateUrl;
  @override
  final String? stackId;
  @override
  final _i10.BuiltList<_i3.Parameter>? parameters;
  @override
  final _i10.BuiltList<_i4.Capability>? capabilities;
  @override
  final _i10.BuiltList<_i5.Tag>? tags;
  @override
  final String? administrationRoleArn;
  @override
  final String? executionRoleName;
  @override
  final _i6.PermissionModels? permissionModel;
  @override
  final _i7.AutoDeployment? autoDeployment;
  @override
  final _i8.CallAs? callAs;
  @override
  final String? clientRequestToken;
  @override
  final _i9.ManagedExecution? managedExecution;

  factory _$CreateStackSetInput(
          [void Function(CreateStackSetInputBuilder)? updates]) =>
      (new CreateStackSetInputBuilder()..update(updates))._build();

  _$CreateStackSetInput._(
      {required this.stackSetName,
      this.description,
      this.templateBody,
      this.templateUrl,
      this.stackId,
      this.parameters,
      this.capabilities,
      this.tags,
      this.administrationRoleArn,
      this.executionRoleName,
      this.permissionModel,
      this.autoDeployment,
      this.callAs,
      this.clientRequestToken,
      this.managedExecution})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'CreateStackSetInput', 'stackSetName');
  }

  @override
  CreateStackSetInput rebuild(
          void Function(CreateStackSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStackSetInputBuilder toBuilder() =>
      new CreateStackSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStackSetInput &&
        stackSetName == other.stackSetName &&
        description == other.description &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl &&
        stackId == other.stackId &&
        parameters == other.parameters &&
        capabilities == other.capabilities &&
        tags == other.tags &&
        administrationRoleArn == other.administrationRoleArn &&
        executionRoleName == other.executionRoleName &&
        permissionModel == other.permissionModel &&
        autoDeployment == other.autoDeployment &&
        callAs == other.callAs &&
        clientRequestToken == other.clientRequestToken &&
        managedExecution == other.managedExecution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, administrationRoleArn.hashCode);
    _$hash = $jc(_$hash, executionRoleName.hashCode);
    _$hash = $jc(_$hash, permissionModel.hashCode);
    _$hash = $jc(_$hash, autoDeployment.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jc(_$hash, managedExecution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStackSetInputBuilder
    implements Builder<CreateStackSetInput, CreateStackSetInputBuilder> {
  _$CreateStackSetInput? _$v;

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

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  _i10.ListBuilder<_i3.Parameter>? _parameters;
  _i10.ListBuilder<_i3.Parameter> get parameters =>
      _$this._parameters ??= new _i10.ListBuilder<_i3.Parameter>();
  set parameters(_i10.ListBuilder<_i3.Parameter>? parameters) =>
      _$this._parameters = parameters;

  _i10.ListBuilder<_i4.Capability>? _capabilities;
  _i10.ListBuilder<_i4.Capability> get capabilities =>
      _$this._capabilities ??= new _i10.ListBuilder<_i4.Capability>();
  set capabilities(_i10.ListBuilder<_i4.Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  _i10.ListBuilder<_i5.Tag>? _tags;
  _i10.ListBuilder<_i5.Tag> get tags =>
      _$this._tags ??= new _i10.ListBuilder<_i5.Tag>();
  set tags(_i10.ListBuilder<_i5.Tag>? tags) => _$this._tags = tags;

  String? _administrationRoleArn;
  String? get administrationRoleArn => _$this._administrationRoleArn;
  set administrationRoleArn(String? administrationRoleArn) =>
      _$this._administrationRoleArn = administrationRoleArn;

  String? _executionRoleName;
  String? get executionRoleName => _$this._executionRoleName;
  set executionRoleName(String? executionRoleName) =>
      _$this._executionRoleName = executionRoleName;

  _i6.PermissionModels? _permissionModel;
  _i6.PermissionModels? get permissionModel => _$this._permissionModel;
  set permissionModel(_i6.PermissionModels? permissionModel) =>
      _$this._permissionModel = permissionModel;

  _i7.AutoDeploymentBuilder? _autoDeployment;
  _i7.AutoDeploymentBuilder get autoDeployment =>
      _$this._autoDeployment ??= new _i7.AutoDeploymentBuilder();
  set autoDeployment(_i7.AutoDeploymentBuilder? autoDeployment) =>
      _$this._autoDeployment = autoDeployment;

  _i8.CallAs? _callAs;
  _i8.CallAs? get callAs => _$this._callAs;
  set callAs(_i8.CallAs? callAs) => _$this._callAs = callAs;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  _i9.ManagedExecutionBuilder? _managedExecution;
  _i9.ManagedExecutionBuilder get managedExecution =>
      _$this._managedExecution ??= new _i9.ManagedExecutionBuilder();
  set managedExecution(_i9.ManagedExecutionBuilder? managedExecution) =>
      _$this._managedExecution = managedExecution;

  CreateStackSetInputBuilder() {
    CreateStackSetInput._init(this);
  }

  CreateStackSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _description = $v.description;
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _stackId = $v.stackId;
      _parameters = $v.parameters?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _administrationRoleArn = $v.administrationRoleArn;
      _executionRoleName = $v.executionRoleName;
      _permissionModel = $v.permissionModel;
      _autoDeployment = $v.autoDeployment?.toBuilder();
      _callAs = $v.callAs;
      _clientRequestToken = $v.clientRequestToken;
      _managedExecution = $v.managedExecution?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStackSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStackSetInput;
  }

  @override
  void update(void Function(CreateStackSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStackSetInput build() => _build();

  _$CreateStackSetInput _build() {
    _$CreateStackSetInput _$result;
    try {
      _$result = _$v ??
          new _$CreateStackSetInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(
                  stackSetName, r'CreateStackSetInput', 'stackSetName'),
              description: description,
              templateBody: templateBody,
              templateUrl: templateUrl,
              stackId: stackId,
              parameters: _parameters?.build(),
              capabilities: _capabilities?.build(),
              tags: _tags?.build(),
              administrationRoleArn: administrationRoleArn,
              executionRoleName: executionRoleName,
              permissionModel: permissionModel,
              autoDeployment: _autoDeployment?.build(),
              callAs: callAs,
              clientRequestToken: clientRequestToken,
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

        _$failedField = 'autoDeployment';
        _autoDeployment?.build();

        _$failedField = 'managedExecution';
        _managedExecution?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateStackSetInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
