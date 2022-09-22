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

/// [AmplifyAuthProvider] implementation that uses `getLatestAuthToken` from
/// user-defined authProvider passed when instantiating the API plugin.
@internal
class OidcFunctionAuthProvider extends TokenAmplifyAuthProvider {
  // ignore: public_member_api_docs
  final APIAuthProvider authProvider;

  /// [APIAuthProvider] will simply pass its `getLatestAuthToken` value to "Authorization"
  /// header of authorized HTTP request.
  OidcFunctionAuthProvider(this.authProvider);

  @override
  Future<String> getLatestAuthToken() async {
    final token = await authProvider.getLatestAuthToken();
    if (token == null) {
      throw const ApiException(
        'No token was returned from getLatestAuthToken in defined authProvider.',
        recoverySuggestion:
            'Ensure defined getLatestAuthToken is returning expected value.',
      );
    }
    return token;
  }
}
