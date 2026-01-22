// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams/src/credentials/credentials.dart';

/// Interface for providing AWS credentials.
///
/// Implement this interface to provide credentials from your authentication
/// provider. The [resolve] method will be called on-demand before signing
/// requests to AWS Kinesis Data Streams.
///
/// This interface is compatible with Amplify Auth's credential providers,
/// allowing you to create adapters that wrap existing providers.
abstract class CredentialsProvider {
  /// Resolves and returns AWS credentials.
  ///
  /// This method is called on-demand before signing requests. It should
  /// return fresh credentials, handling any necessary refresh logic.
  Future<Credentials> resolve();
}
