// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deployment_canary_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeploymentCanarySettings extends DeploymentCanarySettings {
  @override
  final double percentTraffic;
  @override
  final _i2.BuiltMap<String, String>? stageVariableOverrides;
  @override
  final bool useStageCache;

  factory _$DeploymentCanarySettings(
          [void Function(DeploymentCanarySettingsBuilder)? updates]) =>
      (new DeploymentCanarySettingsBuilder()..update(updates))._build();

  _$DeploymentCanarySettings._(
      {required this.percentTraffic,
      this.stageVariableOverrides,
      required this.useStageCache})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        percentTraffic, r'DeploymentCanarySettings', 'percentTraffic');
    BuiltValueNullFieldError.checkNotNull(
        useStageCache, r'DeploymentCanarySettings', 'useStageCache');
  }

  @override
  DeploymentCanarySettings rebuild(
          void Function(DeploymentCanarySettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentCanarySettingsBuilder toBuilder() =>
      new DeploymentCanarySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeploymentCanarySettings &&
        percentTraffic == other.percentTraffic &&
        stageVariableOverrides == other.stageVariableOverrides &&
        useStageCache == other.useStageCache;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, percentTraffic.hashCode);
    _$hash = $jc(_$hash, stageVariableOverrides.hashCode);
    _$hash = $jc(_$hash, useStageCache.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeploymentCanarySettingsBuilder
    implements
        Builder<DeploymentCanarySettings, DeploymentCanarySettingsBuilder> {
  _$DeploymentCanarySettings? _$v;

  double? _percentTraffic;
  double? get percentTraffic => _$this._percentTraffic;
  set percentTraffic(double? percentTraffic) =>
      _$this._percentTraffic = percentTraffic;

  _i2.MapBuilder<String, String>? _stageVariableOverrides;
  _i2.MapBuilder<String, String> get stageVariableOverrides =>
      _$this._stageVariableOverrides ??= new _i2.MapBuilder<String, String>();
  set stageVariableOverrides(
          _i2.MapBuilder<String, String>? stageVariableOverrides) =>
      _$this._stageVariableOverrides = stageVariableOverrides;

  bool? _useStageCache;
  bool? get useStageCache => _$this._useStageCache;
  set useStageCache(bool? useStageCache) =>
      _$this._useStageCache = useStageCache;

  DeploymentCanarySettingsBuilder() {
    DeploymentCanarySettings._init(this);
  }

  DeploymentCanarySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _percentTraffic = $v.percentTraffic;
      _stageVariableOverrides = $v.stageVariableOverrides?.toBuilder();
      _useStageCache = $v.useStageCache;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeploymentCanarySettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeploymentCanarySettings;
  }

  @override
  void update(void Function(DeploymentCanarySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeploymentCanarySettings build() => _build();

  _$DeploymentCanarySettings _build() {
    _$DeploymentCanarySettings _$result;
    try {
      _$result = _$v ??
          new _$DeploymentCanarySettings._(
              percentTraffic: BuiltValueNullFieldError.checkNotNull(
                  percentTraffic,
                  r'DeploymentCanarySettings',
                  'percentTraffic'),
              stageVariableOverrides: _stageVariableOverrides?.build(),
              useStageCache: BuiltValueNullFieldError.checkNotNull(
                  useStageCache, r'DeploymentCanarySettings', 'useStageCache'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stageVariableOverrides';
        _stageVariableOverrides?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeploymentCanarySettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
