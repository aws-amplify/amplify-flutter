// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.config_export_delivery_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigExportDeliveryInfo extends ConfigExportDeliveryInfo {
  @override
  final _i2.DeliveryStatus? lastStatus;
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;
  @override
  final DateTime? lastAttemptTime;
  @override
  final DateTime? lastSuccessfulTime;
  @override
  final DateTime? nextDeliveryTime;

  factory _$ConfigExportDeliveryInfo(
          [void Function(ConfigExportDeliveryInfoBuilder)? updates]) =>
      (new ConfigExportDeliveryInfoBuilder()..update(updates))._build();

  _$ConfigExportDeliveryInfo._(
      {this.lastStatus,
      this.lastErrorCode,
      this.lastErrorMessage,
      this.lastAttemptTime,
      this.lastSuccessfulTime,
      this.nextDeliveryTime})
      : super._();

  @override
  ConfigExportDeliveryInfo rebuild(
          void Function(ConfigExportDeliveryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigExportDeliveryInfoBuilder toBuilder() =>
      new ConfigExportDeliveryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigExportDeliveryInfo &&
        lastStatus == other.lastStatus &&
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage &&
        lastAttemptTime == other.lastAttemptTime &&
        lastSuccessfulTime == other.lastSuccessfulTime &&
        nextDeliveryTime == other.nextDeliveryTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jc(_$hash, lastErrorCode.hashCode);
    _$hash = $jc(_$hash, lastErrorMessage.hashCode);
    _$hash = $jc(_$hash, lastAttemptTime.hashCode);
    _$hash = $jc(_$hash, lastSuccessfulTime.hashCode);
    _$hash = $jc(_$hash, nextDeliveryTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigExportDeliveryInfoBuilder
    implements
        Builder<ConfigExportDeliveryInfo, ConfigExportDeliveryInfoBuilder> {
  _$ConfigExportDeliveryInfo? _$v;

  _i2.DeliveryStatus? _lastStatus;
  _i2.DeliveryStatus? get lastStatus => _$this._lastStatus;
  set lastStatus(_i2.DeliveryStatus? lastStatus) =>
      _$this._lastStatus = lastStatus;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  DateTime? _lastAttemptTime;
  DateTime? get lastAttemptTime => _$this._lastAttemptTime;
  set lastAttemptTime(DateTime? lastAttemptTime) =>
      _$this._lastAttemptTime = lastAttemptTime;

  DateTime? _lastSuccessfulTime;
  DateTime? get lastSuccessfulTime => _$this._lastSuccessfulTime;
  set lastSuccessfulTime(DateTime? lastSuccessfulTime) =>
      _$this._lastSuccessfulTime = lastSuccessfulTime;

  DateTime? _nextDeliveryTime;
  DateTime? get nextDeliveryTime => _$this._nextDeliveryTime;
  set nextDeliveryTime(DateTime? nextDeliveryTime) =>
      _$this._nextDeliveryTime = nextDeliveryTime;

  ConfigExportDeliveryInfoBuilder() {
    ConfigExportDeliveryInfo._init(this);
  }

  ConfigExportDeliveryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastStatus = $v.lastStatus;
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _lastAttemptTime = $v.lastAttemptTime;
      _lastSuccessfulTime = $v.lastSuccessfulTime;
      _nextDeliveryTime = $v.nextDeliveryTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigExportDeliveryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigExportDeliveryInfo;
  }

  @override
  void update(void Function(ConfigExportDeliveryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigExportDeliveryInfo build() => _build();

  _$ConfigExportDeliveryInfo _build() {
    final _$result = _$v ??
        new _$ConfigExportDeliveryInfo._(
            lastStatus: lastStatus,
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage,
            lastAttemptTime: lastAttemptTime,
            lastSuccessfulTime: lastSuccessfulTime,
            nextDeliveryTime: nextDeliveryTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
