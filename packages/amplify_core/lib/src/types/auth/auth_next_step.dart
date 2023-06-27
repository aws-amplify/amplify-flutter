// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
abstract class AuthNextStep with AWSSerializable<Map<String, Object?>> {
  const AuthNextStep({
    this.codeDeliveryDetails,
    Map<String, String>? additionalInfo,
  }) : additionalInfo = additionalInfo ?? const {};

  final Map<String, String> additionalInfo;
  final AuthCodeDeliveryDetails? codeDeliveryDetails;
}
