// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

abstract class SignUpOptions with AWSSerializable<Map<String, Object?>> {
  final Map<String, String> userAttributes;

  const SignUpOptions({required this.userAttributes});

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
