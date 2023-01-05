// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_next_sign_up_step.g.dart';

@zAmplifySerializable
class AuthNextSignUpStep extends AuthNextStep
    with AWSEquatable<AuthNextSignUpStep>, AWSDebuggable {
  const AuthNextSignUpStep({
    super.additionalInfo,
    super.codeDeliveryDetails,
    required this.signUpStep,
  });

  factory AuthNextSignUpStep.fromJson(Map<String, Object?> json) =>
      _$AuthNextSignUpStepFromJson(json);

  final AuthSignUpStep signUpStep;

  @override
  List<Object?> get props => [
        additionalInfo,
        codeDeliveryDetails,
        signUpStep,
      ];

  @override
  String get runtimeTypeName => 'AuthNextSignUpStep';

  @override
  Map<String, Object?> toJson() => _$AuthNextSignUpStepToJson(this);
}
