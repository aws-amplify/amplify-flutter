// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Stage extends Stage {
  @override
  final String? deploymentId;
  @override
  final String? clientCertificateId;
  @override
  final String? stageName;
  @override
  final String? description;
  @override
  final bool cacheClusterEnabled;
  @override
  final _i2.CacheClusterSize? cacheClusterSize;
  @override
  final _i3.CacheClusterStatus? cacheClusterStatus;
  @override
  final _i7.BuiltMap<String, _i4.MethodSetting>? methodSettings;
  @override
  final _i7.BuiltMap<String, String>? variables;
  @override
  final String? documentationVersion;
  @override
  final _i5.AccessLogSettings? accessLogSettings;
  @override
  final _i6.CanarySettings? canarySettings;
  @override
  final bool tracingEnabled;
  @override
  final String? webAclArn;
  @override
  final _i7.BuiltMap<String, String>? tags;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? lastUpdatedDate;

  factory _$Stage([void Function(StageBuilder)? updates]) =>
      (new StageBuilder()..update(updates))._build();

  _$Stage._(
      {this.deploymentId,
      this.clientCertificateId,
      this.stageName,
      this.description,
      required this.cacheClusterEnabled,
      this.cacheClusterSize,
      this.cacheClusterStatus,
      this.methodSettings,
      this.variables,
      this.documentationVersion,
      this.accessLogSettings,
      this.canarySettings,
      required this.tracingEnabled,
      this.webAclArn,
      this.tags,
      this.createdDate,
      this.lastUpdatedDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cacheClusterEnabled, r'Stage', 'cacheClusterEnabled');
    BuiltValueNullFieldError.checkNotNull(
        tracingEnabled, r'Stage', 'tracingEnabled');
  }

  @override
  Stage rebuild(void Function(StageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StageBuilder toBuilder() => new StageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stage &&
        deploymentId == other.deploymentId &&
        clientCertificateId == other.clientCertificateId &&
        stageName == other.stageName &&
        description == other.description &&
        cacheClusterEnabled == other.cacheClusterEnabled &&
        cacheClusterSize == other.cacheClusterSize &&
        cacheClusterStatus == other.cacheClusterStatus &&
        methodSettings == other.methodSettings &&
        variables == other.variables &&
        documentationVersion == other.documentationVersion &&
        accessLogSettings == other.accessLogSettings &&
        canarySettings == other.canarySettings &&
        tracingEnabled == other.tracingEnabled &&
        webAclArn == other.webAclArn &&
        tags == other.tags &&
        createdDate == other.createdDate &&
        lastUpdatedDate == other.lastUpdatedDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, clientCertificateId.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, cacheClusterEnabled.hashCode);
    _$hash = $jc(_$hash, cacheClusterSize.hashCode);
    _$hash = $jc(_$hash, cacheClusterStatus.hashCode);
    _$hash = $jc(_$hash, methodSettings.hashCode);
    _$hash = $jc(_$hash, variables.hashCode);
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, accessLogSettings.hashCode);
    _$hash = $jc(_$hash, canarySettings.hashCode);
    _$hash = $jc(_$hash, tracingEnabled.hashCode);
    _$hash = $jc(_$hash, webAclArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, lastUpdatedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StageBuilder implements Builder<Stage, StageBuilder> {
  _$Stage? _$v;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _cacheClusterEnabled;
  bool? get cacheClusterEnabled => _$this._cacheClusterEnabled;
  set cacheClusterEnabled(bool? cacheClusterEnabled) =>
      _$this._cacheClusterEnabled = cacheClusterEnabled;

  _i2.CacheClusterSize? _cacheClusterSize;
  _i2.CacheClusterSize? get cacheClusterSize => _$this._cacheClusterSize;
  set cacheClusterSize(_i2.CacheClusterSize? cacheClusterSize) =>
      _$this._cacheClusterSize = cacheClusterSize;

  _i3.CacheClusterStatus? _cacheClusterStatus;
  _i3.CacheClusterStatus? get cacheClusterStatus => _$this._cacheClusterStatus;
  set cacheClusterStatus(_i3.CacheClusterStatus? cacheClusterStatus) =>
      _$this._cacheClusterStatus = cacheClusterStatus;

  _i7.MapBuilder<String, _i4.MethodSetting>? _methodSettings;
  _i7.MapBuilder<String, _i4.MethodSetting> get methodSettings =>
      _$this._methodSettings ??=
          new _i7.MapBuilder<String, _i4.MethodSetting>();
  set methodSettings(
          _i7.MapBuilder<String, _i4.MethodSetting>? methodSettings) =>
      _$this._methodSettings = methodSettings;

  _i7.MapBuilder<String, String>? _variables;
  _i7.MapBuilder<String, String> get variables =>
      _$this._variables ??= new _i7.MapBuilder<String, String>();
  set variables(_i7.MapBuilder<String, String>? variables) =>
      _$this._variables = variables;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  _i5.AccessLogSettingsBuilder? _accessLogSettings;
  _i5.AccessLogSettingsBuilder get accessLogSettings =>
      _$this._accessLogSettings ??= new _i5.AccessLogSettingsBuilder();
  set accessLogSettings(_i5.AccessLogSettingsBuilder? accessLogSettings) =>
      _$this._accessLogSettings = accessLogSettings;

  _i6.CanarySettingsBuilder? _canarySettings;
  _i6.CanarySettingsBuilder get canarySettings =>
      _$this._canarySettings ??= new _i6.CanarySettingsBuilder();
  set canarySettings(_i6.CanarySettingsBuilder? canarySettings) =>
      _$this._canarySettings = canarySettings;

  bool? _tracingEnabled;
  bool? get tracingEnabled => _$this._tracingEnabled;
  set tracingEnabled(bool? tracingEnabled) =>
      _$this._tracingEnabled = tracingEnabled;

  String? _webAclArn;
  String? get webAclArn => _$this._webAclArn;
  set webAclArn(String? webAclArn) => _$this._webAclArn = webAclArn;

  _i7.MapBuilder<String, String>? _tags;
  _i7.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i7.MapBuilder<String, String>();
  set tags(_i7.MapBuilder<String, String>? tags) => _$this._tags = tags;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  DateTime? _lastUpdatedDate;
  DateTime? get lastUpdatedDate => _$this._lastUpdatedDate;
  set lastUpdatedDate(DateTime? lastUpdatedDate) =>
      _$this._lastUpdatedDate = lastUpdatedDate;

  StageBuilder() {
    Stage._init(this);
  }

  StageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deploymentId = $v.deploymentId;
      _clientCertificateId = $v.clientCertificateId;
      _stageName = $v.stageName;
      _description = $v.description;
      _cacheClusterEnabled = $v.cacheClusterEnabled;
      _cacheClusterSize = $v.cacheClusterSize;
      _cacheClusterStatus = $v.cacheClusterStatus;
      _methodSettings = $v.methodSettings?.toBuilder();
      _variables = $v.variables?.toBuilder();
      _documentationVersion = $v.documentationVersion;
      _accessLogSettings = $v.accessLogSettings?.toBuilder();
      _canarySettings = $v.canarySettings?.toBuilder();
      _tracingEnabled = $v.tracingEnabled;
      _webAclArn = $v.webAclArn;
      _tags = $v.tags?.toBuilder();
      _createdDate = $v.createdDate;
      _lastUpdatedDate = $v.lastUpdatedDate;
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
              deploymentId: deploymentId,
              clientCertificateId: clientCertificateId,
              stageName: stageName,
              description: description,
              cacheClusterEnabled: BuiltValueNullFieldError.checkNotNull(
                  cacheClusterEnabled, r'Stage', 'cacheClusterEnabled'),
              cacheClusterSize: cacheClusterSize,
              cacheClusterStatus: cacheClusterStatus,
              methodSettings: _methodSettings?.build(),
              variables: _variables?.build(),
              documentationVersion: documentationVersion,
              accessLogSettings: _accessLogSettings?.build(),
              canarySettings: _canarySettings?.build(),
              tracingEnabled: BuiltValueNullFieldError.checkNotNull(
                  tracingEnabled, r'Stage', 'tracingEnabled'),
              webAclArn: webAclArn,
              tags: _tags?.build(),
              createdDate: createdDate,
              lastUpdatedDate: lastUpdatedDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'methodSettings';
        _methodSettings?.build();
        _$failedField = 'variables';
        _variables?.build();

        _$failedField = 'accessLogSettings';
        _accessLogSettings?.build();
        _$failedField = 'canarySettings';
        _canarySettings?.build();

        _$failedField = 'tags';
        _tags?.build();
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
