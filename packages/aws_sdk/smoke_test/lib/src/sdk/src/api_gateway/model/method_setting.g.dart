// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.method_setting;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MethodSetting extends MethodSetting {
  @override
  final bool? cacheDataEncrypted;
  @override
  final int? cacheTtlInSeconds;
  @override
  final bool? cachingEnabled;
  @override
  final bool? dataTraceEnabled;
  @override
  final String? loggingLevel;
  @override
  final bool? metricsEnabled;
  @override
  final bool? requireAuthorizationForCacheControl;
  @override
  final int? throttlingBurstLimit;
  @override
  final double? throttlingRateLimit;
  @override
  final _i2.UnauthorizedCacheControlHeaderStrategy?
      unauthorizedCacheControlHeaderStrategy;

  factory _$MethodSetting([void Function(MethodSettingBuilder)? updates]) =>
      (new MethodSettingBuilder()..update(updates))._build();

  _$MethodSetting._(
      {this.cacheDataEncrypted,
      this.cacheTtlInSeconds,
      this.cachingEnabled,
      this.dataTraceEnabled,
      this.loggingLevel,
      this.metricsEnabled,
      this.requireAuthorizationForCacheControl,
      this.throttlingBurstLimit,
      this.throttlingRateLimit,
      this.unauthorizedCacheControlHeaderStrategy})
      : super._();

  @override
  MethodSetting rebuild(void Function(MethodSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodSettingBuilder toBuilder() => new MethodSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MethodSetting &&
        cacheDataEncrypted == other.cacheDataEncrypted &&
        cacheTtlInSeconds == other.cacheTtlInSeconds &&
        cachingEnabled == other.cachingEnabled &&
        dataTraceEnabled == other.dataTraceEnabled &&
        loggingLevel == other.loggingLevel &&
        metricsEnabled == other.metricsEnabled &&
        requireAuthorizationForCacheControl ==
            other.requireAuthorizationForCacheControl &&
        throttlingBurstLimit == other.throttlingBurstLimit &&
        throttlingRateLimit == other.throttlingRateLimit &&
        unauthorizedCacheControlHeaderStrategy ==
            other.unauthorizedCacheControlHeaderStrategy;
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
                                $jc(
                                    $jc($jc(0, cacheDataEncrypted.hashCode),
                                        cacheTtlInSeconds.hashCode),
                                    cachingEnabled.hashCode),
                                dataTraceEnabled.hashCode),
                            loggingLevel.hashCode),
                        metricsEnabled.hashCode),
                    requireAuthorizationForCacheControl.hashCode),
                throttlingBurstLimit.hashCode),
            throttlingRateLimit.hashCode),
        unauthorizedCacheControlHeaderStrategy.hashCode));
  }
}

class MethodSettingBuilder
    implements Builder<MethodSetting, MethodSettingBuilder> {
  _$MethodSetting? _$v;

  bool? _cacheDataEncrypted;
  bool? get cacheDataEncrypted => _$this._cacheDataEncrypted;
  set cacheDataEncrypted(bool? cacheDataEncrypted) =>
      _$this._cacheDataEncrypted = cacheDataEncrypted;

  int? _cacheTtlInSeconds;
  int? get cacheTtlInSeconds => _$this._cacheTtlInSeconds;
  set cacheTtlInSeconds(int? cacheTtlInSeconds) =>
      _$this._cacheTtlInSeconds = cacheTtlInSeconds;

  bool? _cachingEnabled;
  bool? get cachingEnabled => _$this._cachingEnabled;
  set cachingEnabled(bool? cachingEnabled) =>
      _$this._cachingEnabled = cachingEnabled;

  bool? _dataTraceEnabled;
  bool? get dataTraceEnabled => _$this._dataTraceEnabled;
  set dataTraceEnabled(bool? dataTraceEnabled) =>
      _$this._dataTraceEnabled = dataTraceEnabled;

  String? _loggingLevel;
  String? get loggingLevel => _$this._loggingLevel;
  set loggingLevel(String? loggingLevel) => _$this._loggingLevel = loggingLevel;

  bool? _metricsEnabled;
  bool? get metricsEnabled => _$this._metricsEnabled;
  set metricsEnabled(bool? metricsEnabled) =>
      _$this._metricsEnabled = metricsEnabled;

  bool? _requireAuthorizationForCacheControl;
  bool? get requireAuthorizationForCacheControl =>
      _$this._requireAuthorizationForCacheControl;
  set requireAuthorizationForCacheControl(
          bool? requireAuthorizationForCacheControl) =>
      _$this._requireAuthorizationForCacheControl =
          requireAuthorizationForCacheControl;

  int? _throttlingBurstLimit;
  int? get throttlingBurstLimit => _$this._throttlingBurstLimit;
  set throttlingBurstLimit(int? throttlingBurstLimit) =>
      _$this._throttlingBurstLimit = throttlingBurstLimit;

  double? _throttlingRateLimit;
  double? get throttlingRateLimit => _$this._throttlingRateLimit;
  set throttlingRateLimit(double? throttlingRateLimit) =>
      _$this._throttlingRateLimit = throttlingRateLimit;

  _i2.UnauthorizedCacheControlHeaderStrategy?
      _unauthorizedCacheControlHeaderStrategy;
  _i2.UnauthorizedCacheControlHeaderStrategy?
      get unauthorizedCacheControlHeaderStrategy =>
          _$this._unauthorizedCacheControlHeaderStrategy;
  set unauthorizedCacheControlHeaderStrategy(
          _i2.UnauthorizedCacheControlHeaderStrategy?
              unauthorizedCacheControlHeaderStrategy) =>
      _$this._unauthorizedCacheControlHeaderStrategy =
          unauthorizedCacheControlHeaderStrategy;

  MethodSettingBuilder() {
    MethodSetting._init(this);
  }

  MethodSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cacheDataEncrypted = $v.cacheDataEncrypted;
      _cacheTtlInSeconds = $v.cacheTtlInSeconds;
      _cachingEnabled = $v.cachingEnabled;
      _dataTraceEnabled = $v.dataTraceEnabled;
      _loggingLevel = $v.loggingLevel;
      _metricsEnabled = $v.metricsEnabled;
      _requireAuthorizationForCacheControl =
          $v.requireAuthorizationForCacheControl;
      _throttlingBurstLimit = $v.throttlingBurstLimit;
      _throttlingRateLimit = $v.throttlingRateLimit;
      _unauthorizedCacheControlHeaderStrategy =
          $v.unauthorizedCacheControlHeaderStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MethodSetting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MethodSetting;
  }

  @override
  void update(void Function(MethodSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MethodSetting build() => _build();

  _$MethodSetting _build() {
    final _$result = _$v ??
        new _$MethodSetting._(
            cacheDataEncrypted: cacheDataEncrypted,
            cacheTtlInSeconds: cacheTtlInSeconds,
            cachingEnabled: cachingEnabled,
            dataTraceEnabled: dataTraceEnabled,
            loggingLevel: loggingLevel,
            metricsEnabled: metricsEnabled,
            requireAuthorizationForCacheControl:
                requireAuthorizationForCacheControl,
            throttlingBurstLimit: throttlingBurstLimit,
            throttlingRateLimit: throttlingRateLimit,
            unauthorizedCacheControlHeaderStrategy:
                unauthorizedCacheControlHeaderStrategy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
