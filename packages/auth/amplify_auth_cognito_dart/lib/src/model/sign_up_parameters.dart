// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_auth_cognito.model.sign_up_parameters;

import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

part 'sign_up_parameters.g.dart';

/// {@template amplify_auth_cognito.model.sign_up_parameters}
/// Parameters passed to the sign up flow.
/// {@endtemplate}
abstract class SignUpParameters
    implements Built<SignUpParameters, SignUpParametersBuilder> {
  /// {@macro amplify_auth_cognito.model.sign_up_parameters}
  factory SignUpParameters([void Function(SignUpParametersBuilder) updates]) =
      _$SignUpParameters;
  SignUpParameters._();

  /// The new user's username.
  String get username;

  /// The new user's password.
  String get password;
}
