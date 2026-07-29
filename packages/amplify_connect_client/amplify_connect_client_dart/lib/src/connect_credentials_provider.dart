// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_connect_client.connect_credentials_provider}
/// Resolves the AWS credentials used to SigV4-sign requests to the write
/// endpoint.
///
/// There is a single signed path for every caller: authenticated users sign
/// with their Cognito Identity Pool credentials, guests with guest credentials.
/// The backend derives the principal identity from the signature, so no user
/// identifier is sent on the wire.
///
/// The Flutter wrapper implements this against `Amplify.Auth.fetchAuthSession`.
/// Implementations should throw a `ConnectNotSignedInException` when no
/// credentials can be resolved.
/// {@endtemplate}
abstract interface class ConnectCredentialsProvider {
  /// Resolves AWS credentials for the current caller.
  Future<AWSCredentials> fetchCredentials();
}
