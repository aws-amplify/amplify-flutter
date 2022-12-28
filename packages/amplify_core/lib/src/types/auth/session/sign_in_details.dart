// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.sign_in_details}
/// Details about how a user signed in.
///
/// Returned as a member of [AuthUser] from [AuthCategory.getCurrentUser].
/// {@endtemplate}
abstract class SignInDetails with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.auth.sign_in_details}
  const SignInDetails();
}
