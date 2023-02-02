// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.config_stream_delivery_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigStreamDeliveryInfo extends ConfigStreamDeliveryInfo {
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;
  @override
  final _i2.DeliveryStatus? lastStatus;
  @override
  final DateTime? lastStatusChangeTime;

  factory _$ConfigStreamDeliveryInfo(
          [void Function(ConfigStreamDeliveryInfoBuilder)? updates]) =>
      (new ConfigStreamDeliveryInfoBuilder()..update(updates))._build();

  _$ConfigStreamDeliveryInfo._(
      {this.lastErrorCode,
      this.lastErrorMessage,
      this.lastStatus,
      this.lastStatusChangeTime})
      : super._();

  @override
  ConfigStreamDeliveryInfo rebuild(
          void Function(ConfigStreamDeliveryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigStreamDeliveryInfoBuilder toBuilder() =>
      new ConfigStreamDeliveryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigStreamDeliveryInfo &&
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage &&
        lastStatus == other.lastStatus &&
        lastStatusChangeTime == other.lastStatusChangeTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastErrorCode.hashCode);
    _$hash = $jc(_$hash, lastErrorMessage.hashCode);
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jc(_$hash, lastStatusChangeTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigStreamDeliveryInfoBuilder
    implements
        Builder<ConfigStreamDeliveryInfo, ConfigStreamDeliveryInfoBuilder> {
  _$ConfigStreamDeliveryInfo? _$v;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  _i2.DeliveryStatus? _lastStatus;
  _i2.DeliveryStatus? get lastStatus => _$this._lastStatus;
  set lastStatus(_i2.DeliveryStatus? lastStatus) =>
      _$this._lastStatus = lastStatus;

  DateTime? _lastStatusChangeTime;
  DateTime? get lastStatusChangeTime => _$this._lastStatusChangeTime;
  set lastStatusChangeTime(DateTime? lastStatusChangeTime) =>
      _$this._lastStatusChangeTime = lastStatusChangeTime;

  ConfigStreamDeliveryInfoBuilder() {
    ConfigStreamDeliveryInfo._init(this);
  }

  ConfigStreamDeliveryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _lastStatus = $v.lastStatus;
      _lastStatusChangeTime = $v.lastStatusChangeTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigStreamDeliveryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigStreamDeliveryInfo;
  }

  @override
  void update(void Function(ConfigStreamDeliveryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigStreamDeliveryInfo build() => _build();

  _$ConfigStreamDeliveryInfo _build() {
    final _$result = _$v ??
        new _$ConfigStreamDeliveryInfo._(
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage,
            lastStatus: lastStatus,
            lastStatusChangeTime: lastStatusChangeTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
