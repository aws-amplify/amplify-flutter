// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_change_set_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateChangeSetInput extends CreateChangeSetInput {
  @override
  final String stackName;
  @override
  final String? templateBody;
  @override
  final String? templateUrl;
  @override
  final bool? usePreviousTemplate;
  @override
  final _i10.BuiltList<_i3.Parameter>? parameters;
  @override
  final _i10.BuiltList<_i4.Capability>? capabilities;
  @override
  final _i10.BuiltList<String>? resourceTypes;
  @override
  final String? roleArn;
  @override
  final _i5.RollbackConfiguration? rollbackConfiguration;
  @override
  final _i10.BuiltList<String>? notificationArNs;
  @override
  final _i10.BuiltList<_i6.Tag>? tags;
  @override
  final String changeSetName;
  @override
  final String? clientToken;
  @override
  final String? description;
  @override
  final _i7.ChangeSetType? changeSetType;
  @override
  final _i10.BuiltList<_i8.ResourceToImport>? resourcesToImport;
  @override
  final bool? includeNestedStacks;
  @override
  final _i9.OnStackFailure? onStackFailure;

  factory _$CreateChangeSetInput(
          [void Function(CreateChangeSetInputBuilder)? updates]) =>
      (new CreateChangeSetInputBuilder()..update(updates))._build();

  _$CreateChangeSetInput._(
      {required this.stackName,
      this.templateBody,
      this.templateUrl,
      this.usePreviousTemplate,
      this.parameters,
      this.capabilities,
      this.resourceTypes,
      this.roleArn,
      this.rollbackConfiguration,
      this.notificationArNs,
      this.tags,
      required this.changeSetName,
      this.clientToken,
      this.description,
      this.changeSetType,
      this.resourcesToImport,
      this.includeNestedStacks,
      this.onStackFailure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'CreateChangeSetInput', 'stackName');
    BuiltValueNullFieldError.checkNotNull(
        changeSetName, r'CreateChangeSetInput', 'changeSetName');
  }

  @override
  CreateChangeSetInput rebuild(
          void Function(CreateChangeSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateChangeSetInputBuilder toBuilder() =>
      new CreateChangeSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateChangeSetInput &&
        stackName == other.stackName &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl &&
        usePreviousTemplate == other.usePreviousTemplate &&
        parameters == other.parameters &&
        capabilities == other.capabilities &&
        resourceTypes == other.resourceTypes &&
        roleArn == other.roleArn &&
        rollbackConfiguration == other.rollbackConfiguration &&
        notificationArNs == other.notificationArNs &&
        tags == other.tags &&
        changeSetName == other.changeSetName &&
        clientToken == other.clientToken &&
        description == other.description &&
        changeSetType == other.changeSetType &&
        resourcesToImport == other.resourcesToImport &&
        includeNestedStacks == other.includeNestedStacks &&
        onStackFailure == other.onStackFailure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, usePreviousTemplate.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, rollbackConfiguration.hashCode);
    _$hash = $jc(_$hash, notificationArNs.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, changeSetType.hashCode);
    _$hash = $jc(_$hash, resourcesToImport.hashCode);
    _$hash = $jc(_$hash, includeNestedStacks.hashCode);
    _$hash = $jc(_$hash, onStackFailure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateChangeSetInputBuilder
    implements Builder<CreateChangeSetInput, CreateChangeSetInputBuilder> {
  _$CreateChangeSetInput? _$v;

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

  _i10.ListBuilder<String>? _resourceTypes;
  _i10.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i10.ListBuilder<String>();
  set resourceTypes(_i10.ListBuilder<String>? resourceTypes) =>
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

  _i10.ListBuilder<String>? _notificationArNs;
  _i10.ListBuilder<String> get notificationArNs =>
      _$this._notificationArNs ??= new _i10.ListBuilder<String>();
  set notificationArNs(_i10.ListBuilder<String>? notificationArNs) =>
      _$this._notificationArNs = notificationArNs;

  _i10.ListBuilder<_i6.Tag>? _tags;
  _i10.ListBuilder<_i6.Tag> get tags =>
      _$this._tags ??= new _i10.ListBuilder<_i6.Tag>();
  set tags(_i10.ListBuilder<_i6.Tag>? tags) => _$this._tags = tags;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i7.ChangeSetType? _changeSetType;
  _i7.ChangeSetType? get changeSetType => _$this._changeSetType;
  set changeSetType(_i7.ChangeSetType? changeSetType) =>
      _$this._changeSetType = changeSetType;

  _i10.ListBuilder<_i8.ResourceToImport>? _resourcesToImport;
  _i10.ListBuilder<_i8.ResourceToImport> get resourcesToImport =>
      _$this._resourcesToImport ??=
          new _i10.ListBuilder<_i8.ResourceToImport>();
  set resourcesToImport(
          _i10.ListBuilder<_i8.ResourceToImport>? resourcesToImport) =>
      _$this._resourcesToImport = resourcesToImport;

  bool? _includeNestedStacks;
  bool? get includeNestedStacks => _$this._includeNestedStacks;
  set includeNestedStacks(bool? includeNestedStacks) =>
      _$this._includeNestedStacks = includeNestedStacks;

  _i9.OnStackFailure? _onStackFailure;
  _i9.OnStackFailure? get onStackFailure => _$this._onStackFailure;
  set onStackFailure(_i9.OnStackFailure? onStackFailure) =>
      _$this._onStackFailure = onStackFailure;

  CreateChangeSetInputBuilder() {
    CreateChangeSetInput._init(this);
  }

  CreateChangeSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _usePreviousTemplate = $v.usePreviousTemplate;
      _parameters = $v.parameters?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _roleArn = $v.roleArn;
      _rollbackConfiguration = $v.rollbackConfiguration?.toBuilder();
      _notificationArNs = $v.notificationArNs?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _changeSetName = $v.changeSetName;
      _clientToken = $v.clientToken;
      _description = $v.description;
      _changeSetType = $v.changeSetType;
      _resourcesToImport = $v.resourcesToImport?.toBuilder();
      _includeNestedStacks = $v.includeNestedStacks;
      _onStackFailure = $v.onStackFailure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateChangeSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateChangeSetInput;
  }

  @override
  void update(void Function(CreateChangeSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateChangeSetInput build() => _build();

  _$CreateChangeSetInput _build() {
    _$CreateChangeSetInput _$result;
    try {
      _$result = _$v ??
          new _$CreateChangeSetInput._(
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'CreateChangeSetInput', 'stackName'),
              templateBody: templateBody,
              templateUrl: templateUrl,
              usePreviousTemplate: usePreviousTemplate,
              parameters: _parameters?.build(),
              capabilities: _capabilities?.build(),
              resourceTypes: _resourceTypes?.build(),
              roleArn: roleArn,
              rollbackConfiguration: _rollbackConfiguration?.build(),
              notificationArNs: _notificationArNs?.build(),
              tags: _tags?.build(),
              changeSetName: BuiltValueNullFieldError.checkNotNull(
                  changeSetName, r'CreateChangeSetInput', 'changeSetName'),
              clientToken: clientToken,
              description: description,
              changeSetType: changeSetType,
              resourcesToImport: _resourcesToImport?.build(),
              includeNestedStacks: includeNestedStacks,
              onStackFailure: onStackFailure);
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

        _$failedField = 'resourcesToImport';
        _resourcesToImport?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateChangeSetInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
