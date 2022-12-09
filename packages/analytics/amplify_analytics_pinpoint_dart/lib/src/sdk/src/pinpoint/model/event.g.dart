// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Event extends Event {
  @override
  final String? appPackageName;
  @override
  final String? appTitle;
  @override
  final String? appVersionCode;
  @override
  final _i3.BuiltMap<String, String>? attributes;
  @override
  final String? clientSdkVersion;
  @override
  final String eventType;
  @override
  final _i3.BuiltMap<String, double>? metrics;
  @override
  final String? sdkName;
  @override
  final _i2.Session? session;
  @override
  final String timestamp;

  factory _$Event([void Function(EventBuilder)? updates]) =>
      (new EventBuilder()..update(updates))._build();

  _$Event._(
      {this.appPackageName,
      this.appTitle,
      this.appVersionCode,
      this.attributes,
      this.clientSdkVersion,
      required this.eventType,
      this.metrics,
      this.sdkName,
      this.session,
      required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(eventType, r'Event', 'eventType');
    BuiltValueNullFieldError.checkNotNull(timestamp, r'Event', 'timestamp');
  }

  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        appPackageName == other.appPackageName &&
        appTitle == other.appTitle &&
        appVersionCode == other.appVersionCode &&
        attributes == other.attributes &&
        clientSdkVersion == other.clientSdkVersion &&
        eventType == other.eventType &&
        metrics == other.metrics &&
        sdkName == other.sdkName &&
        session == other.session &&
        timestamp == other.timestamp;
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
                                    $jc($jc(0, appPackageName.hashCode),
                                        appTitle.hashCode),
                                    appVersionCode.hashCode),
                                attributes.hashCode),
                            clientSdkVersion.hashCode),
                        eventType.hashCode),
                    metrics.hashCode),
                sdkName.hashCode),
            session.hashCode),
        timestamp.hashCode));
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event? _$v;

  String? _appPackageName;
  String? get appPackageName => _$this._appPackageName;
  set appPackageName(String? appPackageName) =>
      _$this._appPackageName = appPackageName;

  String? _appTitle;
  String? get appTitle => _$this._appTitle;
  set appTitle(String? appTitle) => _$this._appTitle = appTitle;

  String? _appVersionCode;
  String? get appVersionCode => _$this._appVersionCode;
  set appVersionCode(String? appVersionCode) =>
      _$this._appVersionCode = appVersionCode;

  _i3.MapBuilder<String, String>? _attributes;
  _i3.MapBuilder<String, String> get attributes =>
      _$this._attributes ??= new _i3.MapBuilder<String, String>();
  set attributes(_i3.MapBuilder<String, String>? attributes) =>
      _$this._attributes = attributes;

  String? _clientSdkVersion;
  String? get clientSdkVersion => _$this._clientSdkVersion;
  set clientSdkVersion(String? clientSdkVersion) =>
      _$this._clientSdkVersion = clientSdkVersion;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(String? eventType) => _$this._eventType = eventType;

  _i3.MapBuilder<String, double>? _metrics;
  _i3.MapBuilder<String, double> get metrics =>
      _$this._metrics ??= new _i3.MapBuilder<String, double>();
  set metrics(_i3.MapBuilder<String, double>? metrics) =>
      _$this._metrics = metrics;

  String? _sdkName;
  String? get sdkName => _$this._sdkName;
  set sdkName(String? sdkName) => _$this._sdkName = sdkName;

  _i2.SessionBuilder? _session;
  _i2.SessionBuilder get session =>
      _$this._session ??= new _i2.SessionBuilder();
  set session(_i2.SessionBuilder? session) => _$this._session = session;

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  EventBuilder() {
    Event._init(this);
  }

  EventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appPackageName = $v.appPackageName;
      _appTitle = $v.appTitle;
      _appVersionCode = $v.appVersionCode;
      _attributes = $v.attributes?.toBuilder();
      _clientSdkVersion = $v.clientSdkVersion;
      _eventType = $v.eventType;
      _metrics = $v.metrics?.toBuilder();
      _sdkName = $v.sdkName;
      _session = $v.session?.toBuilder();
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Event build() => _build();

  _$Event _build() {
    _$Event _$result;
    try {
      _$result = _$v ??
          new _$Event._(
              appPackageName: appPackageName,
              appTitle: appTitle,
              appVersionCode: appVersionCode,
              attributes: _attributes?.build(),
              clientSdkVersion: clientSdkVersion,
              eventType: BuiltValueNullFieldError.checkNotNull(
                  eventType, r'Event', 'eventType'),
              metrics: _metrics?.build(),
              sdkName: sdkName,
              session: _session?.build(),
              timestamp: BuiltValueNullFieldError.checkNotNull(
                  timestamp, r'Event', 'timestamp'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();

        _$failedField = 'metrics';
        _metrics?.build();

        _$failedField = 'session';
        _session?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
