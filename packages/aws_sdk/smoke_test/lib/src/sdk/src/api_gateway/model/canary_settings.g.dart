// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canary_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CanarySettings extends CanarySettings {
  @override
  final double percentTraffic;
  @override
  final String? deploymentId;
  @override
  final _i2.BuiltMap<String, String>? stageVariableOverrides;
  @override
  final bool useStageCache;

  factory _$CanarySettings([void Function(CanarySettingsBuilder)? updates]) =>
      (new CanarySettingsBuilder()..update(updates))._build();

  _$CanarySettings._(
      {required this.percentTraffic,
      this.deploymentId,
      this.stageVariableOverrides,
      required this.useStageCache})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        percentTraffic, r'CanarySettings', 'percentTraffic');
    BuiltValueNullFieldError.checkNotNull(
        useStageCache, r'CanarySettings', 'useStageCache');
  }

  @override
  CanarySettings rebuild(void Function(CanarySettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CanarySettingsBuilder toBuilder() =>
      new CanarySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CanarySettings &&
        percentTraffic == other.percentTraffic &&
        deploymentId == other.deploymentId &&
        stageVariableOverrides == other.stageVariableOverrides &&
        useStageCache == other.useStageCache;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, percentTraffic.hashCode);
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, stageVariableOverrides.hashCode);
    _$hash = $jc(_$hash, useStageCache.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CanarySettingsBuilder
    implements Builder<CanarySettings, CanarySettingsBuilder> {
  _$CanarySettings? _$v;

  double? _percentTraffic;
  double? get percentTraffic => _$this._percentTraffic;
  set percentTraffic(double? percentTraffic) =>
      _$this._percentTraffic = percentTraffic;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

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

  CanarySettingsBuilder() {
    CanarySettings._init(this);
  }

  CanarySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _percentTraffic = $v.percentTraffic;
      _deploymentId = $v.deploymentId;
      _stageVariableOverrides = $v.stageVariableOverrides?.toBuilder();
      _useStageCache = $v.useStageCache;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CanarySettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CanarySettings;
  }

  @override
  void update(void Function(CanarySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CanarySettings build() => _build();

  _$CanarySettings _build() {
    _$CanarySettings _$result;
    try {
      _$result = _$v ??
          new _$CanarySettings._(
              percentTraffic: BuiltValueNullFieldError.checkNotNull(
                  percentTraffic, r'CanarySettings', 'percentTraffic'),
              deploymentId: deploymentId,
              stageVariableOverrides: _stageVariableOverrides?.build(),
              useStageCache: BuiltValueNullFieldError.checkNotNull(
                  useStageCache, r'CanarySettings', 'useStageCache'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stageVariableOverrides';
        _stageVariableOverrides?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CanarySettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
