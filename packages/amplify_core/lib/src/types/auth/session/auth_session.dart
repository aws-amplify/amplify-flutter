// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
abstract class AuthSession with AWSSerializable<Map<String, Object?>> {
  const AuthSession({
    required this.isSignedIn,
  });

  final bool isSignedIn;
}
