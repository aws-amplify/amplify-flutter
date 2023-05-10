// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.create_stack_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStackInput extends CreateStackInput {
  @override
  final String stackName;
  @override
  final String? templateBody;
  @override
  final String? templateUrl;
  @override
  final _i8.BuiltList<_i3.Parameter>? parameters;
  @override
  final bool? disableRollback;
  @override
  final _i4.RollbackConfiguration? rollbackConfiguration;
  @override
  final int? timeoutInMinutes;
  @override
  final _i8.BuiltList<String>? notificationArNs;
  @override
  final _i8.BuiltList<_i5.Capability>? capabilities;
  @override
  final _i8.BuiltList<String>? resourceTypes;
  @override
  final String? roleArn;
  @override
  final _i6.OnFailure? onFailure;
  @override
  final String? stackPolicyBody;
  @override
  final String? stackPolicyUrl;
  @override
  final _i8.BuiltList<_i7.Tag>? tags;
  @override
  final String? clientRequestToken;
  @override
  final bool? enableTerminationProtection;

  factory _$CreateStackInput(
          [void Function(CreateStackInputBuilder)? updates]) =>
      (new CreateStackInputBuilder()..update(updates))._build();

  _$CreateStackInput._(
      {required this.stackName,
      this.templateBody,
      this.templateUrl,
      this.parameters,
      this.disableRollback,
      this.rollbackConfiguration,
      this.timeoutInMinutes,
      this.notificationArNs,
      this.capabilities,
      this.resourceTypes,
      this.roleArn,
      this.onFailure,
      this.stackPolicyBody,
      this.stackPolicyUrl,
      this.tags,
      this.clientRequestToken,
      this.enableTerminationProtection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'CreateStackInput', 'stackName');
  }

  @override
  CreateStackInput rebuild(void Function(CreateStackInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStackInputBuilder toBuilder() =>
      new CreateStackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStackInput &&
        stackName == other.stackName &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl &&
        parameters == other.parameters &&
        disableRollback == other.disableRollback &&
        rollbackConfiguration == other.rollbackConfiguration &&
        timeoutInMinutes == other.timeoutInMinutes &&
        notificationArNs == other.notificationArNs &&
        capabilities == other.capabilities &&
        resourceTypes == other.resourceTypes &&
        roleArn == other.roleArn &&
        onFailure == other.onFailure &&
        stackPolicyBody == other.stackPolicyBody &&
        stackPolicyUrl == other.stackPolicyUrl &&
        tags == other.tags &&
        clientRequestToken == other.clientRequestToken &&
        enableTerminationProtection == other.enableTerminationProtection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, disableRollback.hashCode);
    _$hash = $jc(_$hash, rollbackConfiguration.hashCode);
    _$hash = $jc(_$hash, timeoutInMinutes.hashCode);
    _$hash = $jc(_$hash, notificationArNs.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, onFailure.hashCode);
    _$hash = $jc(_$hash, stackPolicyBody.hashCode);
    _$hash = $jc(_$hash, stackPolicyUrl.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jc(_$hash, enableTerminationProtection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStackInputBuilder
    implements Builder<CreateStackInput, CreateStackInputBuilder> {
  _$CreateStackInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _templateUrl;
  String? get templateUrl => _$this._templateUrl;
  set templateUrl(String? templateUrl) => _$this._templateUrl = templateUrl;

  _i8.ListBuilder<_i3.Parameter>? _parameters;
  _i8.ListBuilder<_i3.Parameter> get parameters =>
      _$this._parameters ??= new _i8.ListBuilder<_i3.Parameter>();
  set parameters(_i8.ListBuilder<_i3.Parameter>? parameters) =>
      _$this._parameters = parameters;

  bool? _disableRollback;
  bool? get disableRollback => _$this._disableRollback;
  set disableRollback(bool? disableRollback) =>
      _$this._disableRollback = disableRollback;

  _i4.RollbackConfigurationBuilder? _rollbackConfiguration;
  _i4.RollbackConfigurationBuilder get rollbackConfiguration =>
      _$this._rollbackConfiguration ??= new _i4.RollbackConfigurationBuilder();
  set rollbackConfiguration(
          _i4.RollbackConfigurationBuilder? rollbackConfiguration) =>
      _$this._rollbackConfiguration = rollbackConfiguration;

  int? _timeoutInMinutes;
  int? get timeoutInMinutes => _$this._timeoutInMinutes;
  set timeoutInMinutes(int? timeoutInMinutes) =>
      _$this._timeoutInMinutes = timeoutInMinutes;

  _i8.ListBuilder<String>? _notificationArNs;
  _i8.ListBuilder<String> get notificationArNs =>
      _$this._notificationArNs ??= new _i8.ListBuilder<String>();
  set notificationArNs(_i8.ListBuilder<String>? notificationArNs) =>
      _$this._notificationArNs = notificationArNs;

  _i8.ListBuilder<_i5.Capability>? _capabilities;
  _i8.ListBuilder<_i5.Capability> get capabilities =>
      _$this._capabilities ??= new _i8.ListBuilder<_i5.Capability>();
  set capabilities(_i8.ListBuilder<_i5.Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  _i8.ListBuilder<String>? _resourceTypes;
  _i8.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i8.ListBuilder<String>();
  set resourceTypes(_i8.ListBuilder<String>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  _i6.OnFailure? _onFailure;
  _i6.OnFailure? get onFailure => _$this._onFailure;
  set onFailure(_i6.OnFailure? onFailure) => _$this._onFailure = onFailure;

  String? _stackPolicyBody;
  String? get stackPolicyBody => _$this._stackPolicyBody;
  set stackPolicyBody(String? stackPolicyBody) =>
      _$this._stackPolicyBody = stackPolicyBody;

  String? _stackPolicyUrl;
  String? get stackPolicyUrl => _$this._stackPolicyUrl;
  set stackPolicyUrl(String? stackPolicyUrl) =>
      _$this._stackPolicyUrl = stackPolicyUrl;

  _i8.ListBuilder<_i7.Tag>? _tags;
  _i8.ListBuilder<_i7.Tag> get tags =>
      _$this._tags ??= new _i8.ListBuilder<_i7.Tag>();
  set tags(_i8.ListBuilder<_i7.Tag>? tags) => _$this._tags = tags;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  bool? _enableTerminationProtection;
  bool? get enableTerminationProtection => _$this._enableTerminationProtection;
  set enableTerminationProtection(bool? enableTerminationProtection) =>
      _$this._enableTerminationProtection = enableTerminationProtection;

  CreateStackInputBuilder() {
    CreateStackInput._init(this);
  }

  CreateStackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _parameters = $v.parameters?.toBuilder();
      _disableRollback = $v.disableRollback;
      _rollbackConfiguration = $v.rollbackConfiguration?.toBuilder();
      _timeoutInMinutes = $v.timeoutInMinutes;
      _notificationArNs = $v.notificationArNs?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _roleArn = $v.roleArn;
      _onFailure = $v.onFailure;
      _stackPolicyBody = $v.stackPolicyBody;
      _stackPolicyUrl = $v.stackPolicyUrl;
      _tags = $v.tags?.toBuilder();
      _clientRequestToken = $v.clientRequestToken;
      _enableTerminationProtection = $v.enableTerminationProtection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStackInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStackInput;
  }

  @override
  void update(void Function(CreateStackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStackInput build() => _build();

  _$CreateStackInput _build() {
    _$CreateStackInput _$result;
    try {
      _$result = _$v ??
          new _$CreateStackInput._(
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'CreateStackInput', 'stackName'),
              templateBody: templateBody,
              templateUrl: templateUrl,
              parameters: _parameters?.build(),
              disableRollback: disableRollback,
              rollbackConfiguration: _rollbackConfiguration?.build(),
              timeoutInMinutes: timeoutInMinutes,
              notificationArNs: _notificationArNs?.build(),
              capabilities: _capabilities?.build(),
              resourceTypes: _resourceTypes?.build(),
              roleArn: roleArn,
              onFailure: onFailure,
              stackPolicyBody: stackPolicyBody,
              stackPolicyUrl: stackPolicyUrl,
              tags: _tags?.build(),
              clientRequestToken: clientRequestToken,
              enableTerminationProtection: enableTerminationProtection);
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
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateStackInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
