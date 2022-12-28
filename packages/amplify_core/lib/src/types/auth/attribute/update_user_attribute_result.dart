// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
