// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/config/auth/cognito/mfa.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.auth.user_mfa_preference}
/// The MFA preferences for the user.
/// {@endtemplate}
final class UserMfaPreference
    with
        AWSSerializable<Map<String, Object?>>,
        AWSEquatable<UserMfaPreference>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.user_mfa_preference}
  const UserMfaPreference({
    Set<MfaType>? enabled,
    this.preferred,
  }) : enabled = enabled ?? const {};

  /// The enabled MFA methods for the user.
  final Set<MfaType> enabled;

  /// The preferred MFA method of the user.
  ///
  /// This is the method which will automatically be chosen for MFA when
  /// signing in.
  final MfaType? preferred;

  @override
  List<Object?> get props => [enabled, preferred];

  @override
  String get runtimeTypeName => 'UserMfaPreference';

  @override
  Map<String, Object?> toJson() => {
        'enabled': enabled.map((typ) => typ.name.toUpperCase()).toList(),
        'preferred': preferred?.name.toUpperCase(),
      };
}
