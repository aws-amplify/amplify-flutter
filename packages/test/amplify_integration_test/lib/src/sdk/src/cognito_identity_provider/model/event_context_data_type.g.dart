// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_context_data_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventContextDataType extends EventContextDataType {
  @override
  final String? ipAddress;
  @override
  final String? deviceName;
  @override
  final String? timezone;
  @override
  final String? city;
  @override
  final String? country;

  factory _$EventContextDataType(
          [void Function(EventContextDataTypeBuilder)? updates]) =>
      (new EventContextDataTypeBuilder()..update(updates))._build();

  _$EventContextDataType._(
      {this.ipAddress, this.deviceName, this.timezone, this.city, this.country})
      : super._();

  @override
  EventContextDataType rebuild(
          void Function(EventContextDataTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventContextDataTypeBuilder toBuilder() =>
      new EventContextDataTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventContextDataType &&
        ipAddress == other.ipAddress &&
        deviceName == other.deviceName &&
        timezone == other.timezone &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EventContextDataTypeBuilder
    implements Builder<EventContextDataType, EventContextDataTypeBuilder> {
  _$EventContextDataType? _$v;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  EventContextDataTypeBuilder();

  EventContextDataTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipAddress = $v.ipAddress;
      _deviceName = $v.deviceName;
      _timezone = $v.timezone;
      _city = $v.city;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventContextDataType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventContextDataType;
  }

  @override
  void update(void Function(EventContextDataTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventContextDataType build() => _build();

  _$EventContextDataType _build() {
    final _$result = _$v ??
        new _$EventContextDataType._(
            ipAddress: ipAddress,
            deviceName: deviceName,
            timezone: timezone,
            city: city,
            country: country);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
