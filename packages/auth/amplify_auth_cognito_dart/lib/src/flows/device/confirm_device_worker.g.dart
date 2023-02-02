// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_device_worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(ConfirmDeviceMessage.serializer)
      ..add(ConfirmDeviceResponse.serializer))
    .build();
Serializer<ConfirmDeviceMessage> _$confirmDeviceMessageSerializer =
    new _$ConfirmDeviceMessageSerializer();
Serializer<ConfirmDeviceResponse> _$confirmDeviceResponseSerializer =
    new _$ConfirmDeviceResponseSerializer();

class _$ConfirmDeviceMessageSerializer
    implements StructuredSerializer<ConfirmDeviceMessage> {
  @override
  final Iterable<Type> types = const [
    ConfirmDeviceMessage,
    _$ConfirmDeviceMessage
  ];
  @override
  final String wireName = 'ConfirmDeviceMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConfirmDeviceMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'newDeviceMetadata',
      serializers.serialize(object.newDeviceMetadata,
          specifiedType: const FullType(NewDeviceMetadataType)),
    ];

    return result;
  }

  @override
  ConfirmDeviceMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfirmDeviceMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'newDeviceMetadata':
          result.newDeviceMetadata.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NewDeviceMetadataType))!
              as NewDeviceMetadataType);
          break;
      }
    }

    return result.build();
  }
}

class _$ConfirmDeviceResponseSerializer
    implements StructuredSerializer<ConfirmDeviceResponse> {
  @override
  final Iterable<Type> types = const [
    ConfirmDeviceResponse,
    _$ConfirmDeviceResponse
  ];
  @override
  final String wireName = 'ConfirmDeviceResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConfirmDeviceResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'devicePassword',
      serializers.serialize(object.devicePassword,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(ConfirmDeviceRequest)),
    ];

    return result;
  }

  @override
  ConfirmDeviceResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfirmDeviceResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'devicePassword':
          result.devicePassword = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ConfirmDeviceRequest))!
              as ConfirmDeviceRequest);
          break;
      }
    }

    return result.build();
  }
}

class _$ConfirmDeviceMessage extends ConfirmDeviceMessage {
  @override
  final String accessToken;
  @override
  final NewDeviceMetadataType newDeviceMetadata;

  factory _$ConfirmDeviceMessage(
          [void Function(ConfirmDeviceMessageBuilder)? updates]) =>
      (new ConfirmDeviceMessageBuilder()..update(updates))._build();

  _$ConfirmDeviceMessage._(
      {required this.accessToken, required this.newDeviceMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'ConfirmDeviceMessage', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        newDeviceMetadata, r'ConfirmDeviceMessage', 'newDeviceMetadata');
  }

  @override
  ConfirmDeviceMessage rebuild(
          void Function(ConfirmDeviceMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmDeviceMessageBuilder toBuilder() =>
      new ConfirmDeviceMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmDeviceMessage &&
        accessToken == other.accessToken &&
        newDeviceMetadata == other.newDeviceMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, newDeviceMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfirmDeviceMessage')
          ..add('accessToken', accessToken)
          ..add('newDeviceMetadata', newDeviceMetadata))
        .toString();
  }
}

class ConfirmDeviceMessageBuilder
    implements Builder<ConfirmDeviceMessage, ConfirmDeviceMessageBuilder> {
  _$ConfirmDeviceMessage? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  NewDeviceMetadataTypeBuilder? _newDeviceMetadata;
  NewDeviceMetadataTypeBuilder get newDeviceMetadata =>
      _$this._newDeviceMetadata ??= new NewDeviceMetadataTypeBuilder();
  set newDeviceMetadata(NewDeviceMetadataTypeBuilder? newDeviceMetadata) =>
      _$this._newDeviceMetadata = newDeviceMetadata;

  ConfirmDeviceMessageBuilder();

  ConfirmDeviceMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _newDeviceMetadata = $v.newDeviceMetadata.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmDeviceMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmDeviceMessage;
  }

  @override
  void update(void Function(ConfirmDeviceMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmDeviceMessage build() => _build();

  _$ConfirmDeviceMessage _build() {
    _$ConfirmDeviceMessage _$result;
    try {
      _$result = _$v ??
          new _$ConfirmDeviceMessage._(
              accessToken: BuiltValueNullFieldError.checkNotNull(
                  accessToken, r'ConfirmDeviceMessage', 'accessToken'),
              newDeviceMetadata: newDeviceMetadata.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newDeviceMetadata';
        newDeviceMetadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfirmDeviceMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ConfirmDeviceResponse extends ConfirmDeviceResponse {
  @override
  final String devicePassword;
  @override
  final ConfirmDeviceRequest request;

  factory _$ConfirmDeviceResponse(
          [void Function(ConfirmDeviceResponseBuilder)? updates]) =>
      (new ConfirmDeviceResponseBuilder()..update(updates))._build();

  _$ConfirmDeviceResponse._(
      {required this.devicePassword, required this.request})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        devicePassword, r'ConfirmDeviceResponse', 'devicePassword');
    BuiltValueNullFieldError.checkNotNull(
        request, r'ConfirmDeviceResponse', 'request');
  }

  @override
  ConfirmDeviceResponse rebuild(
          void Function(ConfirmDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmDeviceResponseBuilder toBuilder() =>
      new ConfirmDeviceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmDeviceResponse &&
        devicePassword == other.devicePassword &&
        request == other.request;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, devicePassword.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfirmDeviceResponse')
          ..add('devicePassword', devicePassword)
          ..add('request', request))
        .toString();
  }
}

class ConfirmDeviceResponseBuilder
    implements Builder<ConfirmDeviceResponse, ConfirmDeviceResponseBuilder> {
  _$ConfirmDeviceResponse? _$v;

  String? _devicePassword;
  String? get devicePassword => _$this._devicePassword;
  set devicePassword(String? devicePassword) =>
      _$this._devicePassword = devicePassword;

  ConfirmDeviceRequestBuilder? _request;
  ConfirmDeviceRequestBuilder get request =>
      _$this._request ??= new ConfirmDeviceRequestBuilder();
  set request(ConfirmDeviceRequestBuilder? request) =>
      _$this._request = request;

  ConfirmDeviceResponseBuilder();

  ConfirmDeviceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _devicePassword = $v.devicePassword;
      _request = $v.request.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmDeviceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmDeviceResponse;
  }

  @override
  void update(void Function(ConfirmDeviceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmDeviceResponse build() => _build();

  _$ConfirmDeviceResponse _build() {
    _$ConfirmDeviceResponse _$result;
    try {
      _$result = _$v ??
          new _$ConfirmDeviceResponse._(
              devicePassword: BuiltValueNullFieldError.checkNotNull(
                  devicePassword, r'ConfirmDeviceResponse', 'devicePassword'),
              request: request.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfirmDeviceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
