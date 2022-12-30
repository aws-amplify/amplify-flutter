// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.update_password_result}
/// The result of an update password request.
/// {@endtemplate}
class UpdatePasswordResult
    with
        AWSEquatable<UpdatePasswordResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_password_result}
  const UpdatePasswordResult();

  @override
  List<Object?> get props => const [];

  @override
  String get runtimeTypeName => 'UpdatePasswordResult';

  @override
  Map<String, Object?> toJson() => const {};
}
