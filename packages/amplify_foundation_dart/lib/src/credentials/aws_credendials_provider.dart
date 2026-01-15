// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_foundation_dart.aws_credentials_provider}
/// A provider for AWS credentials.
/// {@endtemplate}
abstract interface class AWSCredentialsProvider<T extends AWSCredentials> {
  /// Resolves and returns AWS credentials.
  Future<T> resolve();
}
