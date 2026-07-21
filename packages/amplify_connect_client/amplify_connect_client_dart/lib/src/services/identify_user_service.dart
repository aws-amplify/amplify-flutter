// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_connect_client_dart/src/connect_credentials_provider.dart';
import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@template amplify_connect_client.identify_user_service}
/// Sends identify requests to the Customer Profiles endpoint.
///
/// Selects the route and authorization from the resolved [ConnectSession]:
///  - Authenticated: `POST {endpoint}/identify-user` with a bearer token.
///  - Guest: `POST {endpoint}/identify-user-guest`, SigV4-signed for
///    `execute-api` with the guest credentials.
///
/// The HTTP client is injectable so tests can supply a `MockAWSHttpClient`.
/// {@endtemplate}
class IdentifyUserService {
  /// {@macro amplify_connect_client.identify_user_service}
  IdentifyUserService({
    required String endpoint,
    required String region,
    AWSHttpClient? httpClient,
  }) : _endpoint = endpoint,
       _region = region,
       _httpClient = httpClient;

  /// Path of the authenticated (Cognito user-pool) identify route.
  static const identifyUserPath = '/identify-user';

  /// Path of the guest (Identity Pool, SigV4 `execute-api`) identify route.
  static const guestIdentifyUserPath = '/identify-user-guest';

  // Signing service `execute-api` (this named constant resolves to it).
  static const _service = AWSService.apiGatewayManagementApi;

  final String _endpoint;
  final String _region;
  final AWSHttpClient? _httpClient;

  /// Sends an identify request with [body], authorized per [session].
  ///
  /// Throws [ConnectNotSignedInException] if the session has neither a token
  /// nor guest credentials, [ConnectNetworkException] on transport failure, or
  /// a typed exception for a non-2xx response.
  Future<void> identify({
    required ConnectSession session,
    required Map<String, dynamic> body,
  }) async {
    final payload = utf8.encode(jsonEncode(body));

    final AWSBaseHttpRequest request;
    if (session.isAuthenticated) {
      request = AWSHttpRequest(
        method: AWSHttpMethod.post,
        uri: Uri.parse('$_endpoint$identifyUserPath'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${session.accessToken}',
        },
        body: payload,
      );
    } else {
      final credentials = session.credentials;
      if (credentials == null) {
        throw const ConnectNotSignedInException();
      }
      final signer = AWSSigV4Signer(
        credentialsProvider: AWSCredentialsProvider(credentials),
      );
      final unsigned = AWSHttpRequest(
        method: AWSHttpMethod.post,
        uri: Uri.parse('$_endpoint$guestIdentifyUserPath'),
        headers: const {'Content-Type': 'application/json'},
        body: payload,
      );
      try {
        request = await signer.sign(
          unsigned,
          credentialScope: AWSCredentialScope(
            region: _region,
            service: _service,
          ),
        );
      } on Exception catch (e) {
        throw ConnectServiceException(
          detail: 'Failed to sign the guest request.',
          cause: e,
        );
      }
    }

    final int statusCode;
    final String responseBody;
    try {
      final operation = request.send(client: _httpClient);
      final response = await operation.response;
      statusCode = response.statusCode;
      responseBody = await response.decodeBody();
    } on Exception catch (e) {
      throw ConnectNetworkException(cause: e);
    }

    if (statusCode < 200 || statusCode >= 300) {
      throw connectExceptionFromResponse(statusCode, _decode(responseBody));
    }
  }

  static Map<String, dynamic> _decode(String body) {
    if (body.isEmpty) return const {};
    try {
      final decoded = jsonDecode(body);
      return decoded is Map<String, dynamic> ? decoded : const {};
    } on FormatException {
      return const {};
    }
  }
}
