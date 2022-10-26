// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.canary_settings;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CanarySettings extends CanarySettings {
  @override
  final String? deploymentId;
  @override
  final double? percentTraffic;
  @override
  final _i2.BuiltMap<String, String>? stageVariableOverrides;
  @override
  final bool? useStageCache;

  factory _$CanarySettings([void Function(CanarySettingsBuilder)? updates]) =>
      (new CanarySettingsBuilder()..update(updates))._build();

  _$CanarySettings._(
      {this.deploymentId,
      this.percentTraffic,
      this.stageVariableOverrides,
      this.useStageCache})
      : super._();

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
        deploymentId == other.deploymentId &&
        percentTraffic == other.percentTraffic &&
        stageVariableOverrides == other.stageVariableOverrides &&
        useStageCache == other.useStageCache;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, deploymentId.hashCode), percentTraffic.hashCode),
            stageVariableOverrides.hashCode),
        useStageCache.hashCode));
  }
}

class CanarySettingsBuilder
    implements Builder<CanarySettings, CanarySettingsBuilder> {
  _$CanarySettings? _$v;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

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

  CanarySettingsBuilder() {
    CanarySettings._init(this);
  }

  CanarySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deploymentId = $v.deploymentId;
      _percentTraffic = $v.percentTraffic;
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
              deploymentId: deploymentId,
              percentTraffic: percentTraffic,
              stageVariableOverrides: _stageVariableOverrides?.build(),
              useStageCache: useStageCache);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
