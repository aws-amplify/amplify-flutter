// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_next_sign_in_step.g.dart';

@zAmplifySerializable
class AuthNextSignInStep extends AuthNextStep
    with AWSEquatable<AuthNextSignInStep>, AWSDebuggable {
  const AuthNextSignInStep({
    super.additionalInfo,
    super.codeDeliveryDetails,
    required this.signInStep,
    this.missingAttributes = const [],
    this.allowedMfaTypes,
    this.totpSetupResult,
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

  /// The allowed MFA types.
  ///
  /// This is non-null when the sign-in step requires an MFA method
  /// to be selected ([AuthSignInStep.confirmSignInWithMfaSelection]).
  final Set<MfaType>? allowedMfaTypes;

  /// {@macro amplify_core.auth.totp_secret_code}
  ///
  /// This is non-null when the sign-in step requires association of a TOTP
  /// authenticator ([AuthSignInStep.confirmSignInWithTotpSetup]).
  final TotpSetupResult? totpSetupResult;

  @override
  List<Object?> get props => [
        signInStep,
        missingAttributes,
        allowedMfaTypes,
        totpSetupResult,
      ];

  @override
  String get runtimeTypeName => 'AuthNextSignInStep';

  @override
  Map<String, Object?> toJson() => _$AuthNextSignInStepToJson(this);
}
