// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// [AmplifyAuthProvider] implementation that uses `getLatestAuthToken` from
/// user-defined authProvider passed when instantiating the API plugin.
@internal
class OidcFunctionAuthProvider extends TokenAmplifyAuthProvider {
  /// [APIAuthProvider] will simply pass its `getLatestAuthToken` value to "Authorization"
  /// header of authorized HTTP request.
  OidcFunctionAuthProvider(this.authProvider);
  // ignore: public_member_api_docs
  final APIAuthProvider authProvider;

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
