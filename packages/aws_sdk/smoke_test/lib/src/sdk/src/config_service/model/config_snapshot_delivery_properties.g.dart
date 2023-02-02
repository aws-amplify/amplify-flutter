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
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryFrequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
