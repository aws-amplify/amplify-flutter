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

import 'dart:async';

import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Transforms an HTTP request according to auth providers that match the endpoint
/// configuration.
@internal
Future<AWSBaseHttpRequest> authorizeHttpRequest(
  AWSBaseHttpRequest request, {
  required AWSApiConfig endpointConfig,
  required AmplifyAuthProviderRepository authProviderRepo,
  APIAuthorizationType? authorizationMode,
}) async {
  if (request.headers.containsKey(AWSHeaders.authorization) ||
      request.headers.containsKey(xApiKey)) {
    return request;
  }
  final authType = authorizationMode ?? endpointConfig.authorizationType;

  switch (authType) {
    case APIAuthorizationType.apiKey:
      final authProvider = _validateAuthProvider(
        authProviderRepo.getAuthProvider(
          APIAuthorizationType.apiKey.authProviderToken,
        ),
        authType,
      );
      final apiKey = endpointConfig.apiKey;
      if (apiKey == null) {
        throw const ApiException(
            'Auth mode is API Key, but no API Key was found in config.');
      }

      final authorizedRequest = await authProvider.authorizeRequest(
        request,
        options: ApiKeyAuthProviderOptions(apiKey),
      );
      return authorizedRequest;
    case APIAuthorizationType.iam:
      final authProvider = _validateAuthProvider(
          authProviderRepo
              .getAuthProvider(APIAuthorizationType.iam.authProviderToken),
          authType);
      final service = endpointConfig.endpointType == EndpointType.graphQL
          ? AWSService.appSync
          : AWSService.apiGatewayManagementApi; // resolves to "execute-api"

      final authorizedRequest = await authProvider.authorizeRequest(
        request,
        options: IamAuthProviderOptions(
          region: endpointConfig.region,
          service: service,
        ),
      );
      return authorizedRequest;
    case APIAuthorizationType.function:
    case APIAuthorizationType.oidc:
    case APIAuthorizationType.userPools:
      final authProvider = _validateAuthProvider(
        authProviderRepo.getAuthProvider(authType.authProviderToken),
        authType,
      );
      final authorizedRequest = await authProvider.authorizeRequest(request);
      return authorizedRequest;
    case APIAuthorizationType.none:
      return request;
  }
}

T _validateAuthProvider<T extends AmplifyAuthProvider>(
    T? authProvider, APIAuthorizationType authType) {
  if (authProvider == null) {
    throw ApiException('No auth provider found for auth mode ${authType.name}.',
        recoverySuggestion: 'Ensure auth plugin correctly configured.');
  }
  return authProvider;
}
