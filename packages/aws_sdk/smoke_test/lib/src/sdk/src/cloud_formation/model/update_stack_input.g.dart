// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.update_stack_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStackInput extends UpdateStackInput {
  @override
  final String stackName;
  @override
  final String? templateBody;
  @override
  final String? templateUrl;
  @override
  final bool? usePreviousTemplate;
  @override
  final String? stackPolicyDuringUpdateBody;
  @override
  final String? stackPolicyDuringUpdateUrl;
  @override
  final _i7.BuiltList<_i3.Parameter>? parameters;
  @override
  final _i7.BuiltList<_i4.Capability>? capabilities;
  @override
  final _i7.BuiltList<String>? resourceTypes;
  @override
  final String? roleArn;
  @override
  final _i5.RollbackConfiguration? rollbackConfiguration;
  @override
  final String? stackPolicyBody;
  @override
  final String? stackPolicyUrl;
  @override
  final _i7.BuiltList<String>? notificationArNs;
  @override
  final _i7.BuiltList<_i6.Tag>? tags;
  @override
  final bool? disableRollback;
  @override
  final String? clientRequestToken;

  factory _$UpdateStackInput(
          [void Function(UpdateStackInputBuilder)? updates]) =>
      (new UpdateStackInputBuilder()..update(updates))._build();

  _$UpdateStackInput._(
      {required this.stackName,
      this.templateBody,
      this.templateUrl,
      this.usePreviousTemplate,
      this.stackPolicyDuringUpdateBody,
      this.stackPolicyDuringUpdateUrl,
      this.parameters,
      this.capabilities,
      this.resourceTypes,
      this.roleArn,
      this.rollbackConfiguration,
      this.stackPolicyBody,
      this.stackPolicyUrl,
      this.notificationArNs,
      this.tags,
      this.disableRollback,
      this.clientRequestToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'UpdateStackInput', 'stackName');
  }

  @override
  UpdateStackInput rebuild(void Function(UpdateStackInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStackInputBuilder toBuilder() =>
      new UpdateStackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStackInput &&
        stackName == other.stackName &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl &&
        usePreviousTemplate == other.usePreviousTemplate &&
        stackPolicyDuringUpdateBody == other.stackPolicyDuringUpdateBody &&
        stackPolicyDuringUpdateUrl == other.stackPolicyDuringUpdateUrl &&
        parameters == other.parameters &&
        capabilities == other.capabilities &&
        resourceTypes == other.resourceTypes &&
        roleArn == other.roleArn &&
        rollbackConfiguration == other.rollbackConfiguration &&
        stackPolicyBody == other.stackPolicyBody &&
        stackPolicyUrl == other.stackPolicyUrl &&
        notificationArNs == other.notificationArNs &&
        tags == other.tags &&
        disableRollback == other.disableRollback &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, usePreviousTemplate.hashCode);
    _$hash = $jc(_$hash, stackPolicyDuringUpdateBody.hashCode);
    _$hash = $jc(_$hash, stackPolicyDuringUpdateUrl.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, rollbackConfiguration.hashCode);
    _$hash = $jc(_$hash, stackPolicyBody.hashCode);
    _$hash = $jc(_$hash, stackPolicyUrl.hashCode);
    _$hash = $jc(_$hash, notificationArNs.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, disableRollback.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateStackInputBuilder
    implements Builder<UpdateStackInput, UpdateStackInputBuilder> {
  _$UpdateStackInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

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

  String? _stackPolicyDuringUpdateBody;
  String? get stackPolicyDuringUpdateBody =>
      _$this._stackPolicyDuringUpdateBody;
  set stackPolicyDuringUpdateBody(String? stackPolicyDuringUpdateBody) =>
      _$this._stackPolicyDuringUpdateBody = stackPolicyDuringUpdateBody;

  String? _stackPolicyDuringUpdateUrl;
  String? get stackPolicyDuringUpdateUrl => _$this._stackPolicyDuringUpdateUrl;
  set stackPolicyDuringUpdateUrl(String? stackPolicyDuringUpdateUrl) =>
      _$this._stackPolicyDuringUpdateUrl = stackPolicyDuringUpdateUrl;

  _i7.ListBuilder<_i3.Parameter>? _parameters;
  _i7.ListBuilder<_i3.Parameter> get parameters =>
      _$this._parameters ??= new _i7.ListBuilder<_i3.Parameter>();
  set parameters(_i7.ListBuilder<_i3.Parameter>? parameters) =>
      _$this._parameters = parameters;

  _i7.ListBuilder<_i4.Capability>? _capabilities;
  _i7.ListBuilder<_i4.Capability> get capabilities =>
      _$this._capabilities ??= new _i7.ListBuilder<_i4.Capability>();
  set capabilities(_i7.ListBuilder<_i4.Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  _i7.ListBuilder<String>? _resourceTypes;
  _i7.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i7.ListBuilder<String>();
  set resourceTypes(_i7.ListBuilder<String>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  _i5.RollbackConfigurationBuilder? _rollbackConfiguration;
  _i5.RollbackConfigurationBuilder get rollbackConfiguration =>
      _$this._rollbackConfiguration ??= new _i5.RollbackConfigurationBuilder();
  set rollbackConfiguration(
          _i5.RollbackConfigurationBuilder? rollbackConfiguration) =>
      _$this._rollbackConfiguration = rollbackConfiguration;

  String? _stackPolicyBody;
  String? get stackPolicyBody => _$this._stackPolicyBody;
  set stackPolicyBody(String? stackPolicyBody) =>
      _$this._stackPolicyBody = stackPolicyBody;

  String? _stackPolicyUrl;
  String? get stackPolicyUrl => _$this._stackPolicyUrl;
  set stackPolicyUrl(String? stackPolicyUrl) =>
      _$this._stackPolicyUrl = stackPolicyUrl;

  _i7.ListBuilder<String>? _notificationArNs;
  _i7.ListBuilder<String> get notificationArNs =>
      _$this._notificationArNs ??= new _i7.ListBuilder<String>();
  set notificationArNs(_i7.ListBuilder<String>? notificationArNs) =>
      _$this._notificationArNs = notificationArNs;

  _i7.ListBuilder<_i6.Tag>? _tags;
  _i7.ListBuilder<_i6.Tag> get tags =>
      _$this._tags ??= new _i7.ListBuilder<_i6.Tag>();
  set tags(_i7.ListBuilder<_i6.Tag>? tags) => _$this._tags = tags;

  bool? _disableRollback;
  bool? get disableRollback => _$this._disableRollback;
  set disableRollback(bool? disableRollback) =>
      _$this._disableRollback = disableRollback;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  UpdateStackInputBuilder() {
    UpdateStackInput._init(this);
  }

  UpdateStackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _usePreviousTemplate = $v.usePreviousTemplate;
      _stackPolicyDuringUpdateBody = $v.stackPolicyDuringUpdateBody;
      _stackPolicyDuringUpdateUrl = $v.stackPolicyDuringUpdateUrl;
      _parameters = $v.parameters?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _roleArn = $v.roleArn;
      _rollbackConfiguration = $v.rollbackConfiguration?.toBuilder();
      _stackPolicyBody = $v.stackPolicyBody;
      _stackPolicyUrl = $v.stackPolicyUrl;
      _notificationArNs = $v.notificationArNs?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _disableRollback = $v.disableRollback;
      _clientRequestToken = $v.clientRequestToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStackInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStackInput;
  }

  @override
  void update(void Function(UpdateStackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStackInput build() => _build();

  _$UpdateStackInput _build() {
    _$UpdateStackInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateStackInput._(
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'UpdateStackInput', 'stackName'),
              templateBody: templateBody,
              templateUrl: templateUrl,
              usePreviousTemplate: usePreviousTemplate,
              stackPolicyDuringUpdateBody: stackPolicyDuringUpdateBody,
              stackPolicyDuringUpdateUrl: stackPolicyDuringUpdateUrl,
              parameters: _parameters?.build(),
              capabilities: _capabilities?.build(),
              resourceTypes: _resourceTypes?.build(),
              roleArn: roleArn,
              rollbackConfiguration: _rollbackConfiguration?.build(),
              stackPolicyBody: stackPolicyBody,
              stackPolicyUrl: stackPolicyUrl,
              notificationArNs: _notificationArNs?.build(),
              tags: _tags?.build(),
              disableRollback: disableRollback,
              clientRequestToken: clientRequestToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
        _$failedField = 'capabilities';
        _capabilities?.build();
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();

        _$failedField = 'rollbackConfiguration';
        _rollbackConfiguration?.build();

        _$failedField = 'notificationArNs';
        _notificationArNs?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateStackInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
