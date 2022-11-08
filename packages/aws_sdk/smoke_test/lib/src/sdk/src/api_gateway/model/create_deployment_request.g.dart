// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_deployment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDeploymentRequest extends CreateDeploymentRequest {
  @override
  final bool? cacheClusterEnabled;
  @override
  final _i3.CacheClusterSize? cacheClusterSize;
  @override
  final _i4.DeploymentCanarySettings? canarySettings;
  @override
  final String? description;
  @override
  final String restApiId;
  @override
  final String? stageDescription;
  @override
  final String? stageName;
  @override
  final bool? tracingEnabled;
  @override
  final _i5.BuiltMap<String, String>? variables;

  factory _$CreateDeploymentRequest(
          [void Function(CreateDeploymentRequestBuilder)? updates]) =>
      (new CreateDeploymentRequestBuilder()..update(updates))._build();

  _$CreateDeploymentRequest._(
      {this.cacheClusterEnabled,
      this.cacheClusterSize,
      this.canarySettings,
      this.description,
      required this.restApiId,
      this.stageDescription,
      this.stageName,
      this.tracingEnabled,
      this.variables})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateDeploymentRequest', 'restApiId');
  }

  @override
  CreateDeploymentRequest rebuild(
          void Function(CreateDeploymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDeploymentRequestBuilder toBuilder() =>
      new CreateDeploymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDeploymentRequest &&
        cacheClusterEnabled == other.cacheClusterEnabled &&
        cacheClusterSize == other.cacheClusterSize &&
        canarySettings == other.canarySettings &&
        description == other.description &&
        restApiId == other.restApiId &&
        stageDescription == other.stageDescription &&
        stageName == other.stageName &&
        tracingEnabled == other.tracingEnabled &&
        variables == other.variables;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, cacheClusterEnabled.hashCode),
                                    cacheClusterSize.hashCode),
                                canarySettings.hashCode),
                            description.hashCode),
                        restApiId.hashCode),
                    stageDescription.hashCode),
                stageName.hashCode),
            tracingEnabled.hashCode),
        variables.hashCode));
  }
}

class CreateDeploymentRequestBuilder
    implements
        Builder<CreateDeploymentRequest, CreateDeploymentRequestBuilder> {
  _$CreateDeploymentRequest? _$v;

  bool? _cacheClusterEnabled;
  bool? get cacheClusterEnabled => _$this._cacheClusterEnabled;
  set cacheClusterEnabled(bool? cacheClusterEnabled) =>
      _$this._cacheClusterEnabled = cacheClusterEnabled;

  _i3.CacheClusterSize? _cacheClusterSize;
  _i3.CacheClusterSize? get cacheClusterSize => _$this._cacheClusterSize;
  set cacheClusterSize(_i3.CacheClusterSize? cacheClusterSize) =>
      _$this._cacheClusterSize = cacheClusterSize;

  _i4.DeploymentCanarySettingsBuilder? _canarySettings;
  _i4.DeploymentCanarySettingsBuilder get canarySettings =>
      _$this._canarySettings ??= new _i4.DeploymentCanarySettingsBuilder();
  set canarySettings(_i4.DeploymentCanarySettingsBuilder? canarySettings) =>
      _$this._canarySettings = canarySettings;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageDescription;
  String? get stageDescription => _$this._stageDescription;
  set stageDescription(String? stageDescription) =>
      _$this._stageDescription = stageDescription;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  bool? _tracingEnabled;
  bool? get tracingEnabled => _$this._tracingEnabled;
  set tracingEnabled(bool? tracingEnabled) =>
      _$this._tracingEnabled = tracingEnabled;

  _i5.MapBuilder<String, String>? _variables;
  _i5.MapBuilder<String, String> get variables =>
      _$this._variables ??= new _i5.MapBuilder<String, String>();
  set variables(_i5.MapBuilder<String, String>? variables) =>
      _$this._variables = variables;

  CreateDeploymentRequestBuilder() {
    CreateDeploymentRequest._init(this);
  }

  CreateDeploymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cacheClusterEnabled = $v.cacheClusterEnabled;
      _cacheClusterSize = $v.cacheClusterSize;
      _canarySettings = $v.canarySettings?.toBuilder();
      _description = $v.description;
      _restApiId = $v.restApiId;
      _stageDescription = $v.stageDescription;
      _stageName = $v.stageName;
      _tracingEnabled = $v.tracingEnabled;
      _variables = $v.variables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDeploymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDeploymentRequest;
  }

  @override
  void update(void Function(CreateDeploymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDeploymentRequest build() => _build();

  _$CreateDeploymentRequest _build() {
    _$CreateDeploymentRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateDeploymentRequest._(
              cacheClusterEnabled: cacheClusterEnabled,
              cacheClusterSize: cacheClusterSize,
              canarySettings: _canarySettings?.build(),
              description: description,
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'CreateDeploymentRequest', 'restApiId'),
              stageDescription: stageDescription,
              stageName: stageName,
              tracingEnabled: tracingEnabled,
              variables: _variables?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'canarySettings';
        _canarySettings?.build();

        _$failedField = 'variables';
        _variables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDeploymentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateDeploymentRequestPayload extends CreateDeploymentRequestPayload {
  @override
  final bool? cacheClusterEnabled;
  @override
  final _i3.CacheClusterSize? cacheClusterSize;
  @override
  final _i4.DeploymentCanarySettings? canarySettings;
  @override
  final String? description;
  @override
  final String? stageDescription;
  @override
  final String? stageName;
  @override
  final bool? tracingEnabled;
  @override
  final _i5.BuiltMap<String, String>? variables;

  factory _$CreateDeploymentRequestPayload(
          [void Function(CreateDeploymentRequestPayloadBuilder)? updates]) =>
      (new CreateDeploymentRequestPayloadBuilder()..update(updates))._build();

  _$CreateDeploymentRequestPayload._(
      {this.cacheClusterEnabled,
      this.cacheClusterSize,
      this.canarySettings,
      this.description,
      this.stageDescription,
      this.stageName,
      this.tracingEnabled,
      this.variables})
      : super._();

  @override
  CreateDeploymentRequestPayload rebuild(
          void Function(CreateDeploymentRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDeploymentRequestPayloadBuilder toBuilder() =>
      new CreateDeploymentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDeploymentRequestPayload &&
        cacheClusterEnabled == other.cacheClusterEnabled &&
        cacheClusterSize == other.cacheClusterSize &&
        canarySettings == other.canarySettings &&
        description == other.description &&
        stageDescription == other.stageDescription &&
        stageName == other.stageName &&
        tracingEnabled == other.tracingEnabled &&
        variables == other.variables;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, cacheClusterEnabled.hashCode),
                                cacheClusterSize.hashCode),
                            canarySettings.hashCode),
                        description.hashCode),
                    stageDescription.hashCode),
                stageName.hashCode),
            tracingEnabled.hashCode),
        variables.hashCode));
  }
}

class CreateDeploymentRequestPayloadBuilder
    implements
        Builder<CreateDeploymentRequestPayload,
            CreateDeploymentRequestPayloadBuilder> {
  _$CreateDeploymentRequestPayload? _$v;

  bool? _cacheClusterEnabled;
  bool? get cacheClusterEnabled => _$this._cacheClusterEnabled;
  set cacheClusterEnabled(bool? cacheClusterEnabled) =>
      _$this._cacheClusterEnabled = cacheClusterEnabled;

  _i3.CacheClusterSize? _cacheClusterSize;
  _i3.CacheClusterSize? get cacheClusterSize => _$this._cacheClusterSize;
  set cacheClusterSize(_i3.CacheClusterSize? cacheClusterSize) =>
      _$this._cacheClusterSize = cacheClusterSize;

  _i4.DeploymentCanarySettingsBuilder? _canarySettings;
  _i4.DeploymentCanarySettingsBuilder get canarySettings =>
      _$this._canarySettings ??= new _i4.DeploymentCanarySettingsBuilder();
  set canarySettings(_i4.DeploymentCanarySettingsBuilder? canarySettings) =>
      _$this._canarySettings = canarySettings;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _stageDescription;
  String? get stageDescription => _$this._stageDescription;
  set stageDescription(String? stageDescription) =>
      _$this._stageDescription = stageDescription;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  bool? _tracingEnabled;
  bool? get tracingEnabled => _$this._tracingEnabled;
  set tracingEnabled(bool? tracingEnabled) =>
      _$this._tracingEnabled = tracingEnabled;

  _i5.MapBuilder<String, String>? _variables;
  _i5.MapBuilder<String, String> get variables =>
      _$this._variables ??= new _i5.MapBuilder<String, String>();
  set variables(_i5.MapBuilder<String, String>? variables) =>
      _$this._variables = variables;

  CreateDeploymentRequestPayloadBuilder() {
    CreateDeploymentRequestPayload._init(this);
  }

  CreateDeploymentRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cacheClusterEnabled = $v.cacheClusterEnabled;
      _cacheClusterSize = $v.cacheClusterSize;
      _canarySettings = $v.canarySettings?.toBuilder();
      _description = $v.description;
      _stageDescription = $v.stageDescription;
      _stageName = $v.stageName;
      _tracingEnabled = $v.tracingEnabled;
      _variables = $v.variables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDeploymentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDeploymentRequestPayload;
  }

  @override
  void update(void Function(CreateDeploymentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDeploymentRequestPayload build() => _build();

  _$CreateDeploymentRequestPayload _build() {
    _$CreateDeploymentRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$CreateDeploymentRequestPayload._(
              cacheClusterEnabled: cacheClusterEnabled,
              cacheClusterSize: cacheClusterSize,
              canarySettings: _canarySettings?.build(),
              description: description,
              stageDescription: stageDescription,
              stageName: stageName,
              tracingEnabled: tracingEnabled,
              variables: _variables?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'canarySettings';
        _canarySettings?.build();

        _$failedField = 'variables';
        _variables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDeploymentRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
