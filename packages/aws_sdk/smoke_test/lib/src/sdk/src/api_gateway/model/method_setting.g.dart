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
    var _$hash = 0;
    _$hash = $jc(_$hash, cacheDataEncrypted.hashCode);
    _$hash = $jc(_$hash, cacheTtlInSeconds.hashCode);
    _$hash = $jc(_$hash, cachingEnabled.hashCode);
    _$hash = $jc(_$hash, dataTraceEnabled.hashCode);
    _$hash = $jc(_$hash, loggingLevel.hashCode);
    _$hash = $jc(_$hash, metricsEnabled.hashCode);
    _$hash = $jc(_$hash, requireAuthorizationForCacheControl.hashCode);
    _$hash = $jc(_$hash, throttlingBurstLimit.hashCode);
    _$hash = $jc(_$hash, throttlingRateLimit.hashCode);
    _$hash = $jc(_$hash, unauthorizedCacheControlHeaderStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
