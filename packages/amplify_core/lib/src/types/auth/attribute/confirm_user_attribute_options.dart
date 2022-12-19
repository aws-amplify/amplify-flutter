// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.types.auth.confirm_user_attribute_options}
/// Options passed to a [ConfirmUserAttributeRequest].
/// {@endtemplate}
abstract class ConfirmUserAttributeOptions
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.types.auth.confirm_user_attribute_options}
  const ConfirmUserAttributeOptions();
}
