// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_next_sign_in_step.g.dart';

@zAmplifyGenericSerializable
class AuthNextSignInStep<Key extends AuthUserAttributeKey> extends AuthNextStep
    with
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49484
        AWSEquatable<AuthNextSignInStep<Key>>,
        AWSDebuggable {
  const AuthNextSignInStep({
    super.additionalInfo,
    super.codeDeliveryDetails,
    required this.signInStep,
    this.missingAttributes = const [],
  });

  factory AuthNextSignInStep.fromJson(
    Map<String, Object?> json,
    Key Function(String) fromJsonKey,
  ) =>
      _$AuthNextSignInStepFromJson<Key>(
        json,
        (key) => fromJsonKey(key as String),
      );

  final AuthSignInStep signInStep;

  /// Attributes which are required in your backend but have not yet been
  /// provided as part of the sign-in/sign-up flow for this user.
  ///
  /// Values for these attributes should be passed to the next
  /// `Amplify.Auth.confirmSignIn` call.
  final List<Key> missingAttributes;

  @override
  List<Object?> get props => [
        signInStep,
        missingAttributes,
      ];

  @override
  String get runtimeTypeName => 'AuthNextSignInStep';

  @override
  Map<String, Object?> toJson() => _$AuthNextSignInStepToJson(
        this,
        (Key key) => key.toJson(),
      );
}
