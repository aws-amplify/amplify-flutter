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
import 'package:json_annotation/json_annotation.dart';

part 'sign_in_result.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  genericArgumentFactories: true,
  // TODO(dnys1): Fix generic serialization
  createFactory: false,
)
class SignInResult<Key extends AuthUserAttributeKey>
    with
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49484
        AWSEquatable<SignInResult<Key>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SignInResult({
    required this.isSignedIn,
    this.nextStep,
  });

  factory SignInResult.fromJson(
    Map<String, Object?> json,
    Key Function(String) fromJsonKey,
  ) =>
      SignInResult<Key>(
        isSignedIn: json['isSignedIn'] as bool,
        nextStep: json['nextStep'] == null
            ? null
            : AuthNextSignInStep<Key>.fromJson(
                json['nextStep'] as Map<String, Object?>,
                fromJsonKey,
              ),
      );

  final bool isSignedIn;
  final AuthNextSignInStep<Key>? nextStep;

  @override
  List<Object?> get props => [isSignedIn, nextStep];

  @override
  String get runtimeTypeName => 'SignInResult';

  @override
  Map<String, Object?> toJson() => _$SignInResultToJson(
        this,
        (Key key) => key.toJson(),
      );
}
