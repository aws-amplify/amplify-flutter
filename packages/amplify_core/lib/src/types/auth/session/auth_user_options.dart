// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'package:amplify_core/amplify_core.dart';

abstract class AuthUserOptions with AWSSerializable<Map<String, Object?>> {
  const AuthUserOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
