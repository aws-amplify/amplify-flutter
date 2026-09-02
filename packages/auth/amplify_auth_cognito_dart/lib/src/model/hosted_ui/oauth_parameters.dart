// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library;

import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'oauth_parameters.g.dart';

/// Error codes of a failed OAuth flow.
///
/// References:
/// - [OAuth 2.0 Error Codes](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1.2.1)
/// - [OIDC Error Codes](https://openid.net/specs/openid-connect-core-1_0.html#AuthError)
class OAuthErrorCode extends EnumClass {
  const OAuthErrorCode._(super.name);

  /// The request is missing a required parameter, includes an invalid parameter
  /// value, includes a parameter more than once, or is otherwise malformed.
  @BuiltValueEnumConst(wireName: 'invalid_request')
  static const OAuthErrorCode invalidRequest = _$invalidRequest;

  /// The client is not authorized to request an authorization code using this
  /// method.
  @BuiltValueEnumConst(wireName: 'unauthorized_client')
  static const OAuthErrorCode unauthorizedClient = _$unauthorizedClient;

  /// The resource owner or authorization server denied the request.
  @BuiltValueEnumConst(wireName: 'access_denied')
  static const OAuthErrorCode accessDenied = _$accessDenied;

  /// The authorization server does not support obtaining an authorization code
  /// using this method.
  @BuiltValueEnumConst(wireName: 'unsupported_response_type')
  static const OAuthErrorCode unsupportedResponseType =
      _$unsupportedResponseType;

  /// The requested scope is invalid, unknown, or malformed.
  @BuiltValueEnumConst(wireName: 'invalid_scope')
  static const OAuthErrorCode invalidScope = _$invalidScope;

  /// The authorization server encountered an unexpected condition that
  /// prevented it from fulfilling the request.
  ///
  /// (This error code is needed because a 500 Internal Server Error HTTP status
  /// code cannot be returned to the client via an HTTP redirect.)
  @BuiltValueEnumConst(wireName: 'server_error')
  static const OAuthErrorCode serverError = _$serverError;

  /// The authorization server is currently unable to handle the request due to
  /// a temporary overloading or maintenance of the server.
  ///
  /// (This error code is needed because a 503 Service Unavailable HTTP status
  /// code cannot be returned to the client via an HTTP redirect.)
  @BuiltValueEnumConst(wireName: 'temporarily_unavailable')
  static const OAuthErrorCode temporarilyUnavailable = _$temporarilyUnavailable;

  /// The Authorization Server requires End-User interaction of some form to
  /// proceed.
  ///
  /// This error MAY be returned when the `prompt` parameter value in the
  /// Authentication Request is `none`, but the Authentication Request cannot be
  /// completed without displaying a user interface for End-User interaction.
  @BuiltValueEnumConst(wireName: 'interaction_required')
  static const OAuthErrorCode interactionRequired = _$interactionRequired;

  /// The Authorization Server requires End-User authentication.
  ///
  /// This error MAY be returned when the `prompt` parameter value in the
  /// Authentication Request is `none`, but the Authentication Request cannot be
  /// completed without displaying a user interface for End-User authentication.
  @BuiltValueEnumConst(wireName: 'login_required')
  static const OAuthErrorCode loginRequired = _$loginRequired;

  /// The End-User is REQUIRED to select a session at the Authorization Server.
  ///
  /// The End-User MAY be authenticated at the Authorization Server with
  /// different associated accounts, but the End-User did not select a session.
  /// This error MAY be returned when the `prompt` parameter value in the
  /// Authentication Request is `none`, but the Authentication Request cannot be
  /// completed without displaying a user interface to prompt for a session to
  /// use.
  @BuiltValueEnumConst(wireName: 'account_selection_required')
  static const OAuthErrorCode accountSelectionRequired =
      _$accountSelectionRequired;

  /// The Authorization Server requires End-User consent.
  ///
  /// This error MAY be returned when the `prompt` parameter value in the
  /// Authentication Request is `none`, but the Authentication Request cannot be
  /// completed without displaying a user interface for End-User consent.
  @BuiltValueEnumConst(wireName: 'consent_required')
  static const OAuthErrorCode consentRequired = _$consentRequired;

  /// The `request_uri` in the Authorization Request returns an error or
  /// contains invalid data.
  @BuiltValueEnumConst(wireName: 'invalid_request_uri')
  static const OAuthErrorCode invalidRequestUri = _$invalidRequestUri;

  /// The `request` parameter contains an invalid Request Object.
  @BuiltValueEnumConst(wireName: 'invalid_request_object')
  static const OAuthErrorCode invalidRequestObject = _$invalidRequestObject;

  /// The OP does not support use of the `request` parameter defined in
  /// [Section 6](https://openid.net/specs/openid-connect-core-1_0.html#JWTRequests).
  @BuiltValueEnumConst(wireName: 'request_not_supported')
  static const OAuthErrorCode requestNotSupported = _$requestNotSupported;

  /// The OP does not support use of the `request_uri` parameter defined in
  /// [Section 6](https://openid.net/specs/openid-connect-core-1_0.html#JWTRequests).
  @BuiltValueEnumConst(wireName: 'request_uri_not_supported')
  static const OAuthErrorCode requestUriNotSupported = _$requestUriNotSupported;

  /// The OP does not support use of the `registration` parameter defined in
  /// [Section 7.2.1](https://openid.net/specs/openid-connect-core-1_0.html#RegistrationParameter).
  @BuiltValueEnumConst(wireName: 'registration_uri_not_supported')
  static const OAuthErrorCode registrationUriNotSupported =
      _$registrationUriNotSupported;

  /// The user cancelled the authorization request at the identity provider,
  /// e.g. by declining the consent screen shown by Sign in with Apple.
  ///
  /// This code is not part of the OAuth or OIDC specifications. It is relayed
  /// verbatim by Amazon Cognito from the external identity provider.
  @BuiltValueEnumConst(wireName: 'user_cancelled_authorize')
  static const OAuthErrorCode userCancelledAuthorize = _$userCancelledAuthorize;

  /// An error code which is not recognized by this library.
  ///
  /// Amazon Cognito relays error codes from external identity providers
  /// verbatim, so the set of codes which may be returned is open-ended.
  /// Unrecognized codes deserialize to this value instead of failing.
  @BuiltValueEnumConst(wireName: 'unknown')
  static const OAuthErrorCode unknown = _$unknown;

  /// The user-facing description of the error.
  String get description {
    switch (this) {
      case OAuthErrorCode.accessDenied:
        return 'The resource owner or authorization server denied the request.';
      case OAuthErrorCode.invalidRequest:
        return 'The request is missing a required parameter, includes an '
            'invalid parameter value, includes a parameter more than once, or '
            'is otherwise malformed.';
      case OAuthErrorCode.invalidScope:
        return 'The requested scope is invalid, unknown, or malformed.';
      case OAuthErrorCode.serverError:
        return 'The authorization server encountered an unexpected condition '
            'that prevented it from fulfilling the request.';
      case OAuthErrorCode.temporarilyUnavailable:
        return 'The authorization server is currently unable to handle the '
            'request due to a temporary overloading or maintenance of the '
            'server.';
      case OAuthErrorCode.unauthorizedClient:
        return 'The client is not authorized to request an authorization code '
            'using this method.';
      case OAuthErrorCode.unsupportedResponseType:
        return 'The authorization server does not support obtaining an '
            'authorization code using this method.';
      case OAuthErrorCode.userCancelledAuthorize:
        return 'The user cancelled the sign-in flow.';
      case OAuthErrorCode.accountSelectionRequired:
      case OAuthErrorCode.consentRequired:
      case OAuthErrorCode.interactionRequired:
      case OAuthErrorCode.invalidRequestObject:
      case OAuthErrorCode.invalidRequestUri:
      case OAuthErrorCode.loginRequired:
      case OAuthErrorCode.registrationUriNotSupported:
      case OAuthErrorCode.requestNotSupported:
      case OAuthErrorCode.requestUriNotSupported:
      case OAuthErrorCode.unknown:
        return 'An unknown error occurred.';
    }
    throw ArgumentError('Invalid code: $this');
  }

  /// All [OAuthErrorCode] values.
  static BuiltSet<OAuthErrorCode> get values => _$values;

  /// The [OAuthErrorCode] value for [name].
  static OAuthErrorCode valueOf(String name) => _$valueOf(name);

  /// The [OAuthErrorCode] serializer.
  ///
  /// Note: [oauthSerializers] overrides this with
  /// [_OAuthErrorCodeSerializer], which tolerates unrecognized error codes.
  static Serializer<OAuthErrorCode> get serializer =>
      _$oAuthErrorCodeSerializer;
}

/// {@template amplify_auth_cognito.oauth_error_code_serializer}
/// Serializer for [OAuthErrorCode] which deserializes unrecognized error codes
/// to [OAuthErrorCode.unknown] instead of throwing.
///
/// Amazon Cognito relays error codes from external identity providers verbatim,
/// e.g. `user_cancelled_authorize` from Sign in with Apple, so the set of codes
/// which may be received is open-ended. Failing to deserialize them would
/// surface as an unrecoverable error instead of an [AuthException].
/// {@endtemplate}
class _OAuthErrorCodeSerializer implements PrimitiveSerializer<OAuthErrorCode> {
  /// {@macro amplify_auth_cognito.oauth_error_code_serializer}
  const _OAuthErrorCodeSerializer();

  /// The generated serializer, which throws for unrecognized codes.
  static PrimitiveSerializer<OAuthErrorCode> get _generated =>
      _$oAuthErrorCodeSerializer as PrimitiveSerializer<OAuthErrorCode>;

  @override
  Iterable<Type> get types => const [OAuthErrorCode];

  @override
  String get wireName => 'OAuthErrorCode';

  @override
  Object serialize(
    Serializers serializers,
    OAuthErrorCode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _generated.serialize(serializers, object, specifiedType: specifiedType);

  @override
  OAuthErrorCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    try {
      return _generated.deserialize(
        serializers,
        serialized,
        specifiedType: specifiedType,
      );
    } on ArgumentError {
      return OAuthErrorCode.unknown;
    }
  }
}

/// {@template amplify_auth_cognito.oauth_parameters}
/// Query parameters of the OAuth redirect.
///
/// [Reference](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1.2)
/// {@endtemplate}
abstract class OAuthParameters
    implements Built<OAuthParameters, OAuthParametersBuilder> {
  /// {@macro amplify_auth_cognito.oauth_parameters}
  factory OAuthParameters([void Function(OAuthParametersBuilder) updates]) =
      _$OAuthParameters;
  OAuthParameters._();

  /// Parses [json] into an [OAuthParameters] object.
  factory OAuthParameters.fromJson(Map<String, Object?> json) {
    json = json.map((key, value) {
      return MapEntry(
        key,
        // On some platforms, these are still encoded at this point.
        value is String ? Uri.decodeQueryComponent(value) : '',
      );
    });
    final parameters =
        oauthSerializers.deserializeWith(serializer, json) as OAuthParameters;

    // Unrecognized error codes are deserialized as [OAuthErrorCode.unknown].
    // Retain the raw code so that it is not lost when no description was
    // provided by the authorization server.
    final rawError = json['error'];
    if (parameters.error == OAuthErrorCode.unknown &&
        parameters.errorDescription == null &&
        rawError is String) {
      return parameters.rebuild((b) => b.errorDescription = rawError);
    }

    return parameters;
  }

  /// Parses OAuth parameters from a [uri].
  static OAuthParameters? fromUri(Uri uri) {
    final parameters = {...uri.queryParameters};

    // Handle fragment as well e.g. /#/auth?code=...&state=...
    final fragment = uri.fragment;
    final parts = fragment.split('?');
    if (parts.length == 2) {
      parameters.addAll(Uri.splitQueryString(parts[1]));
    }

    // Only a redirect if it contains this combination of parameters.
    // https://www.rfc-editor.org/rfc/rfc6749#section-4.1.2
    // https://www.rfc-editor.org/rfc/rfc6749#section-4.1.3
    if (parameters.containsKey('state') &&
        (parameters.containsKey('code') || parameters.containsKey('error'))) {
      return OAuthParameters.fromJson(parameters);
    }
    return null;
  }

  @BuiltValueHook(finalizeBuilder: true)
  static void _finalize(OAuthParametersBuilder b) {
    if ((b.code == null && b.error == null) || b.state == null) {
      throw const InvalidStateException('Invalid OAuth response');
    }
  }

  /// The exact state parameter received from the client.
  ///
  /// Required for all responses.
  String get state;

  /// REQUIRED. The authorization code generated by the authorization server.
  ///
  /// The authorization code MUST expire shortly after it is issued to mitigate
  /// the risk of leaks. A maximum authorization code lifetime of 10 minutes is
  /// RECOMMENDED. The client MUST NOT use the authorization code more than
  /// once. If an authorization code is used more than once, the authorization
  /// server MUST deny the request and SHOULD revoke (when possible) all tokens
  /// previously issued based on that authorization code. The authorization code
  /// is bound to the client identifier and redirection URI.
  String? get code;

  /// The error parameter.
  ///
  /// **Required** for error responses.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1.2.1)
  OAuthErrorCode? get error;

  /// The error_description parameter.
  ///
  /// **Optional** for error responses.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1.2.1)
  @BuiltValueField(wireName: 'error_description')
  String? get errorDescription;

  /// The error_uri parameter.
  ///
  /// **Optional** for error responses.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1.2.1)
  @BuiltValueField(wireName: 'error_uri')
  String? get errorUri;

  /// The [OAuthParameters] serializer.
  static Serializer<OAuthParameters> get serializer =>
      _$oAuthParametersSerializer;

  /// The JSON representation of `this`.
  Map<String, String> toJson() =>
      (oauthSerializers.serializeWith(serializer, this) as Map).cast();
}

/// Serializers for OAuth flow parameters.
@SerializersFor([OAuthErrorCode, OAuthParameters])
final Serializers oauthSerializers =
    (_$oauthSerializers.toBuilder()
          ..addPlugin(StandardJsonPlugin())
          // Overrides the generated [OAuthErrorCode] serializer, which throws
          // for unrecognized error codes.
          ..add(const _OAuthErrorCodeSerializer()))
        .build();
