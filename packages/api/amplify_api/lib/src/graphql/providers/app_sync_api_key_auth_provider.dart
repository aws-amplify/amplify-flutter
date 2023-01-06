// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// "X-Api-Key", key used for API key header in API key auth mode.
const xApiKey = 'X-Api-Key';

/// [AmplifyAuthProvider] implementation that puts an API key in the header.
@internal
class AppSyncApiKeyAuthProvider extends ApiKeyAmplifyAuthProvider {
  @override
  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    ApiKeyAuthProviderOptions? options,
  }) async {
    if (options == null) {
      throw const ApiException(
        'Called API key auth provider without passing a valid API key.',
      );
    }
    request.headers.putIfAbsent(xApiKey, () => options.apiKey);
    return request;
  }
}
