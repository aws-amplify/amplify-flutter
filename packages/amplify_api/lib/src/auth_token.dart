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

part of '../method_channel_api.dart';

/// {@template auth_token}
/// An authorization token for use by an [APIAuthProvider].
///
/// Helper type for serializing to a [Map].
/// {@endtemplate}
class _AuthToken {
  /// The authorization type this token is valid for.
  final APIAuthorizationType type;

  /// The authorization token, or `null` if unavailable.
  final String? token;

  /// {@macro auth_token}
  const _AuthToken(this.type, this.token);

  /// Returns `this` as a serialized [Map].
  Map<String, dynamic> toMap() => <String, dynamic>{
        'type': type.rawValue,
        'token': token,
      };
}

extension on APIAuthProvider {
  /// Retrieves the latest auth token for [type].
  ///
  /// Any [Exception] is caught and treated as a `null` token.
  Future<String?> get authToken async {
    String? token;
    try {
      token = await getLatestAuthToken();
      //ignore:empty_catches
    } on Exception {}
    return token;
  }
}
