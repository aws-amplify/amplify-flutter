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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
