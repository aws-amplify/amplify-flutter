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

import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_core.auth.sign_out_result}
///
/// See also:
/// - [CognitoCompleteSignOut]
/// - [CognitoFailedSignOut]
/// - [CognitoPartialSignOut]
abstract class CognitoSignOutResult extends SignOutResult
    with AWSEquatable<CognitoSignOutResult> {
  /// {@macro amplify_core.auth.sign_out_result}
  const CognitoSignOutResult._();

  /// {@macro amplify_auth_cognito_dart.model.cognito_complete_sign_out}
  const factory CognitoSignOutResult.complete() = CognitoCompleteSignOut._;

  /// {@macro amplify_auth_cognito_dart.model.cognito_failed_sign_out}
  const factory CognitoSignOutResult.failed(AuthException exception) =
      CognitoFailedSignOut._;

  /// {@macro amplify_auth_cognito_dart.model.cognito_partial_sign_out}
  const factory CognitoSignOutResult.partial({
    HostedUiException? hostedUiException,
    GlobalSignOutException? globalSignOutException,
    RevokeTokenException? revokeTokenException,
  }) = CognitoPartialSignOut._;

  /// Whether credentials have been cleared from the local device.
  bool get signedOutLocally;

  @override
  List<Object?> get props => [signedOutLocally];

  @override
  String get runtimeTypeName => 'CognitoSignOutResult';

  @override
  Map<String, Object?> toJson() => {
        'signedOutLocally': signedOutLocally,
      };
}

/// {@template amplify_auth_cognito_dart.model.cognito_complete_sign_out}
/// The result of a call to `Amplify.Auth.signOut`.
/// {@endtemplate}
class CognitoCompleteSignOut extends CognitoSignOutResult {
  /// {@macro amplify_auth_cognito_dart.model.cognito_complete_sign_out}
  const CognitoCompleteSignOut._() : super._();

  @override
  bool get signedOutLocally => true;
}

/// {@template amplify_auth_cognito_dart.model.cognito_failed_sign_out}
/// A sign out which did not complete. The user will remain signed in.
/// {@endtemplate}
class CognitoFailedSignOut extends CognitoSignOutResult {
  /// {@macro amplify_auth_cognito_dart.model.cognito_failed_sign_out}
  const CognitoFailedSignOut._(this.exception) : super._();

  /// The exception that occurred during sign out.
  final AuthException exception;

  @override
  bool get signedOutLocally => false;

  @override
  List<Object?> get props => [exception, signedOutLocally];

  @override
  Map<String, Object?> toJson() => {
        'exception': exception.toString(),
        'signedOutLocally': signedOutLocally,
      };
}

/// {@template amplify_auth_cognito_dart.model.cognito_partial_sign_out}
/// A partial success during sign out where credentials have been cleared
/// from the device.
/// {@endtemplate}
class CognitoPartialSignOut extends CognitoSignOutResult {
  /// {@macro amplify_auth_cognito_dart.model.cognito_partial_sign_out}
  const CognitoPartialSignOut._({
    this.hostedUiException,
    this.globalSignOutException,
    this.revokeTokenException,
  }) : super._();

  /// The exception that occurred during Hosted UI sign out.
  final HostedUiException? hostedUiException;

  /// The exception that occurred during global sign out.
  final GlobalSignOutException? globalSignOutException;

  /// The exception that occurred while revoking the token.
  final RevokeTokenException? revokeTokenException;

  @override
  bool get signedOutLocally => true;

  @override
  List<Object?> get props => [
        hostedUiException,
        globalSignOutException,
        revokeTokenException,
        signedOutLocally
      ];

  @override
  Map<String, Object?> toJson() => {
        'hostedUiException': hostedUiException?.toString(),
        'globalSignOutException': globalSignOutException?.toString(),
        'revokeTokenException': revokeTokenException?.toString(),
        'signedOutLocally': signedOutLocally,
      };
}

/// {@template amplify_auth_cognito_dart.model.signout.hosted_ui_exception}
/// Exception thrown trying to sign out of Hosted UI.
/// {@endtemplate}
class HostedUiException extends AuthException {
  /// {@macro amplify_auth_cognito_dart.model.signout.hosted_ui_exception}
  const HostedUiException({
    super.underlyingException,
  }) : super(
          'Failed to perform Hosted UI sign out',
          recoverySuggestion: 'See underlyingException for more details',
        );
}

/// {@template amplify_auth_cognito_dart.model.signout.global_sign_out_exception}
/// Exception thrown trying to sign out the user globally.
/// {@endtemplate}
class GlobalSignOutException extends AuthException {
  /// {@macro amplify_auth_cognito_dart.model.signout.global_sign_out_exception}
  const GlobalSignOutException({
    required this.accessToken,
    super.underlyingException,
  }) : super(
          'Failed to sign out globally',
          recoverySuggestion: 'See underlyingException for more details',
        );

  /// The access token which failed global sign out.
  ///
  /// Can be used to retry the operation.
  final String accessToken;
}

/// {@template amplify_auth_cognito_dart.model.signout.revoke_token_exception}
/// Exception thrown trying to revoke the user's token.
/// {@endtemplate}
class RevokeTokenException extends AuthException {
  /// {@macro amplify_auth_cognito_dart.model.signout.revoke_token_exception}
  const RevokeTokenException({
    required this.refreshToken,
    super.underlyingException,
  }) : super(
          'Failed to revoke token',
          recoverySuggestion: 'See underlyingException for more details',
        );

  /// The refresh token which failed to revoke.
  ///
  /// Can be used to retry the operation.
  final String refreshToken;
}
