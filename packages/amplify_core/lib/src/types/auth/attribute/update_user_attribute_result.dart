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

part 'update_user_attribute_result.g.dart';

/// {@template amplify_core.update_user_attribute_result}
/// Wraps the result of an update user attribute operation.
/// {@endtemplate}
@zAmplifySerializable
class UpdateUserAttributeResult
    with
        AWSEquatable<UpdateUserAttributeResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_user_attribute_result}
  const UpdateUserAttributeResult({
    required this.isUpdated,
    required this.nextStep,
  });

  /// {@macro amplify_core.update_user_attribute_result}
  factory UpdateUserAttributeResult.fromJson(Map<String, Object?> json) =>
      _$UpdateUserAttributeResultFromJson(json);

  /// True if the user attribute has now been updated. False if it has not yet
  /// been updated.
  final bool isUpdated;

  /// Contains details about the next step in the user attribute update process
  /// (or whether the flow is now done).
  final AuthNextUpdateAttributeStep nextStep;

  @override
  List<Object?> get props => [isUpdated, nextStep];

  @override
  String get runtimeTypeName => 'UpdateUserAttributeResult';

  @override
  Map<String, Object?> toJson() => _$UpdateUserAttributeResultToJson(this);
}
