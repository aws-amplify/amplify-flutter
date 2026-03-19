// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:aws_signature_v4/aws_signature_v4.dart' as sig_v4;

/// {@template amplify_foundation_dart_bridge.smithy_credentials_provider_bridge}
/// Bridges a [foundation.AWSCredentialsProvider] (from
/// `amplify_foundation_dart`) to a [sig_v4.AWSCredentialsProvider] (from
/// `aws_signature_v4`) expected by Smithy-generated SDK clients.
///
/// This allows `amplify_foundation_dart` clients to pass their credentials
/// to Smithy SDK operations without manual conversion.
///
/// ## Usage
///
/// ```dart
/// import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
///
/// final foundationProvider = MyFoundationCredentialsProvider();
/// final smithyProvider = SmithyCredentialsProviderBridge(foundationProvider);
///
/// final kinesisClient = KinesisClient(
///   region: 'us-east-1',
///   credentialsProvider: smithyProvider,
/// );
/// ```
/// {@endtemplate}
final class SmithyCredentialsProviderBridge
    implements sig_v4.AWSCredentialsProvider {
  /// {@macro amplify_foundation_dart_bridge.smithy_credentials_provider_bridge}
  const SmithyCredentialsProviderBridge(this._provider);

  final foundation.AWSCredentialsProvider _provider;

  @override
  String get runtimeTypeName => 'SmithyCredentialsProviderBridge';

  @override
  Future<sig_v4.AWSCredentials> retrieve() async {
    final creds = await _provider.resolve();
    if (creds is foundation.TemporaryCredentials) {
      return sig_v4.AWSCredentials(
        creds.accessKeyId,
        creds.secretAccessKey,
        creds.sessionToken,
        creds.expiration,
      );
    }
    return sig_v4.AWSCredentials(creds.accessKeyId, creds.secretAccessKey);
  }
}
