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
