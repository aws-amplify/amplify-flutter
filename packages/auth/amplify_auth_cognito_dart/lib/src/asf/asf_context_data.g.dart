// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asf_context_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ASFContextData> _$aSFContextDataSerializer =
    new _$ASFContextDataSerializer();

class _$ASFContextDataSerializer
    implements StructuredSerializer<ASFContextData> {
  @override
  final Iterable<Type> types = const [ASFContextData, _$ASFContextData];
  @override
  final String wireName = 'ASFContextData';

  @override
  Iterable<Object?> serialize(Serializers serializers, ASFContextData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.deviceName;
    if (value != null) {
      result
        ..add('deviceName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thirdPartyDeviceId;
    if (value != null) {
      result
        ..add('thirdPartyDeviceId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceFingerprint;
    if (value != null) {
      result
        ..add('deviceFingerprint')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientTimezone;
    if (value != null) {
      result
        ..add('clientTimezone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationName;
    if (value != null) {
      result
        ..add('applicationName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationVersion;
    if (value != null) {
      result
        ..add('applicationVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceLanguage;
    if (value != null) {
      result
        ..add('deviceLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceOsReleaseVersion;
    if (value != null) {
      result
        ..add('deviceOsReleaseVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.screenHeightPixels;
    if (value != null) {
      result
        ..add('screenHeightPixels')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.screenWidthPixels;
    if (value != null) {
      result
        ..add('screenWidthPixels')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ASFContextData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ASFContextDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deviceName':
          result.deviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thirdPartyDeviceId':
          result.thirdPartyDeviceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceFingerprint':
          result.deviceFingerprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'clientTimezone':
          result.clientTimezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'applicationName':
          result.applicationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'applicationVersion':
          result.applicationVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceLanguage':
          result.deviceLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceOsReleaseVersion':
          result.deviceOsReleaseVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'screenHeightPixels':
          result.screenHeightPixels = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'screenWidthPixels':
          result.screenWidthPixels = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$ASFContextData extends ASFContextData {
  @override
  final String? deviceName;
  @override
  final String? thirdPartyDeviceId;
  @override
  final String? deviceFingerprint;
  @override
  final String? clientTimezone;
  @override
  final String? applicationName;
  @override
  final String? applicationVersion;
  @override
  final String? deviceLanguage;
  @override
  final String? deviceOsReleaseVersion;
  @override
  final int? screenHeightPixels;
  @override
  final int? screenWidthPixels;

  factory _$ASFContextData([void Function(ASFContextDataBuilder)? updates]) =>
      (new ASFContextDataBuilder()..update(updates))._build();

  _$ASFContextData._(
      {this.deviceName,
      this.thirdPartyDeviceId,
      this.deviceFingerprint,
      this.clientTimezone,
      this.applicationName,
      this.applicationVersion,
      this.deviceLanguage,
      this.deviceOsReleaseVersion,
      this.screenHeightPixels,
      this.screenWidthPixels})
      : super._();

  @override
  ASFContextData rebuild(void Function(ASFContextDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ASFContextDataBuilder toBuilder() =>
      new ASFContextDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ASFContextData &&
        deviceName == other.deviceName &&
        thirdPartyDeviceId == other.thirdPartyDeviceId &&
        deviceFingerprint == other.deviceFingerprint &&
        clientTimezone == other.clientTimezone &&
        applicationName == other.applicationName &&
        applicationVersion == other.applicationVersion &&
        deviceLanguage == other.deviceLanguage &&
        deviceOsReleaseVersion == other.deviceOsReleaseVersion &&
        screenHeightPixels == other.screenHeightPixels &&
        screenWidthPixels == other.screenWidthPixels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, thirdPartyDeviceId.hashCode);
    _$hash = $jc(_$hash, deviceFingerprint.hashCode);
    _$hash = $jc(_$hash, clientTimezone.hashCode);
    _$hash = $jc(_$hash, applicationName.hashCode);
    _$hash = $jc(_$hash, applicationVersion.hashCode);
    _$hash = $jc(_$hash, deviceLanguage.hashCode);
    _$hash = $jc(_$hash, deviceOsReleaseVersion.hashCode);
    _$hash = $jc(_$hash, screenHeightPixels.hashCode);
    _$hash = $jc(_$hash, screenWidthPixels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ASFContextData')
          ..add('deviceName', deviceName)
          ..add('thirdPartyDeviceId', thirdPartyDeviceId)
          ..add('deviceFingerprint', deviceFingerprint)
          ..add('clientTimezone', clientTimezone)
          ..add('applicationName', applicationName)
          ..add('applicationVersion', applicationVersion)
          ..add('deviceLanguage', deviceLanguage)
          ..add('deviceOsReleaseVersion', deviceOsReleaseVersion)
          ..add('screenHeightPixels', screenHeightPixels)
          ..add('screenWidthPixels', screenWidthPixels))
        .toString();
  }
}

class ASFContextDataBuilder
    implements Builder<ASFContextData, ASFContextDataBuilder> {
  _$ASFContextData? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _thirdPartyDeviceId;
  String? get thirdPartyDeviceId => _$this._thirdPartyDeviceId;
  set thirdPartyDeviceId(String? thirdPartyDeviceId) =>
      _$this._thirdPartyDeviceId = thirdPartyDeviceId;

  String? _deviceFingerprint;
  String? get deviceFingerprint => _$this._deviceFingerprint;
  set deviceFingerprint(String? deviceFingerprint) =>
      _$this._deviceFingerprint = deviceFingerprint;

  String? _clientTimezone;
  String? get clientTimezone => _$this._clientTimezone;
  set clientTimezone(String? clientTimezone) =>
      _$this._clientTimezone = clientTimezone;

  String? _applicationName;
  String? get applicationName => _$this._applicationName;
  set applicationName(String? applicationName) =>
      _$this._applicationName = applicationName;

  String? _applicationVersion;
  String? get applicationVersion => _$this._applicationVersion;
  set applicationVersion(String? applicationVersion) =>
      _$this._applicationVersion = applicationVersion;

  String? _deviceLanguage;
  String? get deviceLanguage => _$this._deviceLanguage;
  set deviceLanguage(String? deviceLanguage) =>
      _$this._deviceLanguage = deviceLanguage;

  String? _deviceOsReleaseVersion;
  String? get deviceOsReleaseVersion => _$this._deviceOsReleaseVersion;
  set deviceOsReleaseVersion(String? deviceOsReleaseVersion) =>
      _$this._deviceOsReleaseVersion = deviceOsReleaseVersion;

  int? _screenHeightPixels;
  int? get screenHeightPixels => _$this._screenHeightPixels;
  set screenHeightPixels(int? screenHeightPixels) =>
      _$this._screenHeightPixels = screenHeightPixels;

  int? _screenWidthPixels;
  int? get screenWidthPixels => _$this._screenWidthPixels;
  set screenWidthPixels(int? screenWidthPixels) =>
      _$this._screenWidthPixels = screenWidthPixels;

  ASFContextDataBuilder();

  ASFContextDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceName = $v.deviceName;
      _thirdPartyDeviceId = $v.thirdPartyDeviceId;
      _deviceFingerprint = $v.deviceFingerprint;
      _clientTimezone = $v.clientTimezone;
      _applicationName = $v.applicationName;
      _applicationVersion = $v.applicationVersion;
      _deviceLanguage = $v.deviceLanguage;
      _deviceOsReleaseVersion = $v.deviceOsReleaseVersion;
      _screenHeightPixels = $v.screenHeightPixels;
      _screenWidthPixels = $v.screenWidthPixels;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ASFContextData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ASFContextData;
  }

  @override
  void update(void Function(ASFContextDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ASFContextData build() => _build();

  _$ASFContextData _build() {
    final _$result = _$v ??
        new _$ASFContextData._(
            deviceName: deviceName,
            thirdPartyDeviceId: thirdPartyDeviceId,
            deviceFingerprint: deviceFingerprint,
            clientTimezone: clientTimezone,
            applicationName: applicationName,
            applicationVersion: applicationVersion,
            deviceLanguage: deviceLanguage,
            deviceOsReleaseVersion: deviceOsReleaseVersion,
            screenHeightPixels: screenHeightPixels,
            screenWidthPixels: screenWidthPixels);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
