// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart' as v2;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart' as v3;

/// {@template aws_amazon_firehose.v2_credentials_provider_bridge}
/// Bridges a V2 [v2.AWSCredentialsProvider] (from `amplify_core`) to a V3
/// [v3.AWSCredentialsProvider] (from `amplify_foundation_dart`).
///
/// This allows users who obtain credentials from the existing Amplify Auth
/// plugin (V2) to pass them directly to the Firehose client without
/// boilerplate.
///
/// ## Usage
///
/// ```dart
/// import 'package:amplify_core/amplify_core.dart' as v2;
/// import 'package:aws_amazon_firehose/aws_amazon_firehose.dart';
///
/// // Obtain V2 credentials from Amplify Auth
/// final session = await Amplify.Auth.fetchAuthSession();
/// final v2Provider = v2.AWSCredentialsProvider(session.credentials);
///
/// // Bridge to V3 and pass to the Firehose client
/// final client = AmplifyFirehoseClient(
///   region: 'us-east-1',
///   credentialsProvider: V2CredentialsProviderBridge(v2Provider),
/// );
/// ```
/// {@endtemplate}
class V2CredentialsProviderBridge
    implements v3.AWSCredentialsProvider<v3.AWSCredentials> {
  /// {@macro aws_amazon_firehose.v2_credentials_provider_bridge}
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
