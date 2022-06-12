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
