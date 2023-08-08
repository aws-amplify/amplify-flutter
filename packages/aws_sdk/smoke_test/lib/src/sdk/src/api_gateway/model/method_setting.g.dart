// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MethodSetting extends MethodSetting {
  @override
  final bool metricsEnabled;
  @override
  final String? loggingLevel;
  @override
  final bool dataTraceEnabled;
  @override
  final int throttlingBurstLimit;
  @override
  final double throttlingRateLimit;
  @override
  final bool cachingEnabled;
  @override
  final int cacheTtlInSeconds;
  @override
  final bool cacheDataEncrypted;
  @override
  final bool requireAuthorizationForCacheControl;
  @override
  final _i2.UnauthorizedCacheControlHeaderStrategy?
      unauthorizedCacheControlHeaderStrategy;

  factory _$MethodSetting([void Function(MethodSettingBuilder)? updates]) =>
      (new MethodSettingBuilder()..update(updates))._build();

  _$MethodSetting._(
      {required this.metricsEnabled,
      this.loggingLevel,
      required this.dataTraceEnabled,
      required this.throttlingBurstLimit,
      required this.throttlingRateLimit,
      required this.cachingEnabled,
      required this.cacheTtlInSeconds,
      required this.cacheDataEncrypted,
      required this.requireAuthorizationForCacheControl,
      this.unauthorizedCacheControlHeaderStrategy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        metricsEnabled, r'MethodSetting', 'metricsEnabled');
    BuiltValueNullFieldError.checkNotNull(
        dataTraceEnabled, r'MethodSetting', 'dataTraceEnabled');
    BuiltValueNullFieldError.checkNotNull(
        throttlingBurstLimit, r'MethodSetting', 'throttlingBurstLimit');
    BuiltValueNullFieldError.checkNotNull(
        throttlingRateLimit, r'MethodSetting', 'throttlingRateLimit');
    BuiltValueNullFieldError.checkNotNull(
        cachingEnabled, r'MethodSetting', 'cachingEnabled');
    BuiltValueNullFieldError.checkNotNull(
        cacheTtlInSeconds, r'MethodSetting', 'cacheTtlInSeconds');
    BuiltValueNullFieldError.checkNotNull(
        cacheDataEncrypted, r'MethodSetting', 'cacheDataEncrypted');
    BuiltValueNullFieldError.checkNotNull(requireAuthorizationForCacheControl,
        r'MethodSetting', 'requireAuthorizationForCacheControl');
  }

  @override
  MethodSetting rebuild(void Function(MethodSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodSettingBuilder toBuilder() => new MethodSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MethodSetting &&
        metricsEnabled == other.metricsEnabled &&
        loggingLevel == other.loggingLevel &&
        dataTraceEnabled == other.dataTraceEnabled &&
        throttlingBurstLimit == other.throttlingBurstLimit &&
        throttlingRateLimit == other.throttlingRateLimit &&
        cachingEnabled == other.cachingEnabled &&
        cacheTtlInSeconds == other.cacheTtlInSeconds &&
        cacheDataEncrypted == other.cacheDataEncrypted &&
        requireAuthorizationForCacheControl ==
            other.requireAuthorizationForCacheControl &&
        unauthorizedCacheControlHeaderStrategy ==
            other.unauthorizedCacheControlHeaderStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metricsEnabled.hashCode);
    _$hash = $jc(_$hash, loggingLevel.hashCode);
    _$hash = $jc(_$hash, dataTraceEnabled.hashCode);
    _$hash = $jc(_$hash, throttlingBurstLimit.hashCode);
    _$hash = $jc(_$hash, throttlingRateLimit.hashCode);
    _$hash = $jc(_$hash, cachingEnabled.hashCode);
    _$hash = $jc(_$hash, cacheTtlInSeconds.hashCode);
    _$hash = $jc(_$hash, cacheDataEncrypted.hashCode);
    _$hash = $jc(_$hash, requireAuthorizationForCacheControl.hashCode);
    _$hash = $jc(_$hash, unauthorizedCacheControlHeaderStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MethodSettingBuilder
    implements Builder<MethodSetting, MethodSettingBuilder> {
  _$MethodSetting? _$v;

  bool? _metricsEnabled;
  bool? get metricsEnabled => _$this._metricsEnabled;
  set metricsEnabled(bool? metricsEnabled) =>
      _$this._metricsEnabled = metricsEnabled;

  String? _loggingLevel;
  String? get loggingLevel => _$this._loggingLevel;
  set loggingLevel(String? loggingLevel) => _$this._loggingLevel = loggingLevel;

  bool? _dataTraceEnabled;
  bool? get dataTraceEnabled => _$this._dataTraceEnabled;
  set dataTraceEnabled(bool? dataTraceEnabled) =>
      _$this._dataTraceEnabled = dataTraceEnabled;

  int? _throttlingBurstLimit;
  int? get throttlingBurstLimit => _$this._throttlingBurstLimit;
  set throttlingBurstLimit(int? throttlingBurstLimit) =>
      _$this._throttlingBurstLimit = throttlingBurstLimit;

  double? _throttlingRateLimit;
  double? get throttlingRateLimit => _$this._throttlingRateLimit;
  set throttlingRateLimit(double? throttlingRateLimit) =>
      _$this._throttlingRateLimit = throttlingRateLimit;

  bool? _cachingEnabled;
  bool? get cachingEnabled => _$this._cachingEnabled;
  set cachingEnabled(bool? cachingEnabled) =>
      _$this._cachingEnabled = cachingEnabled;

  int? _cacheTtlInSeconds;
  int? get cacheTtlInSeconds => _$this._cacheTtlInSeconds;
  set cacheTtlInSeconds(int? cacheTtlInSeconds) =>
      _$this._cacheTtlInSeconds = cacheTtlInSeconds;

  bool? _cacheDataEncrypted;
  bool? get cacheDataEncrypted => _$this._cacheDataEncrypted;
  set cacheDataEncrypted(bool? cacheDataEncrypted) =>
      _$this._cacheDataEncrypted = cacheDataEncrypted;

  bool? _requireAuthorizationForCacheControl;
  bool? get requireAuthorizationForCacheControl =>
      _$this._requireAuthorizationForCacheControl;
  set requireAuthorizationForCacheControl(
          bool? requireAuthorizationForCacheControl) =>
      _$this._requireAuthorizationForCacheControl =
          requireAuthorizationForCacheControl;

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
      _metricsEnabled = $v.metricsEnabled;
      _loggingLevel = $v.loggingLevel;
      _dataTraceEnabled = $v.dataTraceEnabled;
      _throttlingBurstLimit = $v.throttlingBurstLimit;
      _throttlingRateLimit = $v.throttlingRateLimit;
      _cachingEnabled = $v.cachingEnabled;
      _cacheTtlInSeconds = $v.cacheTtlInSeconds;
      _cacheDataEncrypted = $v.cacheDataEncrypted;
      _requireAuthorizationForCacheControl =
          $v.requireAuthorizationForCacheControl;
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
            metricsEnabled: BuiltValueNullFieldError.checkNotNull(
                metricsEnabled, r'MethodSetting', 'metricsEnabled'),
            loggingLevel: loggingLevel,
            dataTraceEnabled: BuiltValueNullFieldError.checkNotNull(
                dataTraceEnabled, r'MethodSetting', 'dataTraceEnabled'),
            throttlingBurstLimit: BuiltValueNullFieldError.checkNotNull(
                throttlingBurstLimit, r'MethodSetting', 'throttlingBurstLimit'),
            throttlingRateLimit: BuiltValueNullFieldError.checkNotNull(
                throttlingRateLimit, r'MethodSetting', 'throttlingRateLimit'),
            cachingEnabled: BuiltValueNullFieldError.checkNotNull(
                cachingEnabled, r'MethodSetting', 'cachingEnabled'),
            cacheTtlInSeconds: BuiltValueNullFieldError.checkNotNull(
                cacheTtlInSeconds, r'MethodSetting', 'cacheTtlInSeconds'),
            cacheDataEncrypted: BuiltValueNullFieldError.checkNotNull(
                cacheDataEncrypted, r'MethodSetting', 'cacheDataEncrypted'),
            requireAuthorizationForCacheControl:
                BuiltValueNullFieldError.checkNotNull(requireAuthorizationForCacheControl, r'MethodSetting', 'requireAuthorizationForCacheControl'),
            unauthorizedCacheControlHeaderStrategy: unauthorizedCacheControlHeaderStrategy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
