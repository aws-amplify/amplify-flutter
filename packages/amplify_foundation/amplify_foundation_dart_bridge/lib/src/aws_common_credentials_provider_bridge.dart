// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:aws_common/aws_common.dart' as common;

/// {@template amplify_foundation_dart_bridge.aws_common_credentials_provider_bridge}
/// Bridges an [common.AWSCredentialsProvider] (from `aws_common`) to a
/// [foundation.AWSCredentialsProvider] (from `amplify_foundation_dart`).
///
/// This allows consumers who obtain credentials from the existing Amplify
/// Auth plugin (`aws_common` types) to pass them to `amplify_foundation_dart`
/// clients without boilerplate.
///
/// ## Usage
///
/// ```dart
/// import 'package:aws_common/aws_common.dart' as common;
/// import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
///
/// final commonProvider = common.AWSCredentialsProvider(credentials);
/// final foundationProvider = AwsCommonCredentialsProviderBridge(commonProvider);
/// ```
/// {@endtemplate}
final class AwsCommonCredentialsProviderBridge
    implements foundation.AWSCredentialsProvider {
  /// {@macro amplify_foundation_dart_bridge.aws_common_credentials_provider_bridge}
  const AwsCommonCredentialsProviderBridge(this._commonProvider);

  final common.AWSCredentialsProvider _commonProvider;

  @override
  Future<foundation.AWSCredentials> resolve() async {
    final creds = await _commonProvider.retrieve();
    final sessionToken = creds.sessionToken;
    final expiration = creds.expiration;

    if (sessionToken != null && expiration == null) {
      throw StateError(
        'Credentials with a session token must include an expiration, '
        'but expiration was null.',
      );
    }
    if (sessionToken == null && expiration != null) {
      throw StateError(
        'Credentials with an expiration must include a session token, '
        'but session token was null.',
      );
    }

    if (sessionToken != null && expiration != null) {
      return foundation.TemporaryCredentials(
        creds.accessKeyId,
        creds.secretAccessKey,
        sessionToken,
        expiration,
      );
    }
    return foundation.StaticCredentials(
      creds.accessKeyId,
      creds.secretAccessKey,
    );
  }
}
