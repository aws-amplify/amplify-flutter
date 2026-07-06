// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_connect_client_dart/src/connect_credentials_provider.dart';
import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

/// The parsed result of a signed Customer Profiles request.
class ConnectHttpResponse {
  /// Creates a response wrapper.
  ConnectHttpResponse(this.statusCode, this.body);

  /// The HTTP status code.
  final int statusCode;

  /// The raw response body.
  final String body;

  /// Whether the status code is in the 2xx range.
  bool get isSuccess => statusCode >= 200 && statusCode < 300;

  /// The response body decoded as a JSON object, or an empty map if the body
  /// is empty or not a JSON object.
  Map<String, dynamic> get json {
    if (body.isEmpty) return const {};
    try {
      final decoded = jsonDecode(body);
      return decoded is Map<String, dynamic> ? decoded : {'raw': decoded};
    } on FormatException {
      return {'raw': body};
    }
  }
}

/// {@template amplify_connect_client.sigv4_client}
/// Signs and sends REST requests to Amazon Connect Customer Profiles using
/// SigV4, resolving fresh credentials before each request.
///
/// The HTTP client is injectable so tests can supply a `MockAWSHttpClient`.
/// {@endtemplate}
class SigV4Client {
  /// {@macro amplify_connect_client.sigv4_client}
  SigV4Client({
    required ConnectCredentialsProvider credentialsProvider,
    required String region,
    AWSHttpClient? httpClient,
  }) : _credentialsProvider = credentialsProvider,
       _region = region,
       _httpClient = httpClient;

  static const _service = AWSService.customerProfiles;

  final ConnectCredentialsProvider _credentialsProvider;
  final String _region;
  final AWSHttpClient? _httpClient;

  /// Signs and sends a request, returning the parsed response.
  ///
  /// Throws [ConnectNetworkException] if the request cannot be sent.
  Future<ConnectHttpResponse> send({
    required AWSHttpMethod method,
    required Uri uri,
    String? body,
  }) async {
    final credentials = await _credentialsProvider.fetchCredentials();
    final signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(credentials.awsCredentials),
    );
    final request = AWSHttpRequest(
      method: method,
      uri: uri,
      headers: const {'Content-Type': 'application/json'},
      body: body != null ? utf8.encode(body) : null,
    );
    final scope = AWSCredentialScope(region: _region, service: _service);

    final AWSSignedRequest signedRequest;
    try {
      signedRequest = await signer.sign(request, credentialScope: scope);
    } on Exception catch (e) {
      throw ConnectNetworkException(cause: e);
    }

    try {
      final operation = signedRequest.send(client: _httpClient);
      final response = await operation.response;
      final responseBody = await response.decodeBody();
      return ConnectHttpResponse(response.statusCode, responseBody);
    } on Exception catch (e) {
      throw ConnectNetworkException(cause: e);
    }
  }
}
