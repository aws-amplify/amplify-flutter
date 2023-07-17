// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_next_sign_in_step.g.dart';

/// {@category Auth}
@zAmplifySerializable
class AuthNextSignInStep extends AuthNextStep
    with AWSEquatable<AuthNextSignInStep>, AWSDebuggable {
  const AuthNextSignInStep({
    super.additionalInfo,
    super.codeDeliveryDetails,
    required this.signInStep,
    this.missingAttributes = const [],
  });

  factory AuthNextSignInStep.fromJson(Map<String, Object?> json) =>
      _$AuthNextSignInStepFromJson(json);

  final AuthSignInStep signInStep;

  /// Attributes which are required in your backend but have not yet been
  /// provided as part of the sign-in/sign-up flow for this user.
  ///
  /// Values for these attributes should be passed to the next
  /// `Amplify.Auth.confirmSignIn` call.
  final List<AuthUserAttributeKey> missingAttributes;

  @override
  List<Object?> get props => [
        signInStep,
        missingAttributes,
      ];

  @override
  String get runtimeTypeName => 'AuthNextSignInStep';

  @override
  Map<String, Object?> toJson() => _$AuthNextSignInStepToJson(this);
}
