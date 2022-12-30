// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.resend_user_attribute_confirmation_code_options}
/// The shared resend user attribute confirmation code options among all Auth
/// plugins.
/// {@endtemplate}
abstract class ResendUserAttributeConfirmationCodeOptions
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.resend_user_attribute_confirmation_code_options}
  const ResendUserAttributeConfirmationCodeOptions();

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();
}
