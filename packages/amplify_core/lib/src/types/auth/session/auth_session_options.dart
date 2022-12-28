// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

abstract class AuthSessionOptions with AWSSerializable<Map<String, Object?>> {
  const AuthSessionOptions({
    this.forceRefresh = false,
  });

  /// Whether to force a refresh of the cached credentials.
  ///
  /// When `true`, any cached credentials will be ignored when deciding whether
  /// to refresh them.
  final bool forceRefresh;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
