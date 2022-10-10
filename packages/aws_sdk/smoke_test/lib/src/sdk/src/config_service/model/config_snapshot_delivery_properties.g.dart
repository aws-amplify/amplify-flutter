// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.config_snapshot_delivery_properties;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigSnapshotDeliveryProperties
    extends ConfigSnapshotDeliveryProperties {
  @override
  final _i2.MaximumExecutionFrequency? deliveryFrequency;

  factory _$ConfigSnapshotDeliveryProperties(
          [void Function(ConfigSnapshotDeliveryPropertiesBuilder)? updates]) =>
      (new ConfigSnapshotDeliveryPropertiesBuilder()..update(updates))._build();

  _$ConfigSnapshotDeliveryProperties._({this.deliveryFrequency}) : super._();

  @override
  ConfigSnapshotDeliveryProperties rebuild(
          void Function(ConfigSnapshotDeliveryPropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigSnapshotDeliveryPropertiesBuilder toBuilder() =>
      new ConfigSnapshotDeliveryPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigSnapshotDeliveryProperties &&
        deliveryFrequency == other.deliveryFrequency;
  }

  @override
  int get hashCode {
    return $jf($jc(0, deliveryFrequency.hashCode));
  }
}

class ConfigSnapshotDeliveryPropertiesBuilder
    implements
        Builder<ConfigSnapshotDeliveryProperties,
            ConfigSnapshotDeliveryPropertiesBuilder> {
  _$ConfigSnapshotDeliveryProperties? _$v;

  _i2.MaximumExecutionFrequency? _deliveryFrequency;
  _i2.MaximumExecutionFrequency? get deliveryFrequency =>
      _$this._deliveryFrequency;
  set deliveryFrequency(_i2.MaximumExecutionFrequency? deliveryFrequency) =>
      _$this._deliveryFrequency = deliveryFrequency;

  ConfigSnapshotDeliveryPropertiesBuilder() {
    ConfigSnapshotDeliveryProperties._init(this);
  }

  ConfigSnapshotDeliveryPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryFrequency = $v.deliveryFrequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigSnapshotDeliveryProperties other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigSnapshotDeliveryProperties;
  }

  @override
  void update(void Function(ConfigSnapshotDeliveryPropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigSnapshotDeliveryProperties build() => _build();

  _$ConfigSnapshotDeliveryProperties _build() {
    final _$result = _$v ??
        new _$ConfigSnapshotDeliveryProperties._(
            deliveryFrequency: deliveryFrequency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
