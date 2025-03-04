// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_auth_cognito.model.sign_in_parameters;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'sign_in_parameters.g.dart';

/// {@template amplify_auth_cognito.sign_in_parameters}
/// Base class for parameters to a sign-in flow.
/// {@endtemplate}
abstract class SignInParameters
    implements Built<SignInParameters, SignInParametersBuilder> {
  /// {@macro amplify_auth_cognito.sign_in_parameters}
  factory SignInParameters([void Function(SignInParametersBuilder) updates]) =
      _$SignInParameters;
  SignInParameters._();

  /// The username of the user initiating the flow.
  String get username;

  /// The password of the user, if initating an SRP-based flow.
  String? get password;

  /// The `built_value` serializer for [SignInParameters].
  static Serializer<SignInParameters> get serializer =>
      _$signInParametersSerializer;
}
