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

/// Cognito extension of [UpdateUserAttributeOptions] to add the platform specific fields
class CognitoUpdateUserAttributeOptions extends UpdateUserAttributeOptions {
  /// Additional custom attributes to be sent to the service such as information about the client
  Map<String, String>? clientMetadata;

  /// Default constructor
  CognitoUpdateUserAttributeOptions({this.clientMetadata}) : super();

  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = {
      if (clientMetadata != null) 'clientMetadata': clientMetadata
    };
    return pendingRequest;
  }
}
