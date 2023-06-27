// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'sign_in_result.g.dart';

/// {@category Auth}
@zAmplifySerializable
class SignInResult
    with
        AWSEquatable<SignInResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SignInResult({
    required this.isSignedIn,
    required this.nextStep,
  });

  factory SignInResult.fromJson(Map<String, Object?> json) =>
      _$SignInResultFromJson(json);

  final bool isSignedIn;
  final AuthNextSignInStep nextStep;

  @override
  List<Object?> get props => [isSignedIn, nextStep];

  @override
  String get runtimeTypeName => 'SignInResult';

  @override
  Map<String, Object?> toJson() => _$SignInResultToJson(this);
}
