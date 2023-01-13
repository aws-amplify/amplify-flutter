// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
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
  final authType = authorizationMode ?? endpointConfig.authorizationType;
  if (request.headers.containsKey(AWSHeaders.authorization) ||
      (request.headers.containsKey(xApiKey) &&
          authType == APIAuthorizationType.apiKey)) {
    return request;
  }

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
          'Auth mode is API Key, but no API Key was found in config.',
        );
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
        authType,
      );
      final isGraphQL = endpointConfig.endpointType == EndpointType.graphQL;
      final service = isGraphQL
          ? AWSService.appSync
          : AWSService.apiGatewayManagementApi; // resolves to "execute-api"
      // Do not sign body for REST to avoid CORS issue on web.
      final serviceConfiguration =
          isGraphQL ? null : const ServiceConfiguration(signBody: false);

      final authorizedRequest = await authProvider.authorizeRequest(
        request,
        options: IamAuthProviderOptions(
          region: endpointConfig.region,
          service: service,
          serviceConfiguration: serviceConfiguration,
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
  T? authProvider,
  APIAuthorizationType authType,
) {
  if (authProvider == null) {
    throw ApiException(
      'No auth provider found for auth mode ${authType.name}.',
      recoverySuggestion: 'Ensure auth plugin correctly configured.',
    );
  }
  return authProvider;
}
