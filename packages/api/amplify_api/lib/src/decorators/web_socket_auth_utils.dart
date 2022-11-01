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

@internal
library amplify_api.decorators.web_socket_auth_utils;

import 'dart:convert';

import 'package:amplify_api/src/decorators/authorize_http_request.dart';
import 'package:amplify_api/src/graphql/ws/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

// Constants for header values as noted in https://docs.aws.amazon.com/appsync/latest/devguide/real-time-websocket-client.html.
const _requiredHeaders = {
  AWSHeaders.accept: 'application/json, text/javascript',
  AWSHeaders.contentEncoding: 'amz-1.0',
  AWSHeaders.contentType: 'application/json; charset=utf-8',
};

// AppSync expects "{}" encoded in the URI as the payload during handshake.
const _emptyBody = <String, dynamic>{};

/// Generate a URI for the connection and all subscriptions.
///
/// See https://docs.aws.amazon.com/appsync/latest/devguide/real-time-websocket-client.html#handshake-details-to-establish-the-websocket-connection=
Future<Uri> generateConnectionUri(
  AWSApiConfig config,
  AmplifyAuthProviderRepository authRepo,
) async {
  final authorizationHeaders = await _generateAuthorizationHeaders(
    config,
    isConnectionInit: true,
    authRepo: authRepo,
    body: _emptyBody,
  );
  final encodedAuthHeaders =
      base64.encode(json.encode(authorizationHeaders).codeUnits);
  final endpointUri = Uri.parse(
    config.endpoint.replaceFirst('appsync-api', 'appsync-realtime-api'),
  );
  return Uri(scheme: 'wss', host: endpointUri.host, path: 'graphql').replace(
    queryParameters: <String, String>{
      'header': encodedAuthHeaders,
      'payload': base64.encode(utf8.encode(json.encode(_emptyBody))),
    },
  );
}

/// Generate websocket message with authorized payload to register subscription.
///
/// See https://docs.aws.amazon.com/appsync/latest/devguide/real-time-websocket-client.html#subscription-registration-message
Future<WebSocketSubscriptionRegistrationMessage>
    generateSubscriptionRegistrationMessage<T>(
  AWSApiConfig config, {
  required String id,
  required AmplifyAuthProviderRepository authRepo,
  required GraphQLRequest<T> request,
}) async {
  final body = {'variables': request.variables, 'query': request.document};
  final authorizationHeaders = await _generateAuthorizationHeaders(
    config,
    isConnectionInit: false,
    authRepo: authRepo,
    body: body,
    authorizationMode: request.authorizationMode,
    customHeaders: request.headers,
  );

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
/// If `isConnectionInit` true then headers are formatted like connection URI.
/// Otherwise body will be formatted as subscription registration. This is done by creating
/// a canonical HTTP request that is authorized but never sent. The headers from
/// the HTTP request are reformatted and returned. This logic applies for all auth
/// modes as determined by [authRepo] parameter.
Future<Map<String, String>> _generateAuthorizationHeaders(
  AWSApiConfig config, {
  required bool isConnectionInit,
  required AmplifyAuthProviderRepository authRepo,
  required Map<String, dynamic> body,
  APIAuthorizationType? authorizationMode,
  Map<String, String>? customHeaders,
}) async {
  final endpointHost = Uri.parse(config.endpoint).host;
  // Create canonical HTTP request to authorize but never send.
  //
  // The canonical request URL is a little different depending on if authorizing
  // connection URI or start message (subscription registration).
  final maybeConnect = isConnectionInit ? '/connect' : '';
  final canonicalHttpRequest = AWSStreamedHttpRequest.post(
    Uri.parse('${config.endpoint}$maybeConnect'),
    headers: {
      ...?customHeaders,
      ..._requiredHeaders,
    },
    body: HttpPayload.json(body),
  );
  final authorizedHttpRequest = await authorizeHttpRequest(
    canonicalHttpRequest,
    endpointConfig: config,
    authProviderRepo: authRepo,
    authorizationMode: authorizationMode,
  );

  // Take authorized HTTP headers as map with "host" value added.
  return {
    ...authorizedHttpRequest.headers,
    AWSHeaders.host: endpointHost,
  };
}
