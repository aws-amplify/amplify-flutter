// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'srp_password_verifier_worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(SignInParameters.serializer)
      ..add(SrpInitResult.serializer)
      ..add(SrpPasswordVerifierMessage.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>()))
    .build();
Serializer<SrpPasswordVerifierMessage> _$srpPasswordVerifierMessageSerializer =
    new _$SrpPasswordVerifierMessageSerializer();

class _$SrpPasswordVerifierMessageSerializer
    implements StructuredSerializer<SrpPasswordVerifierMessage> {
  @override
  final Iterable<Type> types = const [
    SrpPasswordVerifierMessage,
    _$SrpPasswordVerifierMessage
  ];
  @override
  final String wireName = 'SrpPasswordVerifierMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SrpPasswordVerifierMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'initResult',
      serializers.serialize(object.initResult,
          specifiedType: const FullType(SrpInitResult)),
      'clientId',
      serializers.serialize(object.clientId,
          specifiedType: const FullType(String)),
      'poolId',
      serializers.serialize(object.poolId,
          specifiedType: const FullType(String)),
      'parameters',
      serializers.serialize(object.parameters,
          specifiedType: const FullType(SignInParameters)),
      'challengeParameters',
      serializers.serialize(object.challengeParameters,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(DateTime)),
    ];
    Object? value;
    value = object.clientSecret;
    if (value != null) {
      result
        ..add('clientSecret')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceKey;
    if (value != null) {
      result
        ..add('deviceKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SrpPasswordVerifierMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SrpPasswordVerifierMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'initResult':
          result.initResult = serializers.deserialize(value,
              specifiedType: const FullType(SrpInitResult))! as SrpInitResult;
          break;
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'clientSecret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'poolId':
          result.poolId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceKey':
          result.deviceKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parameters':
          result.parameters = serializers.deserialize(value,
                  specifiedType: const FullType(SignInParameters))!
              as SignInParameters;
          break;
        case 'challengeParameters':
          result.challengeParameters = serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ]))! as BuiltMap<String, String>;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$SrpPasswordVerifierMessage extends SrpPasswordVerifierMessage {
  @override
  final SrpInitResult initResult;
  @override
  final String clientId;
  @override
  final String? clientSecret;
  @override
  final String poolId;
  @override
  final String? deviceKey;
  @override
  final SignInParameters parameters;
  @override
  final BuiltMap<String, String> challengeParameters;
  @override
  final DateTime timestamp;

  factory _$SrpPasswordVerifierMessage(
          [void Function(SrpPasswordVerifierMessageBuilder)? updates]) =>
      (new SrpPasswordVerifierMessageBuilder()..update(updates))._build();

  _$SrpPasswordVerifierMessage._(
      {required this.initResult,
      required this.clientId,
      this.clientSecret,
      required this.poolId,
      this.deviceKey,
      required this.parameters,
      required this.challengeParameters,
      required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        initResult, r'SrpPasswordVerifierMessage', 'initResult');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'SrpPasswordVerifierMessage', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        poolId, r'SrpPasswordVerifierMessage', 'poolId');
    BuiltValueNullFieldError.checkNotNull(
        parameters, r'SrpPasswordVerifierMessage', 'parameters');
    BuiltValueNullFieldError.checkNotNull(challengeParameters,
        r'SrpPasswordVerifierMessage', 'challengeParameters');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'SrpPasswordVerifierMessage', 'timestamp');
  }

  @override
  SrpPasswordVerifierMessage rebuild(
          void Function(SrpPasswordVerifierMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SrpPasswordVerifierMessageBuilder toBuilder() =>
      new SrpPasswordVerifierMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SrpPasswordVerifierMessage &&
        initResult == other.initResult &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        poolId == other.poolId &&
        deviceKey == other.deviceKey &&
        parameters == other.parameters &&
        challengeParameters == other.challengeParameters &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, initResult.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, challengeParameters.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SrpPasswordVerifierMessage')
          ..add('initResult', initResult)
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('poolId', poolId)
          ..add('deviceKey', deviceKey)
          ..add('parameters', parameters)
          ..add('challengeParameters', challengeParameters)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class SrpPasswordVerifierMessageBuilder
    implements
        Builder<SrpPasswordVerifierMessage, SrpPasswordVerifierMessageBuilder> {
  _$SrpPasswordVerifierMessage? _$v;

  SrpInitResult? _initResult;
  SrpInitResult? get initResult => _$this._initResult;
  set initResult(SrpInitResult? initResult) => _$this._initResult = initResult;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  SignInParameters? _parameters;
  SignInParameters? get parameters => _$this._parameters;
  set parameters(SignInParameters? parameters) =>
      _$this._parameters = parameters;

  BuiltMap<String, String>? _challengeParameters;
  BuiltMap<String, String>? get challengeParameters =>
      _$this._challengeParameters;
  set challengeParameters(BuiltMap<String, String>? challengeParameters) =>
      _$this._challengeParameters = challengeParameters;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  SrpPasswordVerifierMessageBuilder();

  SrpPasswordVerifierMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initResult = $v.initResult;
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _poolId = $v.poolId;
      _deviceKey = $v.deviceKey;
      _parameters = $v.parameters;
      _challengeParameters = $v.challengeParameters;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SrpPasswordVerifierMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SrpPasswordVerifierMessage;
  }

  @override
  void update(void Function(SrpPasswordVerifierMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SrpPasswordVerifierMessage build() => _build();

  _$SrpPasswordVerifierMessage _build() {
    SrpPasswordVerifierMessage._init(this);
    final _$result = _$v ??
        new _$SrpPasswordVerifierMessage._(
            initResult: BuiltValueNullFieldError.checkNotNull(
                initResult, r'SrpPasswordVerifierMessage', 'initResult'),
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, r'SrpPasswordVerifierMessage', 'clientId'),
            clientSecret: clientSecret,
            poolId: BuiltValueNullFieldError.checkNotNull(
                poolId, r'SrpPasswordVerifierMessage', 'poolId'),
            deviceKey: deviceKey,
            parameters: BuiltValueNullFieldError.checkNotNull(
                parameters, r'SrpPasswordVerifierMessage', 'parameters'),
            challengeParameters: BuiltValueNullFieldError.checkNotNull(
                challengeParameters,
                r'SrpPasswordVerifierMessage',
                'challengeParameters'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'SrpPasswordVerifierMessage', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
