// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@template amplify_connect_client.connect_write_service}
/// Sends the three write requests to the Customer Profiles endpoint.
///
/// Every route is `POST`-ed to the endpoint and SigV4-signed for the
/// `execute-api` service with the caller's AWS credentials (authenticated or
/// guest). The backend derives the principal identity from the signature.
///
/// The HTTP client is injectable so tests can supply a `MockAWSHttpClient`.
/// {@endtemplate}
class ConnectWriteService {
  /// {@macro amplify_connect_client.connect_write_service}
  ConnectWriteService({
    required String endpoint,
    required String region,
    AWSHttpClient? httpClient,
  }) : _endpoint = endpoint,
       _region = region,
       _httpClient = httpClient;

  /// Route that creates or updates the caller's profile.
  static const identifyUserPath = '/identify-user';

  /// Route that registers (upserts) a device.
  static const registerDevicePath = '/register-device';

  /// Route that removes a device.
  static const removeDevicePath = '/remove-device';

  // Signing service `execute-api` (this named constant resolves to it).
  static const _service = AWSService.apiGatewayManagementApi;

  final String _endpoint;
  final String _region;
  final AWSHttpClient? _httpClient;

  /// `POST /identify-user` with `{ userProfile }`.
  Future<void> identifyUser({
    required AWSCredentials credentials,
    required Map<String, dynamic> userProfile,
  }) => _post(credentials, identifyUserPath, {'userProfile': userProfile});

  /// `POST /register-device` with `{ device }`.
  Future<void> registerDevice({
    required AWSCredentials credentials,
    required Map<String, dynamic> device,
  }) => _post(credentials, registerDevicePath, {'device': device});

  /// `POST /remove-device` with `{ deviceId }`.
  Future<void> removeDevice({
    required AWSCredentials credentials,
    required String deviceId,
  }) => _post(credentials, removeDevicePath, {'deviceId': deviceId});

  Future<void> _post(
    AWSCredentials credentials,
    String path,
    Map<String, dynamic> body,
  ) async {
    final payload = utf8.encode(jsonEncode(body));
    final signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(credentials),
    );
    final unsigned = AWSHttpRequest(
      method: AWSHttpMethod.post,
      uri: Uri.parse('$_endpoint$path'),
      headers: const {'Content-Type': 'application/json'},
      body: payload,
    );

    final AWSSignedRequest signed;
    try {
      signed = await signer.sign(
        unsigned,
        credentialScope: AWSCredentialScope(region: _region, service: _service),
      );
    } on Exception catch (e) {
      throw ConnectServiceException(
        detail: 'Failed to sign the request.',
        cause: e,
      );
    }

    final int statusCode;
    final String responseBody;
    try {
      final operation = signed.send(client: _httpClient);
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
