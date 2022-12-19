// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.exception.auth_precondition_exception}
/// Exception raised in the Auth state machine when a precondition for an event
/// was not met.
/// {@endtemplate}
@internal
class AuthPreconditionException extends AuthException
    implements PreconditionException {
  /// {@macro amplify_auth_cognito.exception.auth_precondition_exception}
  const AuthPreconditionException(super.message, {this.shouldEmit = true});

  @override
  String get precondition => message;

  @override
  final bool shouldEmit;

  @override
  String get runtimeTypeName => 'AuthPreconditionException';
}
