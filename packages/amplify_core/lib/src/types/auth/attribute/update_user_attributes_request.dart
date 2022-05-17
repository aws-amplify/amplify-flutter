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

import 'auth_user_attribute.dart';
import 'update_user_attributes_options.dart';

/// {@template amplify_common.update_user_attributes_request}
/// Encapsulates parameters for a update user attributes operation.
/// {@endtemplate}
class UpdateUserAttributesRequest {
  /// The list of user attribute to update
  final List<AuthUserAttribute> attributes;

  /// Plugin-specific, advanced options such as information about the client
  final UpdateUserAttributesOptions? options;

  /// {@macro amplify_common.update_user_attributes_request}
  const UpdateUserAttributesRequest({
    required this.attributes,
    this.options,
  });

  /// Serialize the object to a map for use over the method channel
  Map<String, Object?> serializeAsMap() => {
        'attributes':
            attributes.map((attribute) => attribute.serializeAsMap()).toList(),
        if (options != null) 'options': options?.serializeAsMap(),
      };
}
