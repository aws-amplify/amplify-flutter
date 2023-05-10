// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.notification_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationConfiguration extends NotificationConfiguration {
  @override
  final _i6.BuiltList<_i2.TopicConfiguration>? topicConfigurations;
  @override
  final _i6.BuiltList<_i3.QueueConfiguration>? queueConfigurations;
  @override
  final _i6.BuiltList<_i4.LambdaFunctionConfiguration>?
      lambdaFunctionConfigurations;
  @override
  final _i5.EventBridgeConfiguration? eventBridgeConfiguration;

  factory _$NotificationConfiguration(
          [void Function(NotificationConfigurationBuilder)? updates]) =>
      (new NotificationConfigurationBuilder()..update(updates))._build();

  _$NotificationConfiguration._(
      {this.topicConfigurations,
      this.queueConfigurations,
      this.lambdaFunctionConfigurations,
      this.eventBridgeConfiguration})
      : super._();

  @override
  NotificationConfiguration rebuild(
          void Function(NotificationConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationConfigurationBuilder toBuilder() =>
      new NotificationConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationConfiguration &&
        topicConfigurations == other.topicConfigurations &&
        queueConfigurations == other.queueConfigurations &&
        lambdaFunctionConfigurations == other.lambdaFunctionConfigurations &&
        eventBridgeConfiguration == other.eventBridgeConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topicConfigurations.hashCode);
    _$hash = $jc(_$hash, queueConfigurations.hashCode);
    _$hash = $jc(_$hash, lambdaFunctionConfigurations.hashCode);
    _$hash = $jc(_$hash, eventBridgeConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NotificationConfigurationBuilder
    implements
        Builder<NotificationConfiguration, NotificationConfigurationBuilder> {
  _$NotificationConfiguration? _$v;

  _i6.ListBuilder<_i2.TopicConfiguration>? _topicConfigurations;
  _i6.ListBuilder<_i2.TopicConfiguration> get topicConfigurations =>
      _$this._topicConfigurations ??=
          new _i6.ListBuilder<_i2.TopicConfiguration>();
  set topicConfigurations(
          _i6.ListBuilder<_i2.TopicConfiguration>? topicConfigurations) =>
      _$this._topicConfigurations = topicConfigurations;

  _i6.ListBuilder<_i3.QueueConfiguration>? _queueConfigurations;
  _i6.ListBuilder<_i3.QueueConfiguration> get queueConfigurations =>
      _$this._queueConfigurations ??=
          new _i6.ListBuilder<_i3.QueueConfiguration>();
  set queueConfigurations(
          _i6.ListBuilder<_i3.QueueConfiguration>? queueConfigurations) =>
      _$this._queueConfigurations = queueConfigurations;

  _i6.ListBuilder<_i4.LambdaFunctionConfiguration>?
      _lambdaFunctionConfigurations;
  _i6.ListBuilder<_i4.LambdaFunctionConfiguration>
      get lambdaFunctionConfigurations =>
          _$this._lambdaFunctionConfigurations ??=
              new _i6.ListBuilder<_i4.LambdaFunctionConfiguration>();
  set lambdaFunctionConfigurations(
          _i6.ListBuilder<_i4.LambdaFunctionConfiguration>?
              lambdaFunctionConfigurations) =>
      _$this._lambdaFunctionConfigurations = lambdaFunctionConfigurations;

  _i5.EventBridgeConfigurationBuilder? _eventBridgeConfiguration;
  _i5.EventBridgeConfigurationBuilder get eventBridgeConfiguration =>
      _$this._eventBridgeConfiguration ??=
          new _i5.EventBridgeConfigurationBuilder();
  set eventBridgeConfiguration(
          _i5.EventBridgeConfigurationBuilder? eventBridgeConfiguration) =>
      _$this._eventBridgeConfiguration = eventBridgeConfiguration;

  NotificationConfigurationBuilder() {
    NotificationConfiguration._init(this);
  }

  NotificationConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topicConfigurations = $v.topicConfigurations?.toBuilder();
      _queueConfigurations = $v.queueConfigurations?.toBuilder();
      _lambdaFunctionConfigurations =
          $v.lambdaFunctionConfigurations?.toBuilder();
      _eventBridgeConfiguration = $v.eventBridgeConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationConfiguration;
  }

  @override
  void update(void Function(NotificationConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationConfiguration build() => _build();

  _$NotificationConfiguration _build() {
    _$NotificationConfiguration _$result;
    try {
      _$result = _$v ??
          new _$NotificationConfiguration._(
              topicConfigurations: _topicConfigurations?.build(),
              queueConfigurations: _queueConfigurations?.build(),
              lambdaFunctionConfigurations:
                  _lambdaFunctionConfigurations?.build(),
              eventBridgeConfiguration: _eventBridgeConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topicConfigurations';
        _topicConfigurations?.build();
        _$failedField = 'queueConfigurations';
        _queueConfigurations?.build();
        _$failedField = 'lambdaFunctionConfigurations';
        _lambdaFunctionConfigurations?.build();
        _$failedField = 'eventBridgeConfiguration';
        _eventBridgeConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotificationConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
