// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_device_secrets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CognitoDeviceSecrets> _$cognitoDeviceSecretsSerializer =
    new _$CognitoDeviceSecretsSerializer();

class _$CognitoDeviceSecretsSerializer
    implements StructuredSerializer<CognitoDeviceSecrets> {
  @override
  final Iterable<Type> types = const [
    CognitoDeviceSecrets,
    _$CognitoDeviceSecrets
  ];
  @override
  final String wireName = 'CognitoDeviceSecrets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CognitoDeviceSecrets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deviceGroupKey',
      serializers.serialize(object.deviceGroupKey,
          specifiedType: const FullType(String)),
      'deviceKey',
      serializers.serialize(object.deviceKey,
          specifiedType: const FullType(String)),
      'devicePassword',
      serializers.serialize(object.devicePassword,
          specifiedType: const FullType(String)),
      'deviceStatus',
      serializers.serialize(object.deviceStatus,
          specifiedType: const FullType(DeviceRememberedStatusType)),
    ];

    return result;
  }

  @override
  CognitoDeviceSecrets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CognitoDeviceSecretsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deviceGroupKey':
          result.deviceGroupKey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceKey':
          result.deviceKey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'devicePassword':
          result.devicePassword = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceStatus':
          result.deviceStatus = serializers.deserialize(value,
                  specifiedType: const FullType(DeviceRememberedStatusType))!
              as DeviceRememberedStatusType;
          break;
      }
    }

    return result.build();
  }
}

class _$CognitoDeviceSecrets extends CognitoDeviceSecrets {
  @override
  final String deviceGroupKey;
  @override
  final String deviceKey;
  @override
  final String devicePassword;
  @override
  final DeviceRememberedStatusType deviceStatus;

  factory _$CognitoDeviceSecrets(
          [void Function(CognitoDeviceSecretsBuilder)? updates]) =>
      (new CognitoDeviceSecretsBuilder()..update(updates))._build();

  _$CognitoDeviceSecrets._(
      {required this.deviceGroupKey,
      required this.deviceKey,
      required this.devicePassword,
      required this.deviceStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceGroupKey, r'CognitoDeviceSecrets', 'deviceGroupKey');
    BuiltValueNullFieldError.checkNotNull(
        deviceKey, r'CognitoDeviceSecrets', 'deviceKey');
    BuiltValueNullFieldError.checkNotNull(
        devicePassword, r'CognitoDeviceSecrets', 'devicePassword');
    BuiltValueNullFieldError.checkNotNull(
        deviceStatus, r'CognitoDeviceSecrets', 'deviceStatus');
  }

  @override
  CognitoDeviceSecrets rebuild(
          void Function(CognitoDeviceSecretsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CognitoDeviceSecretsBuilder toBuilder() =>
      new CognitoDeviceSecretsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CognitoDeviceSecrets &&
        deviceGroupKey == other.deviceGroupKey &&
        deviceKey == other.deviceKey &&
        devicePassword == other.devicePassword &&
        deviceStatus == other.deviceStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceGroupKey.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, devicePassword.hashCode);
    _$hash = $jc(_$hash, deviceStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CognitoDeviceSecrets')
          ..add('deviceGroupKey', deviceGroupKey)
          ..add('deviceKey', deviceKey)
          ..add('devicePassword', devicePassword)
          ..add('deviceStatus', deviceStatus))
        .toString();
  }
}

class CognitoDeviceSecretsBuilder
    implements Builder<CognitoDeviceSecrets, CognitoDeviceSecretsBuilder> {
  _$CognitoDeviceSecrets? _$v;

  String? _deviceGroupKey;
  String? get deviceGroupKey => _$this._deviceGroupKey;
  set deviceGroupKey(String? deviceGroupKey) =>
      _$this._deviceGroupKey = deviceGroupKey;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  String? _devicePassword;
  String? get devicePassword => _$this._devicePassword;
  set devicePassword(String? devicePassword) =>
      _$this._devicePassword = devicePassword;

  DeviceRememberedStatusType? _deviceStatus;
  DeviceRememberedStatusType? get deviceStatus => _$this._deviceStatus;
  set deviceStatus(DeviceRememberedStatusType? deviceStatus) =>
      _$this._deviceStatus = deviceStatus;

  CognitoDeviceSecretsBuilder();

  CognitoDeviceSecretsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceGroupKey = $v.deviceGroupKey;
      _deviceKey = $v.deviceKey;
      _devicePassword = $v.devicePassword;
      _deviceStatus = $v.deviceStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CognitoDeviceSecrets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CognitoDeviceSecrets;
  }

  @override
  void update(void Function(CognitoDeviceSecretsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CognitoDeviceSecrets build() => _build();

  _$CognitoDeviceSecrets _build() {
    CognitoDeviceSecrets._init(this);
    final _$result = _$v ??
        new _$CognitoDeviceSecrets._(
            deviceGroupKey: BuiltValueNullFieldError.checkNotNull(
                deviceGroupKey, r'CognitoDeviceSecrets', 'deviceGroupKey'),
            deviceKey: BuiltValueNullFieldError.checkNotNull(
                deviceKey, r'CognitoDeviceSecrets', 'deviceKey'),
            devicePassword: BuiltValueNullFieldError.checkNotNull(
                devicePassword, r'CognitoDeviceSecrets', 'devicePassword'),
            deviceStatus: BuiltValueNullFieldError.checkNotNull(
                deviceStatus, r'CognitoDeviceSecrets', 'deviceStatus'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
