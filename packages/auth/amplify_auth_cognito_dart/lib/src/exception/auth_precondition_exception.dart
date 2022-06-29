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
}
