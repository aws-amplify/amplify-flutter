// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_auth_cognito.util.credentials_providers;

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.anonymous_credentials_provider}
/// Creates a credentials provider with no credentials.
/// {@endtemplate}
class AnonymousCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro amplify_auth_cognito.anonymous_credentials_provider}
  const AnonymousCredentialsProvider();

  @override
  FutureOr<AWSCredentials> retrieve() {
    throw const AuthNotAuthorizedException('No credentials available');
  }
}

/// {@template amplify_auth_cognito.inline_credentials_provider}
/// Creates a credentials provider using a closure.
/// {@endtemplate}
class InlineCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro amplify_auth_cognito.inline_credentials_provider}
  const InlineCredentialsProvider(this._retrieve);

  final FutureOr<AWSCredentials> Function() _retrieve;

  @override
  FutureOr<AWSCredentials> retrieve() => _retrieve();
}
