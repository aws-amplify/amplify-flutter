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

class AuthNextSignInStep extends AuthNextStep
    with AWSEquatable<AuthNextSignInStep>, AWSDebuggable {
  const AuthNextSignInStep({
    super.additionalInfo,
    super.codeDeliveryDetails,
    required this.signInStep,
    this.challengeParameters,
    this.missingAttributes = const [],
  });

  final String signInStep;
  final Map<String, String>? challengeParameters;

  /// Attributes which are required in your backend but have not yet been
  /// provided as part of the sign-in/sign-up flow for this user.
  ///
  /// Values for these attributes should be passed to the next
  /// `Amplify.Auth.confirmSignIn` call.
  final List<UserAttributeKey> missingAttributes;

  @override
  List<Object?> get props => [
        signInStep,
        challengeParameters,
        missingAttributes,
      ];

  @override
  String get runtimeTypeName => 'AuthNextSignInStep';
}
