// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_result.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  // TODO(dnys1): Fix generic serialization
  createFactory: false,
)
class SignUpResult
    with
        AWSEquatable<SignUpResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SignUpResult({
    required this.isSignUpComplete,
    required this.nextStep,
    this.userId,
  });

  final bool isSignUpComplete;
  final AuthNextSignUpStep nextStep;

  /// The user ID of the signed-up user.
  final String? userId;

  @override
  List<Object?> get props => [isSignUpComplete, nextStep, userId];

  @override
  String get runtimeTypeName => 'SignUpResult';

  @override
  Map<String, Object?> toJson() => _$SignUpResultToJson(this);
}
