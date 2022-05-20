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

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.device_not_tracked_exception}
/// Exception thrown when a request is made for a device which is either not
/// currently tracked or previously forgotten.
/// {@endtemplate}
class DeviceNotTrackedException extends AuthException {
  /// {@macro amplify_core.auth.device_not_tracked_exception}
  const DeviceNotTrackedException(
      {String? recoverySuggestion, String? underlyingException})
      : super(
          'This device does not have an id, either it was never tracked or previously forgotten.',
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  /// {@macro amplify_core.auth.exception_from_map}
  static DeviceNotTrackedException fromMap(Map map) =>
      DeviceNotTrackedException(
        recoverySuggestion: map['recoverySuggestion'] as String?,
        underlyingException: map['underlyingException'] as String?,
      );
}
