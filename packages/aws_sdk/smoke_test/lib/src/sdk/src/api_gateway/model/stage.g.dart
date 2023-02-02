// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.stage;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Stage extends Stage {
  @override
  final _i2.AccessLogSettings? accessLogSettings;
  @override
  final bool? cacheClusterEnabled;
  @override
  final _i3.CacheClusterSize? cacheClusterSize;
  @override
  final _i4.CacheClusterStatus? cacheClusterStatus;
  @override
  final _i5.CanarySettings? canarySettings;
  @override
  final String? clientCertificateId;
  @override
  final DateTime? createdDate;
  @override
  final String? deploymentId;
  @override
  final String? description;
  @override
  final String? documentationVersion;
  @override
  final DateTime? lastUpdatedDate;
  @override
  final _i7.BuiltMap<String, _i6.MethodSetting>? methodSettings;
  @override
  final String? stageName;
  @override
  final _i7.BuiltMap<String, String>? tags;
  @override
  final bool? tracingEnabled;
  @override
  final _i7.BuiltMap<String, String>? variables;
  @override
  final String? webAclArn;

  factory _$Stage([void Function(StageBuilder)? updates]) =>
      (new StageBuilder()..update(updates))._build();

  _$Stage._(
      {this.accessLogSettings,
      this.cacheClusterEnabled,
      this.cacheClusterSize,
      this.cacheClusterStatus,
      this.canarySettings,
      this.clientCertificateId,
      this.createdDate,
      this.deploymentId,
      this.description,
      this.documentationVersion,
      this.lastUpdatedDate,
      this.methodSettings,
      this.stageName,
      this.tags,
      this.tracingEnabled,
      this.variables,
      this.webAclArn})
      : super._();

  @override
  Stage rebuild(void Function(StageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StageBuilder toBuilder() => new StageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stage &&
        accessLogSettings == other.accessLogSettings &&
        cacheClusterEnabled == other.cacheClusterEnabled &&
        cacheClusterSize == other.cacheClusterSize &&
        cacheClusterStatus == other.cacheClusterStatus &&
        canarySettings == other.canarySettings &&
        clientCertificateId == other.clientCertificateId &&
        createdDate == other.createdDate &&
        deploymentId == other.deploymentId &&
        description == other.description &&
        documentationVersion == other.documentationVersion &&
        lastUpdatedDate == other.lastUpdatedDate &&
        methodSettings == other.methodSettings &&
        stageName == other.stageName &&
        tags == other.tags &&
        tracingEnabled == other.tracingEnabled &&
        variables == other.variables &&
        webAclArn == other.webAclArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessLogSettings.hashCode);
    _$hash = $jc(_$hash, cacheClusterEnabled.hashCode);
    _$hash = $jc(_$hash, cacheClusterSize.hashCode);
    _$hash = $jc(_$hash, cacheClusterStatus.hashCode);
    _$hash = $jc(_$hash, canarySettings.hashCode);
    _$hash = $jc(_$hash, clientCertificateId.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, lastUpdatedDate.hashCode);
    _$hash = $jc(_$hash, methodSettings.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, tracingEnabled.hashCode);
    _$hash = $jc(_$hash, variables.hashCode);
    _$hash = $jc(_$hash, webAclArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StageBuilder implements Builder<Stage, StageBuilder> {
  _$Stage? _$v;

  _i2.AccessLogSettingsBuilder? _accessLogSettings;
  _i2.AccessLogSettingsBuilder get accessLogSettings =>
      _$this._accessLogSettings ??= new _i2.AccessLogSettingsBuilder();
  set accessLogSettings(_i2.AccessLogSettingsBuilder? accessLogSettings) =>
      _$this._accessLogSettings = accessLogSettings;

  bool? _cacheClusterEnabled;
  bool? get cacheClusterEnabled => _$this._cacheClusterEnabled;
  set cacheClusterEnabled(bool? cacheClusterEnabled) =>
      _$this._cacheClusterEnabled = cacheClusterEnabled;

  _i3.CacheClusterSize? _cacheClusterSize;
  _i3.CacheClusterSize? get cacheClusterSize => _$this._cacheClusterSize;
  set cacheClusterSize(_i3.CacheClusterSize? cacheClusterSize) =>
      _$this._cacheClusterSize = cacheClusterSize;

  _i4.CacheClusterStatus? _cacheClusterStatus;
  _i4.CacheClusterStatus? get cacheClusterStatus => _$this._cacheClusterStatus;
  set cacheClusterStatus(_i4.CacheClusterStatus? cacheClusterStatus) =>
      _$this._cacheClusterStatus = cacheClusterStatus;

  _i5.CanarySettingsBuilder? _canarySettings;
  _i5.CanarySettingsBuilder get canarySettings =>
      _$this._canarySettings ??= new _i5.CanarySettingsBuilder();
  set canarySettings(_i5.CanarySettingsBuilder? canarySettings) =>
      _$this._canarySettings = canarySettings;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

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

  DateTime? _lastUpdatedDate;
  DateTime? get lastUpdatedDate => _$this._lastUpdatedDate;
  set lastUpdatedDate(DateTime? lastUpdatedDate) =>
      _$this._lastUpdatedDate = lastUpdatedDate;

  _i7.MapBuilder<String, _i6.MethodSetting>? _methodSettings;
  _i7.MapBuilder<String, _i6.MethodSetting> get methodSettings =>
      _$this._methodSettings ??=
          new _i7.MapBuilder<String, _i6.MethodSetting>();
  set methodSettings(
          _i7.MapBuilder<String, _i6.MethodSetting>? methodSettings) =>
      _$this._methodSettings = methodSettings;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  _i7.MapBuilder<String, String>? _tags;
  _i7.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i7.MapBuilder<String, String>();
  set tags(_i7.MapBuilder<String, String>? tags) => _$this._tags = tags;

  bool? _tracingEnabled;
  bool? get tracingEnabled => _$this._tracingEnabled;
  set tracingEnabled(bool? tracingEnabled) =>
      _$this._tracingEnabled = tracingEnabled;

  _i7.MapBuilder<String, String>? _variables;
  _i7.MapBuilder<String, String> get variables =>
      _$this._variables ??= new _i7.MapBuilder<String, String>();
  set variables(_i7.MapBuilder<String, String>? variables) =>
      _$this._variables = variables;

  String? _webAclArn;
  String? get webAclArn => _$this._webAclArn;
  set webAclArn(String? webAclArn) => _$this._webAclArn = webAclArn;

  StageBuilder() {
    Stage._init(this);
  }

  StageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessLogSettings = $v.accessLogSettings?.toBuilder();
      _cacheClusterEnabled = $v.cacheClusterEnabled;
      _cacheClusterSize = $v.cacheClusterSize;
      _cacheClusterStatus = $v.cacheClusterStatus;
      _canarySettings = $v.canarySettings?.toBuilder();
      _clientCertificateId = $v.clientCertificateId;
      _createdDate = $v.createdDate;
      _deploymentId = $v.deploymentId;
      _description = $v.description;
      _documentationVersion = $v.documentationVersion;
      _lastUpdatedDate = $v.lastUpdatedDate;
      _methodSettings = $v.methodSettings?.toBuilder();
      _stageName = $v.stageName;
      _tags = $v.tags?.toBuilder();
      _tracingEnabled = $v.tracingEnabled;
      _variables = $v.variables?.toBuilder();
      _webAclArn = $v.webAclArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Stage;
  }

  @override
  void update(void Function(StageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Stage build() => _build();

  _$Stage _build() {
    _$Stage _$result;
    try {
      _$result = _$v ??
          new _$Stage._(
              accessLogSettings: _accessLogSettings?.build(),
              cacheClusterEnabled: cacheClusterEnabled,
              cacheClusterSize: cacheClusterSize,
              cacheClusterStatus: cacheClusterStatus,
              canarySettings: _canarySettings?.build(),
              clientCertificateId: clientCertificateId,
              createdDate: createdDate,
              deploymentId: deploymentId,
              description: description,
              documentationVersion: documentationVersion,
              lastUpdatedDate: lastUpdatedDate,
              methodSettings: _methodSettings?.build(),
              stageName: stageName,
              tags: _tags?.build(),
              tracingEnabled: tracingEnabled,
              variables: _variables?.build(),
              webAclArn: webAclArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessLogSettings';
        _accessLogSettings?.build();

        _$failedField = 'canarySettings';
        _canarySettings?.build();

        _$failedField = 'methodSettings';
        _methodSettings?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'variables';
        _variables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Stage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
