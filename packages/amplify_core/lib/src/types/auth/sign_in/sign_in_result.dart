// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    required this.nextStep,
  });

  factory SignInResult.fromJson(
    Map<String, Object?> json,
    Key Function(String) fromJsonKey,
  ) =>
      SignInResult<Key>(
        isSignedIn: json['isSignedIn'] as bool,
        nextStep: AuthNextSignInStep<Key>.fromJson(
          json['nextStep'] as Map<String, Object?>,
          fromJsonKey,
        ),
      );

  final bool isSignedIn;
  final AuthNextSignInStep<Key> nextStep;

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
