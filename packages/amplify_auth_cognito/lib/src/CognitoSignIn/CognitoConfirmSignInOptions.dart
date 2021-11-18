/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoConfirmSignInOptions extends ConfirmSignInOptions {
  final Map<String, String>? clientMetadata;
  final Map<CognitoUserAttributeKey, String>? userAttributes;

  const CognitoConfirmSignInOptions({
    this.clientMetadata,
    this.userAttributes,
  });

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (this.clientMetadata != null) {
      pendingRequest["clientMetadata"] = clientMetadata;
    }
    if (this.userAttributes != null) {
      pendingRequest["userAttributes"] = userAttributes == null
          ? null
          : (Map.of(userAttributes!)..removeWhere((key, value) => key.readOnly))
              .map((attribute, value) => MapEntry(attribute.key, value));
    }
    return pendingRequest;
  }
}
