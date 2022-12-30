// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.fetch_user_attributes_options}
/// The shared fetch user attributes options among all Auth plugins.
/// {@endtemplate}
abstract class FetchUserAttributesOptions
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.fetch_user_attributes_options}
  const FetchUserAttributesOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
