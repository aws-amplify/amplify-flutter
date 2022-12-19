// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.types.auth.cognito_confirm_sign_up_options}
/// Options passed to `Amplify.Auth.confirmSignUp`.
/// {@endtemplate}
abstract class ConfirmSignUpOptions with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.types.auth.cognito_confirm_sign_up_options}
  const ConfirmSignUpOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
