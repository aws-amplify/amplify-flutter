// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/auth/attribute/auth_next_update_attribute_step.dart';

/// {@template amplify_core.auth.auth_update_attribute_step}
/// The current step in the attribute update flow.
/// {@endtemplate}
enum AuthUpdateAttributeStep {
  /// Next step is to confirm the attribute update with a code.
  ///
  /// Invoke `Amplify.Auth.confirmUserAttribute` with attribute key and the
  /// confirmation code delivered to the user specified via the
  /// [AuthNextUpdateAttributeStep.codeDeliveryDetails] field.
  confirmAttributeWithCode,

  /// Attribute update is complete and there are no remaining steps.
  done,
}
