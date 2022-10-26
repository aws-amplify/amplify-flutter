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
    return $jf($jc(
        $jc(
            $jc($jc(0, eventBridgeConfiguration.hashCode),
                lambdaFunctionConfigurations.hashCode),
            queueConfigurations.hashCode),
        topicConfigurations.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
