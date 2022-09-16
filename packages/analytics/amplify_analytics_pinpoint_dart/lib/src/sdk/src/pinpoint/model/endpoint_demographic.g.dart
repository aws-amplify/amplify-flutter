// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_demographic;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointDemographic extends EndpointDemographic {
  @override
  final String? appVersion;
  @override
  final String? locale;
  @override
  final String? make;
  @override
  final String? model;
  @override
  final String? modelVersion;
  @override
  final String? platform;
  @override
  final String? platformVersion;
  @override
  final String? timezone;

  factory _$EndpointDemographic(
          [void Function(EndpointDemographicBuilder)? updates]) =>
      (new EndpointDemographicBuilder()..update(updates))._build();

  _$EndpointDemographic._(
      {this.appVersion,
      this.locale,
      this.make,
      this.model,
      this.modelVersion,
      this.platform,
      this.platformVersion,
      this.timezone})
      : super._();

  @override
  EndpointDemographic rebuild(
          void Function(EndpointDemographicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointDemographicBuilder toBuilder() =>
      new EndpointDemographicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointDemographic &&
        appVersion == other.appVersion &&
        locale == other.locale &&
        make == other.make &&
        model == other.model &&
        modelVersion == other.modelVersion &&
        platform == other.platform &&
        platformVersion == other.platformVersion &&
        timezone == other.timezone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, appVersion.hashCode), locale.hashCode),
                            make.hashCode),
                        model.hashCode),
                    modelVersion.hashCode),
                platform.hashCode),
            platformVersion.hashCode),
        timezone.hashCode));
  }
}

class EndpointDemographicBuilder
    implements Builder<EndpointDemographic, EndpointDemographicBuilder> {
  _$EndpointDemographic? _$v;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _modelVersion;
  String? get modelVersion => _$this._modelVersion;
  set modelVersion(String? modelVersion) => _$this._modelVersion = modelVersion;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _platformVersion;
  String? get platformVersion => _$this._platformVersion;
  set platformVersion(String? platformVersion) =>
      _$this._platformVersion = platformVersion;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  EndpointDemographicBuilder() {
    EndpointDemographic._init(this);
  }

  EndpointDemographicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appVersion = $v.appVersion;
      _locale = $v.locale;
      _make = $v.make;
      _model = $v.model;
      _modelVersion = $v.modelVersion;
      _platform = $v.platform;
      _platformVersion = $v.platformVersion;
      _timezone = $v.timezone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointDemographic other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointDemographic;
  }

  @override
  void update(void Function(EndpointDemographicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointDemographic build() => _build();

  _$EndpointDemographic _build() {
    final _$result = _$v ??
        new _$EndpointDemographic._(
            appVersion: appVersion,
            locale: locale,
            make: make,
            model: model,
            modelVersion: modelVersion,
            platform: platform,
            platformVersion: platformVersion,
            timezone: timezone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
