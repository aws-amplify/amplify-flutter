// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

abstract class AuthNextStep with AWSSerializable<Map<String, Object?>> {
  const AuthNextStep({this.codeDeliveryDetails, this.additionalInfo});

  final Map<String, String>? additionalInfo;
  final AuthCodeDeliveryDetails? codeDeliveryDetails;
}
