// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.resend_sign_up_code_options}
/// The shared resend sign up code options among all Auth plugins.
/// {@endtemplate}
abstract class ResendSignUpCodeOptions
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.auth.resend_sign_up_code_options}
  const ResendSignUpCodeOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
