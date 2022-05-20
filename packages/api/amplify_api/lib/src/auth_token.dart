/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

part of 'method_channel_api.dart';

extension on APIAuthProvider {
  /// Retrieves the latest auth token for [type].
  ///
  /// Any [Exception] is caught and treated as a `null` token.
  Future<String?> get authToken async {
    String? token;
    try {
      token = await getLatestAuthToken();
      // ignore:empty_catches
    } on Exception {}
    return token;
  }
}
