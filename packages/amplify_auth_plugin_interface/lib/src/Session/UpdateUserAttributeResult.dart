/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/// Wraps the result of an update user attribute operation.
class UpdateUserAttributeResult {
  /// True if the user attribute has now been updated. False if it has not yet been updated.
  bool isUpdated;

  /// Contains details about the next step in the user attribute update process (or whether the flow is now done).
  AuthNextUpdateAttributeStep nextStep;

  // ignore: public_member_api_docs
  UpdateUserAttributeResult({
    required this.isUpdated,
    required this.nextStep,
  }) {
    this.isUpdated = isUpdated;
    this.nextStep = nextStep;
  }
}
