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
library amplify_auth_cognito_dart.util.credentials_providers;

import 'dart:async';

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito_dart.anonymous_credentials_provider}
/// Creates a credentials provider with no credentials.
/// {@endtemplate}
class AnonymousCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro amplify_auth_cognito_dart.anonymous_credentials_provider}
  const AnonymousCredentialsProvider();

  @override
  FutureOr<AWSCredentials> retrieve() {
    throw Exception();
  }
}

/// {@template amplify_auth_cognito_dart.inline_credentials_provider}
/// Creates a credentials provider using a closure.
/// {@endtemplate}
class InlineCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro amplify_auth_cognito_dart.inline_credentials_provider}
  const InlineCredentialsProvider(this._retrieve);

  final FutureOr<AWSCredentials> Function() _retrieve;

  @override
  FutureOr<AWSCredentials> retrieve() => _retrieve();
}
