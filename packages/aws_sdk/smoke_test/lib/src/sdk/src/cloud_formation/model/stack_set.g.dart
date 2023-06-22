// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSet extends StackSet {
  @override
  final String? stackSetName;
  @override
  final String? stackSetId;
  @override
  final String? description;
  @override
  final _i2.StackSetStatus? status;
  @override
  final String? templateBody;
  @override
  final _i10.BuiltList<_i3.Parameter>? parameters;
  @override
  final _i10.BuiltList<_i4.Capability>? capabilities;
  @override
  final _i10.BuiltList<_i5.Tag>? tags;
  @override
  final String? stackSetArn;
  @override
  final String? administrationRoleArn;
  @override
  final String? executionRoleName;
  @override
  final _i6.StackSetDriftDetectionDetails? stackSetDriftDetectionDetails;
  @override
  final _i7.AutoDeployment? autoDeployment;
  @override
  final _i8.PermissionModels? permissionModel;
  @override
  final _i10.BuiltList<String>? organizationalUnitIds;
  @override
  final _i9.ManagedExecution? managedExecution;
  @override
  final _i10.BuiltList<String>? regions;

  factory _$StackSet([void Function(StackSetBuilder)? updates]) =>
      (new StackSetBuilder()..update(updates))._build();

  _$StackSet._(
      {this.stackSetName,
      this.stackSetId,
      this.description,
      this.status,
      this.templateBody,
      this.parameters,
      this.capabilities,
      this.tags,
      this.stackSetArn,
      this.administrationRoleArn,
      this.executionRoleName,
      this.stackSetDriftDetectionDetails,
      this.autoDeployment,
      this.permissionModel,
      this.organizationalUnitIds,
      this.managedExecution,
      this.regions})
      : super._();

  @override
  StackSet rebuild(void Function(StackSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetBuilder toBuilder() => new StackSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSet &&
        stackSetName == other.stackSetName &&
        stackSetId == other.stackSetId &&
        description == other.description &&
        status == other.status &&
        templateBody == other.templateBody &&
        parameters == other.parameters &&
        capabilities == other.capabilities &&
        tags == other.tags &&
        stackSetArn == other.stackSetArn &&
        administrationRoleArn == other.administrationRoleArn &&
        executionRoleName == other.executionRoleName &&
        stackSetDriftDetectionDetails == other.stackSetDriftDetectionDetails &&
        autoDeployment == other.autoDeployment &&
        permissionModel == other.permissionModel &&
        organizationalUnitIds == other.organizationalUnitIds &&
        managedExecution == other.managedExecution &&
        regions == other.regions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, stackSetId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, stackSetArn.hashCode);
    _$hash = $jc(_$hash, administrationRoleArn.hashCode);
    _$hash = $jc(_$hash, executionRoleName.hashCode);
    _$hash = $jc(_$hash, stackSetDriftDetectionDetails.hashCode);
    _$hash = $jc(_$hash, autoDeployment.hashCode);
    _$hash = $jc(_$hash, permissionModel.hashCode);
    _$hash = $jc(_$hash, organizationalUnitIds.hashCode);
    _$hash = $jc(_$hash, managedExecution.hashCode);
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetBuilder implements Builder<StackSet, StackSetBuilder> {
  _$StackSet? _$v;

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

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

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

  String? _stackSetArn;
  String? get stackSetArn => _$this._stackSetArn;
  set stackSetArn(String? stackSetArn) => _$this._stackSetArn = stackSetArn;

  String? _administrationRoleArn;
  String? get administrationRoleArn => _$this._administrationRoleArn;
  set administrationRoleArn(String? administrationRoleArn) =>
      _$this._administrationRoleArn = administrationRoleArn;

  String? _executionRoleName;
  String? get executionRoleName => _$this._executionRoleName;
  set executionRoleName(String? executionRoleName) =>
      _$this._executionRoleName = executionRoleName;

  _i6.StackSetDriftDetectionDetailsBuilder? _stackSetDriftDetectionDetails;
  _i6.StackSetDriftDetectionDetailsBuilder get stackSetDriftDetectionDetails =>
      _$this._stackSetDriftDetectionDetails ??=
          new _i6.StackSetDriftDetectionDetailsBuilder();
  set stackSetDriftDetectionDetails(
          _i6.StackSetDriftDetectionDetailsBuilder?
              stackSetDriftDetectionDetails) =>
      _$this._stackSetDriftDetectionDetails = stackSetDriftDetectionDetails;

  _i7.AutoDeploymentBuilder? _autoDeployment;
  _i7.AutoDeploymentBuilder get autoDeployment =>
      _$this._autoDeployment ??= new _i7.AutoDeploymentBuilder();
  set autoDeployment(_i7.AutoDeploymentBuilder? autoDeployment) =>
      _$this._autoDeployment = autoDeployment;

  _i8.PermissionModels? _permissionModel;
  _i8.PermissionModels? get permissionModel => _$this._permissionModel;
  set permissionModel(_i8.PermissionModels? permissionModel) =>
      _$this._permissionModel = permissionModel;

  _i10.ListBuilder<String>? _organizationalUnitIds;
  _i10.ListBuilder<String> get organizationalUnitIds =>
      _$this._organizationalUnitIds ??= new _i10.ListBuilder<String>();
  set organizationalUnitIds(_i10.ListBuilder<String>? organizationalUnitIds) =>
      _$this._organizationalUnitIds = organizationalUnitIds;

  _i9.ManagedExecutionBuilder? _managedExecution;
  _i9.ManagedExecutionBuilder get managedExecution =>
      _$this._managedExecution ??= new _i9.ManagedExecutionBuilder();
  set managedExecution(_i9.ManagedExecutionBuilder? managedExecution) =>
      _$this._managedExecution = managedExecution;

  _i10.ListBuilder<String>? _regions;
  _i10.ListBuilder<String> get regions =>
      _$this._regions ??= new _i10.ListBuilder<String>();
  set regions(_i10.ListBuilder<String>? regions) => _$this._regions = regions;

  StackSetBuilder() {
    StackSet._init(this);
  }

  StackSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _stackSetId = $v.stackSetId;
      _description = $v.description;
      _status = $v.status;
      _templateBody = $v.templateBody;
      _parameters = $v.parameters?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _stackSetArn = $v.stackSetArn;
      _administrationRoleArn = $v.administrationRoleArn;
      _executionRoleName = $v.executionRoleName;
      _stackSetDriftDetectionDetails =
          $v.stackSetDriftDetectionDetails?.toBuilder();
      _autoDeployment = $v.autoDeployment?.toBuilder();
      _permissionModel = $v.permissionModel;
      _organizationalUnitIds = $v.organizationalUnitIds?.toBuilder();
      _managedExecution = $v.managedExecution?.toBuilder();
      _regions = $v.regions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSet;
  }

  @override
  void update(void Function(StackSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSet build() => _build();

  _$StackSet _build() {
    _$StackSet _$result;
    try {
      _$result = _$v ??
          new _$StackSet._(
              stackSetName: stackSetName,
              stackSetId: stackSetId,
              description: description,
              status: status,
              templateBody: templateBody,
              parameters: _parameters?.build(),
              capabilities: _capabilities?.build(),
              tags: _tags?.build(),
              stackSetArn: stackSetArn,
              administrationRoleArn: administrationRoleArn,
              executionRoleName: executionRoleName,
              stackSetDriftDetectionDetails:
                  _stackSetDriftDetectionDetails?.build(),
              autoDeployment: _autoDeployment?.build(),
              permissionModel: permissionModel,
              organizationalUnitIds: _organizationalUnitIds?.build(),
              managedExecution: _managedExecution?.build(),
              regions: _regions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
        _$failedField = 'capabilities';
        _capabilities?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'stackSetDriftDetectionDetails';
        _stackSetDriftDetectionDetails?.build();
        _$failedField = 'autoDeployment';
        _autoDeployment?.build();

        _$failedField = 'organizationalUnitIds';
        _organizationalUnitIds?.build();
        _$failedField = 'managedExecution';
        _managedExecution?.build();
        _$failedField = 'regions';
        _regions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackSet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
