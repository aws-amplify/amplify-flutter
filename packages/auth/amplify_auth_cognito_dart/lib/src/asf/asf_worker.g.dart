// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asf_worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(ASFContextData.serializer)
      ..add(ASFWorkerRequest.serializer)
      ..add(ASFWorkerResponse.serializer))
    .build();
Serializer<ASFWorkerRequest> _$aSFWorkerRequestSerializer =
    new _$ASFWorkerRequestSerializer();
Serializer<ASFWorkerResponse> _$aSFWorkerResponseSerializer =
    new _$ASFWorkerResponseSerializer();

class _$ASFWorkerRequestSerializer
    implements StructuredSerializer<ASFWorkerRequest> {
  @override
  final Iterable<Type> types = const [ASFWorkerRequest, _$ASFWorkerRequest];
  @override
  final String wireName = 'ASFWorkerRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, ASFWorkerRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'requestId',
      serializers.serialize(object.requestId,
          specifiedType: const FullType(int)),
      'userPoolId',
      serializers.serialize(object.userPoolId,
          specifiedType: const FullType(String)),
      'clientId',
      serializers.serialize(object.clientId,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
      'nativeContextData',
      serializers.serialize(object.nativeContextData,
          specifiedType: const FullType(ASFContextData)),
    ];

    return result;
  }

  @override
  ASFWorkerRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ASFWorkerRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'userPoolId':
          result.userPoolId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nativeContextData':
          result.nativeContextData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ASFContextData))!
              as ASFContextData);
          break;
      }
    }

    return result.build();
  }
}

class _$ASFWorkerResponseSerializer
    implements StructuredSerializer<ASFWorkerResponse> {
  @override
  final Iterable<Type> types = const [ASFWorkerResponse, _$ASFWorkerResponse];
  @override
  final String wireName = 'ASFWorkerResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, ASFWorkerResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'requestId',
      serializers.serialize(object.requestId,
          specifiedType: const FullType(int)),
      'userContextData',
      serializers.serialize(object.userContextData,
          specifiedType: const FullType(UserContextDataType)),
    ];

    return result;
  }

  @override
  ASFWorkerResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ASFWorkerResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'userContextData':
          result.userContextData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UserContextDataType))!
              as UserContextDataType);
          break;
      }
    }

    return result.build();
  }
}

class _$ASFWorkerRequest extends ASFWorkerRequest {
  @override
  final int requestId;
  @override
  final String userPoolId;
  @override
  final String clientId;
  @override
  final String username;
  @override
  final String deviceId;
  @override
  final ASFContextData nativeContextData;

  factory _$ASFWorkerRequest(
          [void Function(ASFWorkerRequestBuilder)? updates]) =>
      (new ASFWorkerRequestBuilder()..update(updates))._build();

  _$ASFWorkerRequest._(
      {required this.requestId,
      required this.userPoolId,
      required this.clientId,
      required this.username,
      required this.deviceId,
      required this.nativeContextData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestId, r'ASFWorkerRequest', 'requestId');
    BuiltValueNullFieldError.checkNotNull(
        userPoolId, r'ASFWorkerRequest', 'userPoolId');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'ASFWorkerRequest', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        username, r'ASFWorkerRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(
        deviceId, r'ASFWorkerRequest', 'deviceId');
    BuiltValueNullFieldError.checkNotNull(
        nativeContextData, r'ASFWorkerRequest', 'nativeContextData');
  }

  @override
  ASFWorkerRequest rebuild(void Function(ASFWorkerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ASFWorkerRequestBuilder toBuilder() =>
      new ASFWorkerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ASFWorkerRequest &&
        requestId == other.requestId &&
        userPoolId == other.userPoolId &&
        clientId == other.clientId &&
        username == other.username &&
        deviceId == other.deviceId &&
        nativeContextData == other.nativeContextData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, userPoolId.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, nativeContextData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ASFWorkerRequest')
          ..add('requestId', requestId)
          ..add('userPoolId', userPoolId)
          ..add('clientId', clientId)
          ..add('username', username)
          ..add('deviceId', deviceId)
          ..add('nativeContextData', nativeContextData))
        .toString();
  }
}

class ASFWorkerRequestBuilder
    implements Builder<ASFWorkerRequest, ASFWorkerRequestBuilder> {
  _$ASFWorkerRequest? _$v;

  int? _requestId;
  int? get requestId => _$this._requestId;
  set requestId(int? requestId) => _$this._requestId = requestId;

  String? _userPoolId;
  String? get userPoolId => _$this._userPoolId;
  set userPoolId(String? userPoolId) => _$this._userPoolId = userPoolId;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  ASFContextDataBuilder? _nativeContextData;
  ASFContextDataBuilder get nativeContextData =>
      _$this._nativeContextData ??= new ASFContextDataBuilder();
  set nativeContextData(ASFContextDataBuilder? nativeContextData) =>
      _$this._nativeContextData = nativeContextData;

  ASFWorkerRequestBuilder() {
    ASFWorkerRequest._init(this);
  }

  ASFWorkerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _userPoolId = $v.userPoolId;
      _clientId = $v.clientId;
      _username = $v.username;
      _deviceId = $v.deviceId;
      _nativeContextData = $v.nativeContextData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ASFWorkerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ASFWorkerRequest;
  }

  @override
  void update(void Function(ASFWorkerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ASFWorkerRequest build() => _build();

  _$ASFWorkerRequest _build() {
    _$ASFWorkerRequest _$result;
    try {
      _$result = _$v ??
          new _$ASFWorkerRequest._(
              requestId: BuiltValueNullFieldError.checkNotNull(
                  requestId, r'ASFWorkerRequest', 'requestId'),
              userPoolId: BuiltValueNullFieldError.checkNotNull(
                  userPoolId, r'ASFWorkerRequest', 'userPoolId'),
              clientId: BuiltValueNullFieldError.checkNotNull(
                  clientId, r'ASFWorkerRequest', 'clientId'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'ASFWorkerRequest', 'username'),
              deviceId: BuiltValueNullFieldError.checkNotNull(
                  deviceId, r'ASFWorkerRequest', 'deviceId'),
              nativeContextData: nativeContextData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nativeContextData';
        nativeContextData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ASFWorkerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ASFWorkerResponse extends ASFWorkerResponse {
  @override
  final int requestId;
  @override
  final UserContextDataType userContextData;

  factory _$ASFWorkerResponse(
          [void Function(ASFWorkerResponseBuilder)? updates]) =>
      (new ASFWorkerResponseBuilder()..update(updates))._build();

  _$ASFWorkerResponse._(
      {required this.requestId, required this.userContextData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestId, r'ASFWorkerResponse', 'requestId');
    BuiltValueNullFieldError.checkNotNull(
        userContextData, r'ASFWorkerResponse', 'userContextData');
  }

  @override
  ASFWorkerResponse rebuild(void Function(ASFWorkerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ASFWorkerResponseBuilder toBuilder() =>
      new ASFWorkerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ASFWorkerResponse &&
        requestId == other.requestId &&
        userContextData == other.userContextData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, userContextData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ASFWorkerResponse')
          ..add('requestId', requestId)
          ..add('userContextData', userContextData))
        .toString();
  }
}

class ASFWorkerResponseBuilder
    implements Builder<ASFWorkerResponse, ASFWorkerResponseBuilder> {
  _$ASFWorkerResponse? _$v;

  int? _requestId;
  int? get requestId => _$this._requestId;
  set requestId(int? requestId) => _$this._requestId = requestId;

  UserContextDataTypeBuilder? _userContextData;
  UserContextDataTypeBuilder get userContextData =>
      _$this._userContextData ??= new UserContextDataTypeBuilder();
  set userContextData(UserContextDataTypeBuilder? userContextData) =>
      _$this._userContextData = userContextData;

  ASFWorkerResponseBuilder();

  ASFWorkerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _userContextData = $v.userContextData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ASFWorkerResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ASFWorkerResponse;
  }

  @override
  void update(void Function(ASFWorkerResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ASFWorkerResponse build() => _build();

  _$ASFWorkerResponse _build() {
    _$ASFWorkerResponse _$result;
    try {
      _$result = _$v ??
          new _$ASFWorkerResponse._(
              requestId: BuiltValueNullFieldError.checkNotNull(
                  requestId, r'ASFWorkerResponse', 'requestId'),
              userContextData: userContextData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userContextData';
        userContextData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ASFWorkerResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
