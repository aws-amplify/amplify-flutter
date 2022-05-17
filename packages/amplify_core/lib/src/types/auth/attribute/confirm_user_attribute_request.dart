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

import 'user_attribute_key.dart';

/// {@template amplify_common.confirm_user_attribute_request}
/// Encapsulates parameters for a request to confirm a user attribute update.
/// {@endtemplate}
class ConfirmUserAttributeRequest {
  /// The key of the user attribute to update
  final UserAttributeKey userAttributeKey;

  /// The confirmation code the user received after starting the user attribute operation
  final String confirmationCode;

  /// {@macro amplify_common.confirm_user_attribute_request}
  const ConfirmUserAttributeRequest({
    required this.userAttributeKey,
    required this.confirmationCode,
  });

  Map<String, Object?> serializeAsMap() {
    final Map<String, Object?> pendingRequest = <String, dynamic>{};
    pendingRequest['userAttributeKey'] = userAttributeKey.key;
    pendingRequest['confirmationCode'] = confirmationCode;
    return pendingRequest;
  }
}
