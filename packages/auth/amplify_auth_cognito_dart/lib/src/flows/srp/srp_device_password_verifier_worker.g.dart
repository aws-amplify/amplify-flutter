// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'srp_device_password_verifier_worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(CognitoDeviceSecrets.serializer)
      ..add(SignInParameters.serializer)
      ..add(SrpDevicePasswordVerifierMessage.serializer)
      ..add(SrpInitResult.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>()))
    .build();
Serializer<SrpDevicePasswordVerifierMessage>
    _$srpDevicePasswordVerifierMessageSerializer =
    new _$SrpDevicePasswordVerifierMessageSerializer();

class _$SrpDevicePasswordVerifierMessageSerializer
    implements StructuredSerializer<SrpDevicePasswordVerifierMessage> {
  @override
  final Iterable<Type> types = const [
    SrpDevicePasswordVerifierMessage,
    _$SrpDevicePasswordVerifierMessage
  ];
  @override
  final String wireName = 'SrpDevicePasswordVerifierMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SrpDevicePasswordVerifierMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'initResult',
      serializers.serialize(object.initResult,
          specifiedType: const FullType(SrpInitResult)),
      'clientId',
      serializers.serialize(object.clientId,
          specifiedType: const FullType(String)),
      'deviceSecrets',
      serializers.serialize(object.deviceSecrets,
          specifiedType: const FullType(CognitoDeviceSecrets)),
      'parameters',
      serializers.serialize(object.parameters,
          specifiedType: const FullType(SignInParameters)),
      'challengeParameters',
      serializers.serialize(object.challengeParameters,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];
    Object? value;
    value = object.clientSecret;
    if (value != null) {
      result
        ..add('clientSecret')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SrpDevicePasswordVerifierMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SrpDevicePasswordVerifierMessageBuilder();

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
        case 'deviceSecrets':
          result.deviceSecrets = serializers.deserialize(value,
                  specifiedType: const FullType(CognitoDeviceSecrets))!
              as CognitoDeviceSecrets;
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
      }
    }

    return result.build();
  }
}

class _$SrpDevicePasswordVerifierMessage
    extends SrpDevicePasswordVerifierMessage {
  @override
  final SrpInitResult initResult;
  @override
  final String clientId;
  @override
  final String? clientSecret;
  @override
  final CognitoDeviceSecrets deviceSecrets;
  @override
  final SignInParameters parameters;
  @override
  final BuiltMap<String, String> challengeParameters;

  factory _$SrpDevicePasswordVerifierMessage(
          [void Function(SrpDevicePasswordVerifierMessageBuilder)? updates]) =>
      (new SrpDevicePasswordVerifierMessageBuilder()..update(updates))._build();

  _$SrpDevicePasswordVerifierMessage._(
      {required this.initResult,
      required this.clientId,
      this.clientSecret,
      required this.deviceSecrets,
      required this.parameters,
      required this.challengeParameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        initResult, r'SrpDevicePasswordVerifierMessage', 'initResult');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'SrpDevicePasswordVerifierMessage', 'clientId');
    BuiltValueNullFieldError.checkNotNull(
        deviceSecrets, r'SrpDevicePasswordVerifierMessage', 'deviceSecrets');
    BuiltValueNullFieldError.checkNotNull(
        parameters, r'SrpDevicePasswordVerifierMessage', 'parameters');
    BuiltValueNullFieldError.checkNotNull(challengeParameters,
        r'SrpDevicePasswordVerifierMessage', 'challengeParameters');
  }

  @override
  SrpDevicePasswordVerifierMessage rebuild(
          void Function(SrpDevicePasswordVerifierMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SrpDevicePasswordVerifierMessageBuilder toBuilder() =>
      new SrpDevicePasswordVerifierMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SrpDevicePasswordVerifierMessage &&
        initResult == other.initResult &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        deviceSecrets == other.deviceSecrets &&
        parameters == other.parameters &&
        challengeParameters == other.challengeParameters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, initResult.hashCode), clientId.hashCode),
                    clientSecret.hashCode),
                deviceSecrets.hashCode),
            parameters.hashCode),
        challengeParameters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SrpDevicePasswordVerifierMessage')
          ..add('initResult', initResult)
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('deviceSecrets', deviceSecrets)
          ..add('parameters', parameters)
          ..add('challengeParameters', challengeParameters))
        .toString();
  }
}

class SrpDevicePasswordVerifierMessageBuilder
    implements
        Builder<SrpDevicePasswordVerifierMessage,
            SrpDevicePasswordVerifierMessageBuilder> {
  _$SrpDevicePasswordVerifierMessage? _$v;

  SrpInitResult? _initResult;
  SrpInitResult? get initResult => _$this._initResult;
  set initResult(SrpInitResult? initResult) => _$this._initResult = initResult;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  CognitoDeviceSecrets? _deviceSecrets;
  CognitoDeviceSecrets? get deviceSecrets => _$this._deviceSecrets;
  set deviceSecrets(CognitoDeviceSecrets? deviceSecrets) =>
      _$this._deviceSecrets = deviceSecrets;

  SignInParameters? _parameters;
  SignInParameters? get parameters => _$this._parameters;
  set parameters(SignInParameters? parameters) =>
      _$this._parameters = parameters;

  BuiltMap<String, String>? _challengeParameters;
  BuiltMap<String, String>? get challengeParameters =>
      _$this._challengeParameters;
  set challengeParameters(BuiltMap<String, String>? challengeParameters) =>
      _$this._challengeParameters = challengeParameters;

  SrpDevicePasswordVerifierMessageBuilder();

  SrpDevicePasswordVerifierMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initResult = $v.initResult;
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _deviceSecrets = $v.deviceSecrets;
      _parameters = $v.parameters;
      _challengeParameters = $v.challengeParameters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SrpDevicePasswordVerifierMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SrpDevicePasswordVerifierMessage;
  }

  @override
  void update(void Function(SrpDevicePasswordVerifierMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SrpDevicePasswordVerifierMessage build() => _build();

  _$SrpDevicePasswordVerifierMessage _build() {
    final _$result = _$v ??
        new _$SrpDevicePasswordVerifierMessage._(
            initResult: BuiltValueNullFieldError.checkNotNull(
                initResult, r'SrpDevicePasswordVerifierMessage', 'initResult'),
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, r'SrpDevicePasswordVerifierMessage', 'clientId'),
            clientSecret: clientSecret,
            deviceSecrets: BuiltValueNullFieldError.checkNotNull(deviceSecrets,
                r'SrpDevicePasswordVerifierMessage', 'deviceSecrets'),
            parameters: BuiltValueNullFieldError.checkNotNull(
                parameters, r'SrpDevicePasswordVerifierMessage', 'parameters'),
            challengeParameters: BuiltValueNullFieldError.checkNotNull(
                challengeParameters,
                r'SrpDevicePasswordVerifierMessage',
                'challengeParameters'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
