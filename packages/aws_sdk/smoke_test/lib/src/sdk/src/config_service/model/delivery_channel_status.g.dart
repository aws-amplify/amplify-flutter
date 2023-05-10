// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delivery_channel_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryChannelStatus extends DeliveryChannelStatus {
  @override
  final String? name;
  @override
  final _i2.ConfigExportDeliveryInfo? configSnapshotDeliveryInfo;
  @override
  final _i2.ConfigExportDeliveryInfo? configHistoryDeliveryInfo;
  @override
  final _i3.ConfigStreamDeliveryInfo? configStreamDeliveryInfo;

  factory _$DeliveryChannelStatus(
          [void Function(DeliveryChannelStatusBuilder)? updates]) =>
      (new DeliveryChannelStatusBuilder()..update(updates))._build();

  _$DeliveryChannelStatus._(
      {this.name,
      this.configSnapshotDeliveryInfo,
      this.configHistoryDeliveryInfo,
      this.configStreamDeliveryInfo})
      : super._();

  @override
  DeliveryChannelStatus rebuild(
          void Function(DeliveryChannelStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryChannelStatusBuilder toBuilder() =>
      new DeliveryChannelStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryChannelStatus &&
        name == other.name &&
        configSnapshotDeliveryInfo == other.configSnapshotDeliveryInfo &&
        configHistoryDeliveryInfo == other.configHistoryDeliveryInfo &&
        configStreamDeliveryInfo == other.configStreamDeliveryInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, configSnapshotDeliveryInfo.hashCode);
    _$hash = $jc(_$hash, configHistoryDeliveryInfo.hashCode);
    _$hash = $jc(_$hash, configStreamDeliveryInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeliveryChannelStatusBuilder
    implements Builder<DeliveryChannelStatus, DeliveryChannelStatusBuilder> {
  _$DeliveryChannelStatus? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.ConfigExportDeliveryInfoBuilder? _configSnapshotDeliveryInfo;
  _i2.ConfigExportDeliveryInfoBuilder get configSnapshotDeliveryInfo =>
      _$this._configSnapshotDeliveryInfo ??=
          new _i2.ConfigExportDeliveryInfoBuilder();
  set configSnapshotDeliveryInfo(
          _i2.ConfigExportDeliveryInfoBuilder? configSnapshotDeliveryInfo) =>
      _$this._configSnapshotDeliveryInfo = configSnapshotDeliveryInfo;

  _i2.ConfigExportDeliveryInfoBuilder? _configHistoryDeliveryInfo;
  _i2.ConfigExportDeliveryInfoBuilder get configHistoryDeliveryInfo =>
      _$this._configHistoryDeliveryInfo ??=
          new _i2.ConfigExportDeliveryInfoBuilder();
  set configHistoryDeliveryInfo(
          _i2.ConfigExportDeliveryInfoBuilder? configHistoryDeliveryInfo) =>
      _$this._configHistoryDeliveryInfo = configHistoryDeliveryInfo;

  _i3.ConfigStreamDeliveryInfoBuilder? _configStreamDeliveryInfo;
  _i3.ConfigStreamDeliveryInfoBuilder get configStreamDeliveryInfo =>
      _$this._configStreamDeliveryInfo ??=
          new _i3.ConfigStreamDeliveryInfoBuilder();
  set configStreamDeliveryInfo(
          _i3.ConfigStreamDeliveryInfoBuilder? configStreamDeliveryInfo) =>
      _$this._configStreamDeliveryInfo = configStreamDeliveryInfo;

  DeliveryChannelStatusBuilder() {
    DeliveryChannelStatus._init(this);
  }

  DeliveryChannelStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _configSnapshotDeliveryInfo = $v.configSnapshotDeliveryInfo?.toBuilder();
      _configHistoryDeliveryInfo = $v.configHistoryDeliveryInfo?.toBuilder();
      _configStreamDeliveryInfo = $v.configStreamDeliveryInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryChannelStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeliveryChannelStatus;
  }

  @override
  void update(void Function(DeliveryChannelStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryChannelStatus build() => _build();

  _$DeliveryChannelStatus _build() {
    _$DeliveryChannelStatus _$result;
    try {
      _$result = _$v ??
          new _$DeliveryChannelStatus._(
              name: name,
              configSnapshotDeliveryInfo: _configSnapshotDeliveryInfo?.build(),
              configHistoryDeliveryInfo: _configHistoryDeliveryInfo?.build(),
              configStreamDeliveryInfo: _configStreamDeliveryInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configSnapshotDeliveryInfo';
        _configSnapshotDeliveryInfo?.build();
        _$failedField = 'configHistoryDeliveryInfo';
        _configHistoryDeliveryInfo?.build();
        _$failedField = 'configStreamDeliveryInfo';
        _configStreamDeliveryInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeliveryChannelStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
