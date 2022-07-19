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

import 'package:amplify_core/src/types/auth/sign_up/auth_next_sign_up_step.dart';
import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

part 'sign_up_result.g.dart';

@zAmplifySerializable
class SignUpResult
    with
        AWSEquatable<SignUpResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SignUpResult({
    required this.isSignUpComplete,
    required this.nextStep,
  });

  factory SignUpResult.fromJson(Map<String, Object?> json) =>
      _$SignUpResultFromJson(json);

  final bool isSignUpComplete;
  final AuthNextSignUpStep nextStep;

  @override
  List<Object?> get props => [isSignUpComplete, nextStep];

  @override
  String get runtimeTypeName => 'SignUpResult';

  @override
  Map<String, Object?> toJson() => _$SignUpResultToJson(this);
}
