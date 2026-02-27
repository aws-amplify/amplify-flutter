// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as v3;
import 'package:aws_common/aws_common.dart' as v2;

/// {@template amplify_foundation_dart_bridge.v2_credentials_provider_bridge}
/// Bridges a V2 [v2.AWSCredentialsProvider] (from `aws_common`) to a V3
/// [v3.AWSCredentialsProvider] (from `amplify_foundation_dart`).
///
/// This allows consumers who obtain credentials from the existing Amplify
/// Auth plugin (V2) to pass them to V3-based clients without boilerplate.
///
/// ## Usage
///
/// ```dart
/// import 'package:aws_common/aws_common.dart' as v2;
/// import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
///
/// final v2Provider = v2.AWSCredentialsProvider(credentials);
/// final v3Provider = V2CredentialsProviderBridge(v2Provider);
/// ```
/// {@endtemplate}
class V2CredentialsProviderBridge
    implements v3.AWSCredentialsProvider {
  /// {@macro amplify_foundation_dart_bridge.v2_credentials_provider_bridge}
  const V2CredentialsProviderBridge(this._v2Provider);

  final v2.AWSCredentialsProvider _v2Provider;

  @override
  Future<v3.AWSCredentials> resolve() async {
    final creds = await _v2Provider.retrieve();
    if (creds.sessionToken != null) {
      return v3.TemporaryCredentials(
        creds.accessKeyId,
        creds.secretAccessKey,
        creds.sessionToken!,
        creds.expiration ?? DateTime.now().add(const Duration(hours: 1)),
      );
    }
    return v3.StaticCredentials(creds.accessKeyId, creds.secretAccessKey);
  }
}
