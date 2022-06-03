// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
