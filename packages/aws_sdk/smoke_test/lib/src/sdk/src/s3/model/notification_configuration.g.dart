// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.notification_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationConfiguration extends NotificationConfiguration {
  @override
  final _i2.EventBridgeConfiguration? eventBridgeConfiguration;
  @override
  final _i6.BuiltList<_i3.LambdaFunctionConfiguration>?
      lambdaFunctionConfigurations;
  @override
  final _i6.BuiltList<_i4.QueueConfiguration>? queueConfigurations;
  @override
  final _i6.BuiltList<_i5.TopicConfiguration>? topicConfigurations;

  factory _$NotificationConfiguration(
          [void Function(NotificationConfigurationBuilder)? updates]) =>
      (new NotificationConfigurationBuilder()..update(updates))._build();

  _$NotificationConfiguration._(
      {this.eventBridgeConfiguration,
      this.lambdaFunctionConfigurations,
      this.queueConfigurations,
      this.topicConfigurations})
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
        eventBridgeConfiguration == other.eventBridgeConfiguration &&
        lambdaFunctionConfigurations == other.lambdaFunctionConfigurations &&
        queueConfigurations == other.queueConfigurations &&
        topicConfigurations == other.topicConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventBridgeConfiguration.hashCode);
    _$hash = $jc(_$hash, lambdaFunctionConfigurations.hashCode);
    _$hash = $jc(_$hash, queueConfigurations.hashCode);
    _$hash = $jc(_$hash, topicConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NotificationConfigurationBuilder
    implements
        Builder<NotificationConfiguration, NotificationConfigurationBuilder> {
  _$NotificationConfiguration? _$v;

  _i2.EventBridgeConfigurationBuilder? _eventBridgeConfiguration;
  _i2.EventBridgeConfigurationBuilder get eventBridgeConfiguration =>
      _$this._eventBridgeConfiguration ??=
          new _i2.EventBridgeConfigurationBuilder();
  set eventBridgeConfiguration(
          _i2.EventBridgeConfigurationBuilder? eventBridgeConfiguration) =>
      _$this._eventBridgeConfiguration = eventBridgeConfiguration;

  _i6.ListBuilder<_i3.LambdaFunctionConfiguration>?
      _lambdaFunctionConfigurations;
  _i6.ListBuilder<_i3.LambdaFunctionConfiguration>
      get lambdaFunctionConfigurations =>
          _$this._lambdaFunctionConfigurations ??=
              new _i6.ListBuilder<_i3.LambdaFunctionConfiguration>();
  set lambdaFunctionConfigurations(
          _i6.ListBuilder<_i3.LambdaFunctionConfiguration>?
              lambdaFunctionConfigurations) =>
      _$this._lambdaFunctionConfigurations = lambdaFunctionConfigurations;

  _i6.ListBuilder<_i4.QueueConfiguration>? _queueConfigurations;
  _i6.ListBuilder<_i4.QueueConfiguration> get queueConfigurations =>
      _$this._queueConfigurations ??=
          new _i6.ListBuilder<_i4.QueueConfiguration>();
  set queueConfigurations(
          _i6.ListBuilder<_i4.QueueConfiguration>? queueConfigurations) =>
      _$this._queueConfigurations = queueConfigurations;

  _i6.ListBuilder<_i5.TopicConfiguration>? _topicConfigurations;
  _i6.ListBuilder<_i5.TopicConfiguration> get topicConfigurations =>
      _$this._topicConfigurations ??=
          new _i6.ListBuilder<_i5.TopicConfiguration>();
  set topicConfigurations(
          _i6.ListBuilder<_i5.TopicConfiguration>? topicConfigurations) =>
      _$this._topicConfigurations = topicConfigurations;

  NotificationConfigurationBuilder() {
    NotificationConfiguration._init(this);
  }

  NotificationConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventBridgeConfiguration = $v.eventBridgeConfiguration?.toBuilder();
      _lambdaFunctionConfigurations =
          $v.lambdaFunctionConfigurations?.toBuilder();
      _queueConfigurations = $v.queueConfigurations?.toBuilder();
      _topicConfigurations = $v.topicConfigurations?.toBuilder();
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
              eventBridgeConfiguration: _eventBridgeConfiguration?.build(),
              lambdaFunctionConfigurations:
                  _lambdaFunctionConfigurations?.build(),
              queueConfigurations: _queueConfigurations?.build(),
              topicConfigurations: _topicConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventBridgeConfiguration';
        _eventBridgeConfiguration?.build();
        _$failedField = 'lambdaFunctionConfigurations';
        _lambdaFunctionConfigurations?.build();
        _$failedField = 'queueConfigurations';
        _queueConfigurations?.build();
        _$failedField = 'topicConfigurations';
        _topicConfigurations?.build();
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
