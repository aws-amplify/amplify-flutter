// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.update_user_attributes_options}
/// The shared update user attributes options among all Auth plugins.
/// {@endtemplate}
abstract class UpdateUserAttributesOptions
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.update_user_attributes_options}
  const UpdateUserAttributesOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
