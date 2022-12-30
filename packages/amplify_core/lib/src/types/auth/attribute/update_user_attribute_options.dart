// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.update_user_attribute_options}
/// The shared update user attribute options among all Auth plugins.
/// {@endtemplate}
abstract class UpdateUserAttributeOptions
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.update_user_attribute_options}
  const UpdateUserAttributeOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
