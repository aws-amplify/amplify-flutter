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
    return $jf($jc(
        $jc($jc($jc(0, lastErrorCode.hashCode), lastErrorMessage.hashCode),
            lastStatus.hashCode),
        lastStatusChangeTime.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
