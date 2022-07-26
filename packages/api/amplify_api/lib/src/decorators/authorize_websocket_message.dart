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

import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../graphql/ws/websocket_message.dart';
import 'authorize_http_request.dart';

/// Takes input websocket message (connection or subscription establisher) and
/// adds authorization headers from auth repo.
@internal
Future<WebSocketSubscriptionRegistrationMessage> authorizeWebSocketMessage(
  WebSocketSubscriptionRegistrationMessage inputMessage,
  AWSApiConfig config,
  AmplifyAuthProviderRepository authRepo,
) async {
  final body = inputMessage.payload?.toJson()['data'];

  final payload = inputMessage.payload as SubscriptionRegistrationPayload?;
  payload?.authorizationHeaders = await generateAuthorizationHeaders(config,
      authRepo: authRepo, body: body as String);
  return inputMessage;
}

@internal
Future<Map<String, String>> generateAuthorizationHeaders(
  AWSApiConfig config, {
  required AmplifyAuthProviderRepository authRepo,
  String body = '{}',
}) async {
  final endpointHost = Uri.parse(config.endpoint).host;
  // Create canonical HTTP request to authorize.
  final maybeConnect = body != '{}' ? '' : '/connect';
  final canonicalHttpRequest =
      http.Request('POST', Uri.parse('${config.endpoint}$maybeConnect'));
  canonicalHttpRequest.headers.addAll({
    AWSHeaders.accept: 'application/json, text/javascript',
    AWSHeaders.contentEncoding: 'amz-1.0',
    AWSHeaders.contentType: 'application/json; charset=UTF-8',
  });
  canonicalHttpRequest.body = body;

  final authorizedHttpRequest = await authorizeHttpRequest(
    canonicalHttpRequest,
    endpointConfig: config,
    authProviderRepo: authRepo,
  );
  return {
    ...authorizedHttpRequest.headers,
    AWSHeaders.host: endpointHost,
  };
}
