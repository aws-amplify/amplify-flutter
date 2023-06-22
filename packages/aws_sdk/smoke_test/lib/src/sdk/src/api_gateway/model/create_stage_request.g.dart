// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stage_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStageRequest extends CreateStageRequest {
  @override
  final String restApiId;
  @override
  final String stageName;
  @override
  final String deploymentId;
  @override
  final String? description;
  @override
  final bool cacheClusterEnabled;
  @override
  final _i3.CacheClusterSize? cacheClusterSize;
  @override
  final _i5.BuiltMap<String, String>? variables;
  @override
  final String? documentationVersion;
  @override
  final _i4.CanarySettings? canarySettings;
  @override
  final bool tracingEnabled;
  @override
  final _i5.BuiltMap<String, String>? tags;

  factory _$CreateStageRequest(
          [void Function(CreateStageRequestBuilder)? updates]) =>
      (new CreateStageRequestBuilder()..update(updates))._build();

  _$CreateStageRequest._(
      {required this.restApiId,
      required this.stageName,
      required this.deploymentId,
      this.description,
      required this.cacheClusterEnabled,
      this.cacheClusterSize,
      this.variables,
      this.documentationVersion,
      this.canarySettings,
      required this.tracingEnabled,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateStageRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'CreateStageRequest', 'stageName');
    BuiltValueNullFieldError.checkNotNull(
        deploymentId, r'CreateStageRequest', 'deploymentId');
    BuiltValueNullFieldError.checkNotNull(
        cacheClusterEnabled, r'CreateStageRequest', 'cacheClusterEnabled');
    BuiltValueNullFieldError.checkNotNull(
        tracingEnabled, r'CreateStageRequest', 'tracingEnabled');
  }

  @override
  CreateStageRequest rebuild(
          void Function(CreateStageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStageRequestBuilder toBuilder() =>
      new CreateStageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStageRequest &&
        restApiId == other.restApiId &&
        stageName == other.stageName &&
        deploymentId == other.deploymentId &&
        description == other.description &&
        cacheClusterEnabled == other.cacheClusterEnabled &&
        cacheClusterSize == other.cacheClusterSize &&
        variables == other.variables &&
        documentationVersion == other.documentationVersion &&
        canarySettings == other.canarySettings &&
        tracingEnabled == other.tracingEnabled &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, cacheClusterEnabled.hashCode);
    _$hash = $jc(_$hash, cacheClusterSize.hashCode);
    _$hash = $jc(_$hash, variables.hashCode);
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, canarySettings.hashCode);
    _$hash = $jc(_$hash, tracingEnabled.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStageRequestBuilder
    implements Builder<CreateStageRequest, CreateStageRequestBuilder> {
  _$CreateStageRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _cacheClusterEnabled;
  bool? get cacheClusterEnabled => _$this._cacheClusterEnabled;
  set cacheClusterEnabled(bool? cacheClusterEnabled) =>
      _$this._cacheClusterEnabled = cacheClusterEnabled;

  _i3.CacheClusterSize? _cacheClusterSize;
  _i3.CacheClusterSize? get cacheClusterSize => _$this._cacheClusterSize;
  set cacheClusterSize(_i3.CacheClusterSize? cacheClusterSize) =>
      _$this._cacheClusterSize = cacheClusterSize;

  _i5.MapBuilder<String, String>? _variables;
  _i5.MapBuilder<String, String> get variables =>
      _$this._variables ??= new _i5.MapBuilder<String, String>();
  set variables(_i5.MapBuilder<String, String>? variables) =>
      _$this._variables = variables;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  _i4.CanarySettingsBuilder? _canarySettings;
  _i4.CanarySettingsBuilder get canarySettings =>
      _$this._canarySettings ??= new _i4.CanarySettingsBuilder();
  set canarySettings(_i4.CanarySettingsBuilder? canarySettings) =>
      _$this._canarySettings = canarySettings;

  bool? _tracingEnabled;
  bool? get tracingEnabled => _$this._tracingEnabled;
  set tracingEnabled(bool? tracingEnabled) =>
      _$this._tracingEnabled = tracingEnabled;

  _i5.MapBuilder<String, String>? _tags;
  _i5.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i5.MapBuilder<String, String>();
  set tags(_i5.MapBuilder<String, String>? tags) => _$this._tags = tags;

  CreateStageRequestBuilder() {
    CreateStageRequest._init(this);
  }

  CreateStageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _deploymentId = $v.deploymentId;
      _description = $v.description;
      _cacheClusterEnabled = $v.cacheClusterEnabled;
      _cacheClusterSize = $v.cacheClusterSize;
      _variables = $v.variables?.toBuilder();
      _documentationVersion = $v.documentationVersion;
      _canarySettings = $v.canarySettings?.toBuilder();
      _tracingEnabled = $v.tracingEnabled;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStageRequest;
  }

  @override
  void update(void Function(CreateStageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStageRequest build() => _build();

  _$CreateStageRequest _build() {
    _$CreateStageRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateStageRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'CreateStageRequest', 'restApiId'),
              stageName: BuiltValueNullFieldError.checkNotNull(
                  stageName, r'CreateStageRequest', 'stageName'),
              deploymentId: BuiltValueNullFieldError.checkNotNull(
                  deploymentId, r'CreateStageRequest', 'deploymentId'),
              description: description,
              cacheClusterEnabled: BuiltValueNullFieldError.checkNotNull(
                  cacheClusterEnabled,
                  r'CreateStageRequest',
                  'cacheClusterEnabled'),
              cacheClusterSize: cacheClusterSize,
              variables: _variables?.build(),
              documentationVersion: documentationVersion,
              canarySettings: _canarySettings?.build(),
              tracingEnabled: BuiltValueNullFieldError.checkNotNull(
                  tracingEnabled, r'CreateStageRequest', 'tracingEnabled'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'variables';
        _variables?.build();

        _$failedField = 'canarySettings';
        _canarySettings?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateStageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateStageRequestPayload extends CreateStageRequestPayload {
  @override
  final bool cacheClusterEnabled;
  @override
  final _i3.CacheClusterSize? cacheClusterSize;
  @override
  final _i4.CanarySettings? canarySettings;
  @override
  final String deploymentId;
  @override
  final String? description;
  @override
  final String? documentationVersion;
  @override
  final String stageName;
  @override
  final _i5.BuiltMap<String, String>? tags;
  @override
  final bool tracingEnabled;
  @override
  final _i5.BuiltMap<String, String>? variables;

  factory _$CreateStageRequestPayload(
          [void Function(CreateStageRequestPayloadBuilder)? updates]) =>
      (new CreateStageRequestPayloadBuilder()..update(updates))._build();

  _$CreateStageRequestPayload._(
      {required this.cacheClusterEnabled,
      this.cacheClusterSize,
      this.canarySettings,
      required this.deploymentId,
      this.description,
      this.documentationVersion,
      required this.stageName,
      this.tags,
      required this.tracingEnabled,
      this.variables})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(cacheClusterEnabled,
        r'CreateStageRequestPayload', 'cacheClusterEnabled');
    BuiltValueNullFieldError.checkNotNull(
        deploymentId, r'CreateStageRequestPayload', 'deploymentId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'CreateStageRequestPayload', 'stageName');
    BuiltValueNullFieldError.checkNotNull(
        tracingEnabled, r'CreateStageRequestPayload', 'tracingEnabled');
  }

  @override
  CreateStageRequestPayload rebuild(
          void Function(CreateStageRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateStageRequestPayloadBuilder toBuilder() =>
      new CreateStageRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStageRequestPayload &&
        cacheClusterEnabled == other.cacheClusterEnabled &&
        cacheClusterSize == other.cacheClusterSize &&
        canarySettings == other.canarySettings &&
        deploymentId == other.deploymentId &&
        description == other.description &&
        documentationVersion == other.documentationVersion &&
        stageName == other.stageName &&
        tags == other.tags &&
        tracingEnabled == other.tracingEnabled &&
        variables == other.variables;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cacheClusterEnabled.hashCode);
    _$hash = $jc(_$hash, cacheClusterSize.hashCode);
    _$hash = $jc(_$hash, canarySettings.hashCode);
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, tracingEnabled.hashCode);
    _$hash = $jc(_$hash, variables.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateStageRequestPayloadBuilder
    implements
        Builder<CreateStageRequestPayload, CreateStageRequestPayloadBuilder> {
  _$CreateStageRequestPayload? _$v;

  bool? _cacheClusterEnabled;
  bool? get cacheClusterEnabled => _$this._cacheClusterEnabled;
  set cacheClusterEnabled(bool? cacheClusterEnabled) =>
      _$this._cacheClusterEnabled = cacheClusterEnabled;

  _i3.CacheClusterSize? _cacheClusterSize;
  _i3.CacheClusterSize? get cacheClusterSize => _$this._cacheClusterSize;
  set cacheClusterSize(_i3.CacheClusterSize? cacheClusterSize) =>
      _$this._cacheClusterSize = cacheClusterSize;

  _i4.CanarySettingsBuilder? _canarySettings;
  _i4.CanarySettingsBuilder get canarySettings =>
      _$this._canarySettings ??= new _i4.CanarySettingsBuilder();
  set canarySettings(_i4.CanarySettingsBuilder? canarySettings) =>
      _$this._canarySettings = canarySettings;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  _i5.MapBuilder<String, String>? _tags;
  _i5.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i5.MapBuilder<String, String>();
  set tags(_i5.MapBuilder<String, String>? tags) => _$this._tags = tags;

  bool? _tracingEnabled;
  bool? get tracingEnabled => _$this._tracingEnabled;
  set tracingEnabled(bool? tracingEnabled) =>
      _$this._tracingEnabled = tracingEnabled;

  _i5.MapBuilder<String, String>? _variables;
  _i5.MapBuilder<String, String> get variables =>
      _$this._variables ??= new _i5.MapBuilder<String, String>();
  set variables(_i5.MapBuilder<String, String>? variables) =>
      _$this._variables = variables;

  CreateStageRequestPayloadBuilder() {
    CreateStageRequestPayload._init(this);
  }

  CreateStageRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cacheClusterEnabled = $v.cacheClusterEnabled;
      _cacheClusterSize = $v.cacheClusterSize;
      _canarySettings = $v.canarySettings?.toBuilder();
      _deploymentId = $v.deploymentId;
      _description = $v.description;
      _documentationVersion = $v.documentationVersion;
      _stageName = $v.stageName;
      _tags = $v.tags?.toBuilder();
      _tracingEnabled = $v.tracingEnabled;
      _variables = $v.variables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStageRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateStageRequestPayload;
  }

  @override
  void update(void Function(CreateStageRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStageRequestPayload build() => _build();

  _$CreateStageRequestPayload _build() {
    _$CreateStageRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$CreateStageRequestPayload._(
              cacheClusterEnabled: BuiltValueNullFieldError.checkNotNull(
                  cacheClusterEnabled,
                  r'CreateStageRequestPayload',
                  'cacheClusterEnabled'),
              cacheClusterSize: cacheClusterSize,
              canarySettings: _canarySettings?.build(),
              deploymentId: BuiltValueNullFieldError.checkNotNull(
                  deploymentId, r'CreateStageRequestPayload', 'deploymentId'),
              description: description,
              documentationVersion: documentationVersion,
              stageName: BuiltValueNullFieldError.checkNotNull(
                  stageName, r'CreateStageRequestPayload', 'stageName'),
              tags: _tags?.build(),
              tracingEnabled: BuiltValueNullFieldError.checkNotNull(
                  tracingEnabled,
                  r'CreateStageRequestPayload',
                  'tracingEnabled'),
              variables: _variables?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'canarySettings';
        _canarySettings?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'variables';
        _variables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateStageRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
