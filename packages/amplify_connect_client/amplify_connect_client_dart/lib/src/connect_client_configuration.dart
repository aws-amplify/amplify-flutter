// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.configuration}
/// Configuration for `AmplifyConnectClient`.
///
/// The client needs only the Customer Profiles domain name and its region.
/// AWS credentials are resolved separately from Amplify Auth (the Cognito
/// Identity Pool), so no API keys or application IDs are required here.
/// {@endtemplate}
@immutable
class ConnectClientConfiguration {
  /// {@macro amplify_connect_client.configuration}
  const ConnectClientConfiguration({
    required this.domainName,
    required this.region,
  });

  /// Parses the configuration from the `connect` section of a decoded
  /// `amplify_outputs.json` map.
  ///
  /// Expects a shape of:
  /// ```json
  /// {
  ///   "connect": {
  ///     "domain_name": "my-profiles-domain",
  ///     "region": "us-east-1"
  ///   }
  /// }
  /// ```
  ///
  /// Throws [ConnectConfigurationException] if the `connect` section or either
  /// required field is missing.
  factory ConnectClientConfiguration.fromAmplifyOutputs(
    Map<String, dynamic> amplifyOutputs,
  ) {
    final connect = amplifyOutputs['connect'];
    if (connect is! Map<String, dynamic>) {
      throw const ConnectConfigurationException(
        'Missing "connect" section in amplify_outputs.',
      );
    }
    final domainName = connect['domain_name'];
    final region = connect['region'];
    if (domainName is! String || domainName.isEmpty) {
      throw const ConnectConfigurationException(
        'Missing "connect.domain_name" in amplify_outputs.',
      );
    }
    if (region is! String || region.isEmpty) {
      throw const ConnectConfigurationException(
        'Missing "connect.region" in amplify_outputs.',
      );
    }
    return ConnectClientConfiguration(domainName: domainName, region: region);
  }

  /// The Customer Profiles domain name that owns the user profiles.
  final String domainName;

  /// The AWS region the Customer Profiles domain lives in (for example
  /// `us-east-1`).
  final String region;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectClientConfiguration &&
          other.domainName == domainName &&
          other.region == region;

  @override
  int get hashCode => Object.hash(domainName, region);
}
