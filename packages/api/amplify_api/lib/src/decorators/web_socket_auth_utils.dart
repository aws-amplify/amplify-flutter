// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../graphql/ws/web_socket_types.dart';
import 'authorize_http_request.dart';

// Constants for header values as noted in https://docs.aws.amazon.com/appsync/latest/devguide/real-time-websocket-client.html.
const _acceptHeaderValue = 'application/json, text/javascript';
const _contentEncodingHeaderValue = 'amz-1.0';
const _contentTypeHeaderValue = 'application/json; charset=UTF-8';

/// Generate a URI for the connection and all subscriptions.
///
/// See https://docs.aws.amazon.com/appsync/latest/devguide/real-time-websocket-client.html#handshake-details-to-establish-the-websocket-connection=
@internal
Future<Uri> generateConnectionUri(
    AWSApiConfig config, AmplifyAuthProviderRepository authRepo) async {
  const body = '{}';
  final authorizationHeaders = await _generateAuthorizationHeaders(config,
      authRepo: authRepo, body: body);
  final encodedAuthHeaders =
      base64.encode(json.encode(authorizationHeaders).codeUnits);
  final endpointUri = Uri.parse(
      config.endpoint.replaceFirst('appsync-api', 'appsync-realtime-api'));
  return Uri(scheme: 'wss', host: endpointUri.host, path: 'graphql')
      .replace(queryParameters: <String, String>{
    'header': encodedAuthHeaders,
    'payload': base64.encode(utf8.encode(body)) // always payload of '{}'
  });
}

/// Generate websocket message with authorized payload to register subscription.
///
/// See https://docs.aws.amazon.com/appsync/latest/devguide/real-time-websocket-client.html#subscription-registration-message
@internal
Future<WebSocketSubscriptionRegistrationMessage>
    generateSubscriptionRegistrationMessage(
  AWSApiConfig config, {
  required String id,
  required AmplifyAuthProviderRepository authRepo,
  required GraphQLRequest request,
}) async {
  final body =
      jsonEncode({'variables': request.variables, 'query': request.document});
  final authorizationHeaders = await _generateAuthorizationHeaders(config,
      authRepo: authRepo, body: body);

  return WebSocketSubscriptionRegistrationMessage(
    id: id,
    payload: SubscriptionRegistrationPayload(
      request: request,
      config: config,
      authorizationHeaders: authorizationHeaders,
    ),
  );
}

/// For either connection URI or subscription registration, authorization headers
/// are formatted correctly to be either encoded into URI query params or subscription
/// registration payload headers.
///
/// If body is "{}" then headers are formatted like connection URI. Any other string
/// for body will be formatted as subscription registration. This is done by creating
/// a canonical HTTP request that is authorized but never sent. The headers from
/// the HTTP request are reformatted and returned. This logic applies for all auth
/// modes as determined by [authRepo] parameter.
Future<Map<String, String>> _generateAuthorizationHeaders(
  AWSApiConfig config, {
  required AmplifyAuthProviderRepository authRepo,
  required String body,
}) async {
  final endpointHost = Uri.parse(config.endpoint).host;
  // Create canonical HTTP request to authorize but never send.
  //
  // The canonical request URL is a little different depending on if connection_init
  // or start (subscription registration).
  final maybeConnect = body != '{}' ? '' : '/connect';
  final canonicalHttpRequest =
      http.Request('POST', Uri.parse('${config.endpoint}$maybeConnect'));
  canonicalHttpRequest.headers.addAll({
    AWSHeaders.accept: _acceptHeaderValue,
    AWSHeaders.contentEncoding: _contentEncodingHeaderValue,
    AWSHeaders.contentType: _contentTypeHeaderValue,
  });
  canonicalHttpRequest.body = body;
  final authorizedHttpRequest = await authorizeHttpRequest(
    canonicalHttpRequest,
    endpointConfig: config,
    authProviderRepo: authRepo,
  );

  // Take authorized HTTP headers as map with "host" value added.
  return {
    ...authorizedHttpRequest.headers,
    AWSHeaders.host: endpointHost,
  };
}
