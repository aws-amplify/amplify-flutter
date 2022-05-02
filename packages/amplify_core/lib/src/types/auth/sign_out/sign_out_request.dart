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

import 'package:amplify_core/amplify_core.dart';

/// {@template sign_out_request}
/// Encapsulates parameters for a sign out request
/// {@endtemplate}
class SignOutRequest {
  /// Advanced options for the request
  ///
  /// Can be used to specify global sign out
  SignOutOptions? options;

  /// {@macro sign_out_request}
  SignOutRequest({this.options});

  /// Serialize the object to a map
  Map<String, Object?> serializeAsMap() {
    final Map<String, Object?> pendingRequest = {
      'options': options?.serializeAsMap()
    };
    pendingRequest.removeWhere((_, v) => v == null);
    return pendingRequest;
  }
}
