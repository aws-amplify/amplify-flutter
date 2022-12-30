// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.device_not_tracked_exception}
/// Exception thrown when a request is made for a device which is either not
/// currently tracked or previously forgotten.
/// {@endtemplate}
class DeviceNotTrackedException extends AuthException {
  /// {@macro amplify_core.auth.device_not_tracked_exception}
  const DeviceNotTrackedException({
    super.recoverySuggestion,
    super.underlyingException,
  }) : super(
          'This device does not have an id, either it was never tracked or '
          'previously forgotten.',
        );

  @override
  String get runtimeTypeName => 'DeviceNotTrackedException';
}
