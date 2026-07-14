// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.configuration}
/// Configuration for `AmplifyConnectClient`.
///
/// Points the client at the Customer Profiles identify endpoint (an HTTP API
/// fronting the backend Lambda) and the region used to SigV4-sign guest
/// requests. Credentials are resolved separately from Amplify Auth.
/// {@endtemplate}
@immutable
class ConnectClientConfiguration {
  /// {@macro amplify_connect_client.configuration}
  const ConnectClientConfiguration({
    required this.endpoint,
    required this.region,
  });

  /// Parses the configuration from the `custom.CustomerProfiles` section of a
  /// decoded `amplify_outputs.json` map (the canonical output written by the
  /// backend construct).
  ///
  /// Expects a shape of:
  /// ```json
  /// {
  ///   "custom": {
  ///     "CustomerProfiles": {
  ///       "endpoint": "https://abc123.execute-api.us-east-1.amazonaws.com",
  ///       "region": "us-east-1"
  ///     }
  ///   }
  /// }
  /// ```
  ///
  /// Throws [ConnectConfigurationException] if the section or either required
  /// field is missing.
  factory ConnectClientConfiguration.fromAmplifyOutputs(
    Map<String, dynamic> amplifyOutputs,
  ) {
    final custom = amplifyOutputs['custom'];
    final section = custom is Map<String, dynamic>
        ? custom['CustomerProfiles']
        : null;
    if (section is! Map<String, dynamic>) {
      throw const ConnectConfigurationException(
        'Missing "custom.CustomerProfiles" section in amplify_outputs.',
      );
    }
    final endpoint = section['endpoint'];
    final region = section['region'];
    if (endpoint is! String || endpoint.isEmpty) {
      throw const ConnectConfigurationException(
        'Missing "custom.CustomerProfiles.endpoint" in amplify_outputs.',
      );
    }
    if (region is! String || region.isEmpty) {
      throw const ConnectConfigurationException(
        'Missing "custom.CustomerProfiles.region" in amplify_outputs.',
      );
    }
    return ConnectClientConfiguration(
      endpoint: _trimTrailingSlash(endpoint),
      region: region,
    );
  }

  static String _trimTrailingSlash(String value) =>
      value.endsWith('/') ? value.substring(0, value.length - 1) : value;

  /// The base identify endpoint URL. Clients call `POST {endpoint}/identify-user`
  /// and `POST {endpoint}/identify-user-guest`.
  final String endpoint;

  /// The AWS region used to SigV4-sign guest (`execute-api`) requests.
  final String region;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectClientConfiguration &&
          other.endpoint == endpoint &&
          other.region == region;

  @override
  int get hashCode => Object.hash(endpoint, region);
}
