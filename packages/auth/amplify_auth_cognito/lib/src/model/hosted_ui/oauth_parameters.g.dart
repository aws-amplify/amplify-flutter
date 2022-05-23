// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.hostedui.oauth_parameters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OAuthErrorCode _$invalidRequest =
    const OAuthErrorCode._('invalidRequest');
const OAuthErrorCode _$unauthorizedClient =
    const OAuthErrorCode._('unauthorizedClient');
const OAuthErrorCode _$accessDenied = const OAuthErrorCode._('accessDenied');
const OAuthErrorCode _$unsupportedResponseType =
    const OAuthErrorCode._('unsupportedResponseType');
const OAuthErrorCode _$invalidScope = const OAuthErrorCode._('invalidScope');
const OAuthErrorCode _$serverError = const OAuthErrorCode._('serverError');
const OAuthErrorCode _$temporarilyUnavailable =
    const OAuthErrorCode._('temporarilyUnavailable');
const OAuthErrorCode _$interactionRequired =
    const OAuthErrorCode._('interactionRequired');
const OAuthErrorCode _$loginRequired = const OAuthErrorCode._('loginRequired');
const OAuthErrorCode _$accountSelectionRequired =
    const OAuthErrorCode._('accountSelectionRequired');
const OAuthErrorCode _$consentRequired =
    const OAuthErrorCode._('consentRequired');
const OAuthErrorCode _$invalidRequestUri =
    const OAuthErrorCode._('invalidRequestUri');
const OAuthErrorCode _$invalidRequestObject =
    const OAuthErrorCode._('invalidRequestObject');
const OAuthErrorCode _$requestNotSupported =
    const OAuthErrorCode._('requestNotSupported');
const OAuthErrorCode _$requestUriNotSupported =
    const OAuthErrorCode._('requestUriNotSupported');
const OAuthErrorCode _$registrationUriNotSupported =
    const OAuthErrorCode._('registrationUriNotSupported');

OAuthErrorCode _$valueOf(String name) {
  switch (name) {
    case 'invalidRequest':
      return _$invalidRequest;
    case 'unauthorizedClient':
      return _$unauthorizedClient;
    case 'accessDenied':
      return _$accessDenied;
    case 'unsupportedResponseType':
      return _$unsupportedResponseType;
    case 'invalidScope':
      return _$invalidScope;
    case 'serverError':
      return _$serverError;
    case 'temporarilyUnavailable':
      return _$temporarilyUnavailable;
    case 'interactionRequired':
      return _$interactionRequired;
    case 'loginRequired':
      return _$loginRequired;
    case 'accountSelectionRequired':
      return _$accountSelectionRequired;
    case 'consentRequired':
      return _$consentRequired;
    case 'invalidRequestUri':
      return _$invalidRequestUri;
    case 'invalidRequestObject':
      return _$invalidRequestObject;
    case 'requestNotSupported':
      return _$requestNotSupported;
    case 'requestUriNotSupported':
      return _$requestUriNotSupported;
    case 'registrationUriNotSupported':
      return _$registrationUriNotSupported;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OAuthErrorCode> _$values =
    new BuiltSet<OAuthErrorCode>(const <OAuthErrorCode>[
  _$invalidRequest,
  _$unauthorizedClient,
  _$accessDenied,
  _$unsupportedResponseType,
  _$invalidScope,
  _$serverError,
  _$temporarilyUnavailable,
  _$interactionRequired,
  _$loginRequired,
  _$accountSelectionRequired,
  _$consentRequired,
  _$invalidRequestUri,
  _$invalidRequestObject,
  _$requestNotSupported,
  _$requestUriNotSupported,
  _$registrationUriNotSupported,
]);

Serializers _$oauthSerializers = (new Serializers().toBuilder()
      ..add(OAuthErrorCode.serializer)
      ..add(OAuthParameters.serializer))
    .build();
Serializer<OAuthErrorCode> _$oAuthErrorCodeSerializer =
    new _$OAuthErrorCodeSerializer();
Serializer<OAuthParameters> _$oAuthParametersSerializer =
    new _$OAuthParametersSerializer();

class _$OAuthErrorCodeSerializer
    implements PrimitiveSerializer<OAuthErrorCode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidRequest': 'invalid_request',
    'unauthorizedClient': 'unauthorized_client',
    'accessDenied': 'access_denied',
    'unsupportedResponseType': 'unsupported_response_type',
    'invalidScope': 'invalid_scope',
    'serverError': 'server_error',
    'temporarilyUnavailable': 'temporarily_unavailable',
    'interactionRequired': 'interaction_required',
    'loginRequired': 'login_required',
    'accountSelectionRequired': 'account_selection_required',
    'consentRequired': 'consent_required',
    'invalidRequestUri': 'invalid_request_uri',
    'invalidRequestObject': 'invalid_request_object',
    'requestNotSupported': 'request_not_supported',
    'requestUriNotSupported': 'request_uri_not_supported',
    'registrationUriNotSupported': 'registration_uri_not_supported',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'invalid_request': 'invalidRequest',
    'unauthorized_client': 'unauthorizedClient',
    'access_denied': 'accessDenied',
    'unsupported_response_type': 'unsupportedResponseType',
    'invalid_scope': 'invalidScope',
    'server_error': 'serverError',
    'temporarily_unavailable': 'temporarilyUnavailable',
    'interaction_required': 'interactionRequired',
    'login_required': 'loginRequired',
    'account_selection_required': 'accountSelectionRequired',
    'consent_required': 'consentRequired',
    'invalid_request_uri': 'invalidRequestUri',
    'invalid_request_object': 'invalidRequestObject',
    'request_not_supported': 'requestNotSupported',
    'request_uri_not_supported': 'requestUriNotSupported',
    'registration_uri_not_supported': 'registrationUriNotSupported',
  };

  @override
  final Iterable<Type> types = const <Type>[OAuthErrorCode];
  @override
  final String wireName = 'OAuthErrorCode';

  @override
  Object serialize(Serializers serializers, OAuthErrorCode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OAuthErrorCode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OAuthErrorCode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OAuthParametersSerializer
    implements StructuredSerializer<OAuthParameters> {
  @override
  final Iterable<Type> types = const [OAuthParameters, _$OAuthParameters];
  @override
  final String wireName = 'OAuthParameters';

  @override
  Iterable<Object?> serialize(Serializers serializers, OAuthParameters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(OAuthErrorCode)));
    }
    value = object.errorDescription;
    if (value != null) {
      result
        ..add('error_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.errorUri;
    if (value != null) {
      result
        ..add('error_uri')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OAuthParameters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OAuthParametersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(OAuthErrorCode)) as OAuthErrorCode?;
          break;
        case 'error_description':
          result.errorDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'error_uri':
          result.errorUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$OAuthParameters extends OAuthParameters {
  @override
  final String state;
  @override
  final String? code;
  @override
  final OAuthErrorCode? error;
  @override
  final String? errorDescription;
  @override
  final String? errorUri;

  factory _$OAuthParameters([void Function(OAuthParametersBuilder)? updates]) =>
      (new OAuthParametersBuilder()..update(updates))._build();

  _$OAuthParameters._(
      {required this.state,
      this.code,
      this.error,
      this.errorDescription,
      this.errorUri})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(state, 'OAuthParameters', 'state');
  }

  @override
  OAuthParameters rebuild(void Function(OAuthParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OAuthParametersBuilder toBuilder() =>
      new OAuthParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuthParameters &&
        state == other.state &&
        code == other.code &&
        error == other.error &&
        errorDescription == other.errorDescription &&
        errorUri == other.errorUri;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, state.hashCode), code.hashCode), error.hashCode),
            errorDescription.hashCode),
        errorUri.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OAuthParameters')
          ..add('state', state)
          ..add('code', code)
          ..add('error', error)
          ..add('errorDescription', errorDescription)
          ..add('errorUri', errorUri))
        .toString();
  }
}

class OAuthParametersBuilder
    implements Builder<OAuthParameters, OAuthParametersBuilder> {
  _$OAuthParameters? _$v;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  OAuthErrorCode? _error;
  OAuthErrorCode? get error => _$this._error;
  set error(OAuthErrorCode? error) => _$this._error = error;

  String? _errorDescription;
  String? get errorDescription => _$this._errorDescription;
  set errorDescription(String? errorDescription) =>
      _$this._errorDescription = errorDescription;

  String? _errorUri;
  String? get errorUri => _$this._errorUri;
  set errorUri(String? errorUri) => _$this._errorUri = errorUri;

  OAuthParametersBuilder();

  OAuthParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _code = $v.code;
      _error = $v.error;
      _errorDescription = $v.errorDescription;
      _errorUri = $v.errorUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuthParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OAuthParameters;
  }

  @override
  void update(void Function(OAuthParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuthParameters build() => _build();

  _$OAuthParameters _build() {
    OAuthParameters._finalize(this);
    final _$result = _$v ??
        new _$OAuthParameters._(
            state: BuiltValueNullFieldError.checkNotNull(
                state, 'OAuthParameters', 'state'),
            code: code,
            error: error,
            errorDescription: errorDescription,
            errorUri: errorUri);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
