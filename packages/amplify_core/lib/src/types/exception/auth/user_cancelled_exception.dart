// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.user_cancelled_exception}
/// Exception thrown when a requested operation could not be completed because
/// it was cancelled by the user.
/// {@endtemplate}
class UserCancelledException extends AuthException {
  /// {@macro amplify_core.auth.user_cancelled_exception}
  const UserCancelledException(super.message);

  @override
  String get runtimeTypeName => 'UserCancelledException';
}
