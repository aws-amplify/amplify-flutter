// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Raw HTTP client for Cognito WebAuthn API operations not covered by
/// the Smithy-generated SDK.
library;

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/model/webauthn/passkey_types.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_exception.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_auth_cognito_dart.sdk.cognito_webauthn_client}
/// Raw HTTP client for Cognito WebAuthn API operations not covered by
/// the Smithy-generated SDK.
///
/// These operations use the AWS JSON 1.1 protocol against the Cognito
/// Identity Provider service endpoint. All operations are access-token
/// authorized (the token is sent in the JSON body, not as a header).
/// {@endtemplate}
class CognitoWebAuthnClient {
  /// {@macro amplify_auth_cognito_dart.sdk.cognito_webauthn_client}
  const CognitoWebAuthnClient({
    required String region,
    required AWSHttpClient httpClient,
    String? endpoint,
  }) : _region = region,
       _httpClient = httpClient,
       _endpoint = endpoint;

  final String _region;
  final AWSHttpClient _httpClient;
  final String? _endpoint;

  /// The service endpoint URI.
  Uri get _endpointUri {
    if (_endpoint != null) {
      final ep = _endpoint;
      return ep.startsWith('http') ? Uri.parse(ep) : Uri.parse('https://$ep');
    }
    return Uri.parse('https://cognito-idp.$_region.amazonaws.com/');
  }

  /// Makes a raw JSON 1.1 request to the Cognito Identity Provider service.
  Future<Map<String, dynamic>> _makeRequest({
    required String target,
    required Map<String, dynamic> body,
  }) async {
    final bodyBytes = utf8.encode(json.encode(body));
    final request = AWSHttpRequest(
      method: AWSHttpMethod.post,
      uri: _endpointUri,
      headers: {
        AWSHeaders.contentType: 'application/x-amz-json-1.1',
        'X-Amz-Target': target,
        AWSHeaders.cacheControl: 'no-store',
      },
      body: bodyBytes,
    );

    final operation = _httpClient.send(request);
    final response = await operation.response;
    final responseBody = await response.decodeBody();

    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (responseBody.isEmpty) {
        return <String, dynamic>{};
      }
      return json.decode(responseBody) as Map<String, dynamic>;
    }

    // Parse error response
    _handleErrorResponse(responseBody);
  }

  /// Parses an error response and throws the appropriate exception.
  Never _handleErrorResponse(String responseBody) {
    Map<String, dynamic>? errorJson;
    try {
      errorJson = json.decode(responseBody) as Map<String, dynamic>;
    } on Object {
      // If we can't parse the error body, throw a generic exception.
      throw UnknownServiceException('Service returned an error: $responseBody');
    }

    final errorType = errorJson['__type'] as String?;
    final message =
        errorJson['message'] as String? ??
        errorJson['Message'] as String? ??
        'An unknown error occurred';

    // Extract the short error type name (may be fully qualified).
    final shortType = (errorType?.contains('#') ?? false)
        ? errorType!.split('#').last
        : errorType;

    throw switch (shortType) {
      'WebAuthnNotEnabledException' => UnknownServiceException(
        message,
        recoverySuggestion:
            'Enable passkeys in your Cognito user pool settings.',
      ),
      'WebAuthnOriginNotAllowedException' => UnknownServiceException(
        message,
        recoverySuggestion:
            'Verify the relying party origin is configured correctly '
            'in your Cognito user pool.',
      ),
      'WebAuthnCredentialNotSupportedException' => UnknownServiceException(
        message,
        recoverySuggestion:
            'The credential type is not supported. Try a different '
            'authenticator.',
      ),
      'WebAuthnChallengeNotFoundException' => UnknownServiceException(
        message,
        recoverySuggestion:
            'The registration challenge has expired. Start the '
            'registration process again.',
      ),
      'WebAuthnClientMismatchException' => UnknownServiceException(
        message,
        recoverySuggestion:
            'The client does not match the one used to start the '
            'registration. Use the same client to complete registration.',
      ),
      'LimitExceededException' => LimitExceededException(message),
      'NotAuthorizedException' => NotAuthorizedServiceException(message),
      'ForbiddenException' => ForbiddenException(message),
      'InternalErrorException' => InternalErrorException(message),
      'InvalidParameterException' => InvalidParameterException(message),
      'ResourceNotFoundException' => ResourceNotFoundException(message),
      'TooManyRequestsException' => TooManyRequestsException(message),
      _ => UnknownServiceException(message),
    };
  }

  /// Starts WebAuthn credential registration by requesting creation options
  /// from Cognito.
  ///
  /// Requires a valid access token from an authenticated user session.
  /// Returns [PasskeyCreateOptions] containing the credential creation
  /// options to pass to the platform WebAuthn API.
  Future<PasskeyCreateOptions> startWebAuthnRegistration({
    required String accessToken,
  }) async {
    final responseJson = await _makeRequest(
      target: 'AWSCognitoIdentityProviderService.StartWebAuthnRegistration',
      body: {'AccessToken': accessToken},
    );

    final credentialCreationOptions =
        responseJson['CredentialCreationOptions'] as Map<String, dynamic>;
    return PasskeyCreateOptions.fromJson(credentialCreationOptions);
  }

  /// Completes WebAuthn credential registration by sending the platform
  /// ceremony result to Cognito.
  ///
  /// [accessToken] must be the same session as [startWebAuthnRegistration].
  /// [credential] is the [PasskeyCreateResult] from the platform ceremony.
  Future<void> completeWebAuthnRegistration({
    required String accessToken,
    required PasskeyCreateResult credential,
  }) async {
    await _makeRequest(
      target: 'AWSCognitoIdentityProviderService.CompleteWebAuthnRegistration',
      body: {'AccessToken': accessToken, 'Credential': credential.toJson()},
    );
  }

  /// Lists WebAuthn credentials registered for the authenticated user.
  ///
  /// Supports pagination via [maxResults] and [nextToken].
  /// Returns a list of credential descriptions and an optional pagination
  /// token.
  Future<ListWebAuthnCredentialsResult> listWebAuthnCredentials({
    required String accessToken,
    int? maxResults,
    String? nextToken,
  }) async {
    final body = <String, dynamic>{'AccessToken': accessToken};
    if (maxResults != null) {
      body['MaxResults'] = maxResults;
    }
    if (nextToken != null) {
      body['NextToken'] = nextToken;
    }

    final responseJson = await _makeRequest(
      target: 'AWSCognitoIdentityProviderService.ListWebAuthnCredentials',
      body: body,
    );

    final credentialsJson = responseJson['Credentials'] as List<dynamic>? ?? [];
    final credentials = credentialsJson
        .map(
          (e) =>
              WebAuthnCredentialDescription.fromJson(e as Map<String, dynamic>),
        )
        .toList();

    return ListWebAuthnCredentialsResult(
      credentials: credentials,
      nextToken: responseJson['NextToken'] as String?,
    );
  }

  /// Deletes a WebAuthn credential from the user's account.
  ///
  /// [credentialId] is the credential ID from [listWebAuthnCredentials].
  Future<void> deleteWebAuthnCredential({
    required String accessToken,
    required String credentialId,
  }) async {
    await _makeRequest(
      target: 'AWSCognitoIdentityProviderService.DeleteWebAuthnCredential',
      body: {'AccessToken': accessToken, 'CredentialId': credentialId},
    );
  }
}

/// Result of listing WebAuthn credentials.
class ListWebAuthnCredentialsResult {
  /// Creates a [ListWebAuthnCredentialsResult].
  const ListWebAuthnCredentialsResult({
    required this.credentials,
    this.nextToken,
  });

  /// The list of WebAuthn credential descriptions.
  final List<WebAuthnCredentialDescription> credentials;

  /// Pagination token for fetching more results, or null if no more.
  final String? nextToken;
}

/// Description of a registered WebAuthn credential.
class WebAuthnCredentialDescription {
  /// Creates a [WebAuthnCredentialDescription].
  const WebAuthnCredentialDescription({
    required this.credentialId,
    required this.relyingPartyId,
    required this.createdAt,
    this.friendlyCredentialName,
    this.authenticatorAttachment,
    this.authenticatorTransports,
  });

  /// Creates a [WebAuthnCredentialDescription] from a JSON map.
  ///
  /// The `CreatedAt` field is expected to be a Unix timestamp in seconds.
  factory WebAuthnCredentialDescription.fromJson(Map<String, dynamic> json) {
    final createdAtValue = json['CreatedAt'];
    final DateTime createdAt;
    if (createdAtValue is num) {
      createdAt = DateTime.fromMillisecondsSinceEpoch(
        (createdAtValue.toDouble() * 1000).toInt(),
        isUtc: true,
      );
    } else {
      createdAt = DateTime.parse(createdAtValue as String);
    }

    return WebAuthnCredentialDescription(
      credentialId: json['CredentialId'] as String,
      relyingPartyId: json['RelyingPartyId'] as String,
      createdAt: createdAt,
      friendlyCredentialName: json['FriendlyCredentialName'] as String?,
      authenticatorAttachment: json['AuthenticatorAttachment'] as String?,
      authenticatorTransports:
          (json['AuthenticatorTransports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );
  }

  /// The credential ID.
  final String credentialId;

  /// The relying party identifier (typically the domain).
  final String relyingPartyId;

  /// The date and time when the credential was created.
  final DateTime createdAt;

  /// The friendly name for the credential, if set.
  final String? friendlyCredentialName;

  /// The authenticator attachment modality (`'platform'` or
  /// `'cross-platform'`).
  final String? authenticatorAttachment;

  /// Transport hints for the credential (e.g. `'internal'`, `'usb'`).
  final List<String>? authenticatorTransports;
}
