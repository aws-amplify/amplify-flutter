// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'password_policy.g.dart';

/// {@template amplify_core.amplify_outputs.password_policy}
/// The Cognito User Pool password policy.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class PasswordPolicy
    with AWSEquatable<PasswordPolicy>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.password_policy}
  const PasswordPolicy({
    this.minLength,
    this.requireNumbers = false,
    this.requireLowercase = false,
    this.requireUppercase = false,
    this.requireSymbols = false,
  });

  factory PasswordPolicy.fromJson(Map<String, Object?> json) =>
      _$PasswordPolicyFromJson(json);

  /// The min length.
  final int? minLength;

  /// Requires numbers.
  final bool requireNumbers;

  /// Requires lower case.
  final bool requireLowercase;

  /// Requires upper case.
  final bool requireUppercase;

  /// Requires symbols.
  final bool requireSymbols;

  @override
  List<Object?> get props => [
        minLength,
        requireNumbers,
        requireLowercase,
        requireUppercase,
        requireSymbols,
      ];

  @override
  String get runtimeTypeName => 'PasswordPolicy';

  @override
  Object? toJson() {
    return _$PasswordPolicyToJson(this);
  }
}
