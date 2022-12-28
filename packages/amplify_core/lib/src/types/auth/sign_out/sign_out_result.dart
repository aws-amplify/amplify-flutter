// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.sign_out_result}
/// The result of a call to `Amplify.Auth.signOut`.
/// {@endtemplate}
class SignOutResult with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// {@macro amplify_core.auth.sign_out_result}
  const SignOutResult();

  @override
  String get runtimeTypeName => 'SignOutResult';

  @override
  Map<String, Object?> toJson() => const {};
}
