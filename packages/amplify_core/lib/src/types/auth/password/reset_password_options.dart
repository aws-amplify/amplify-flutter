// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.reset_password_options}
/// The shared reset password options among all Auth plugins.
/// {@endtemplate}
abstract class ResetPasswordOptions with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.reset_password_options}
  const ResetPasswordOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
