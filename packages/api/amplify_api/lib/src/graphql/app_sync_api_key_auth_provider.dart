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
          'Called API key auth provider without passing a valid API key.');
    }
    request.headers.putIfAbsent(xApiKey, () => options.apiKey);
    return request;
  }
}
