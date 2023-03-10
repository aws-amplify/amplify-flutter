// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.event_bridge_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventBridgeConfiguration extends EventBridgeConfiguration {
  factory _$EventBridgeConfiguration(
          [void Function(EventBridgeConfigurationBuilder)? updates]) =>
      (new EventBridgeConfigurationBuilder()..update(updates))._build();

  _$EventBridgeConfiguration._() : super._();

  @override
  EventBridgeConfiguration rebuild(
          void Function(EventBridgeConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBridgeConfigurationBuilder toBuilder() =>
      new EventBridgeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventBridgeConfiguration;
  }

  @override
  int get hashCode {
    return 925013702;
  }
}

class EventBridgeConfigurationBuilder
    implements
        Builder<EventBridgeConfiguration, EventBridgeConfigurationBuilder> {
  _$EventBridgeConfiguration? _$v;

  EventBridgeConfigurationBuilder() {
    EventBridgeConfiguration._init(this);
  }

  @override
  void replace(EventBridgeConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventBridgeConfiguration;
  }

  @override
  void update(void Function(EventBridgeConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventBridgeConfiguration build() => _build();

  _$EventBridgeConfiguration _build() {
    final _$result = _$v ?? new _$EventBridgeConfiguration._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
