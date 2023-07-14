// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart' hide AWSApiConfig;
import 'package:meta/meta.dart';

const _slash = '/';

/// Allows formatting the URL from the config with new paths/query params.
@internal
class EndpointConfig with AWSEquatable<EndpointConfig> {
  // ignore: public_member_api_docs
  const EndpointConfig(this.name, this.config);

  /// The key used in the Amplify configuration file for this config entry.
  final String name;

  /// The value in the Amplify configuration file which as config details.
  final AWSApiEndpointConfig config;

  @override
  List<Object?> get props => [name, config];

  /// Gets the host with environment path prefix from Amplify config and combines
  /// with [path] and [queryParameters] to return a full [Uri].
  Uri getUri({String? path, Map<String, dynamic>? queryParameters}) {
    path = path ?? '';
    final parsed = switch (config) {
      AWSApiEndpointConfigApiGateway$(
        value: AWSApiGatewayEndpointConfig(:final endpoint)
      ) =>
        endpoint,
      AWSApiEndpointConfigAppSync$(
        value: AWSAppSyncEndpointConfig(:final endpoint)
      ) =>
        endpoint,
      AWSApiEndpointConfigRest$(
        value: AWSRestEndpointConfig(:final endpoint)
      ) =>
        endpoint,
      _ => throw ArgumentError('Invalid API endpoint: $config'),
    };
    // Remove leading slashes which are suggested in public documentation.
    // https://docs.amplify.aws/lib/restapi/getting-started/q/platform/flutter/#make-a-post-request
    if (path.startsWith(_slash)) {
      path = path.substring(1);
    }
    // Avoid URI-encoding slashes in path from caller.
    final pathSegmentsFromPath = path.split(_slash);
    return parsed.replace(
      pathSegments: [
        ...parsed.pathSegments,
        ...pathSegmentsFromPath,
      ],
      queryParameters: queryParameters,
    );
  }
}

/// Allows getting desired endpoint more easily.
@internal
extension AWSApiPluginConfigHelpers on AWSApiConfig {
  /// Finds the first endpoint matching the type and apiName.
  EndpointConfig getEndpoint({
    required EndpointType type,
    String? apiName,
  }) {
    if (apiName != null) {
      final config = apis[apiName];
      if (config == null || config.endpointType != type) {
        throw ConfigurationError(
          'No API endpoint found matching apiName $apiName.',
        );
      }
      return EndpointConfig(apiName, config);
    }

    final typeConfigs =
        apis.entries.where((entry) => entry.value.endpointType == type);
    final onlyConfig = typeConfigs.singleOrNull;
    if (onlyConfig == null) {
      throw ConfigurationError(
        'Multiple API endpoints defined. Pass apiName parameter to specify '
        'which one to use.',
      );
    }
    return EndpointConfig(onlyConfig.key, onlyConfig.value);
  }
}

/// Helpers for working with [AWSApiEndpointConfig].
@internal
extension AWSApiEndpointConfigHelpers on AWSApiEndpointConfig {
  /// The endpoint type of this.
  EndpointType get endpointType => switch (this) {
        AWSApiEndpointConfigAppSync$ _ => EndpointType.graphQL,
        AWSApiEndpointConfigApiGateway$ _ ||
        AWSApiEndpointConfigRest$ _ =>
          EndpointType.rest,
        _ => throw ArgumentError('Invalid API: $this'),
      };

  /// The default API authorization mode.
  AWSApiAuthorizationMode get defaultAuthorizationMode => switch (this) {
        AWSApiEndpointConfigRest$ _ => const AWSApiAuthorizationMode.none(),
        AWSApiEndpointConfigApiGateway$(
          apiGateway: AWSApiGatewayEndpointConfig(:final authMode)
        ) ||
        AWSApiEndpointConfigAppSync$(
          appSync: AWSAppSyncEndpointConfig(:final authMode)
        ) =>
          authMode,
        _ => throw ArgumentError('Invalid endpoint config: $this'),
      };

  /// The default API authorization type.
  APIAuthorizationType get defaultAuthorizationType =>
      defaultAuthorizationMode.authorizationType;

  /// All the auth modes for the API.
  Iterable<AWSApiAuthorizationMode> get allAuthModes sync* {
    yield defaultAuthorizationMode;
    if (appSync case AWSAppSyncEndpointConfig(:final additionalAuthModes?)) {
      yield* additionalAuthModes;
    }
  }

  /// The API key for the endpoint.
  String? get apiKey {
    for (final authMode in allAuthModes) {
      if (authMode case AWSApiAuthorizationModeApiKey$(:final apiKey)) {
        return apiKey;
      }
    }
    return null;
  }

  /// The endpoint of the API.
  Uri get endpoint => switch (this) {
        AWSApiEndpointConfigAppSync$(
          appSync: AWSAppSyncEndpointConfig(:final endpoint)
        ) ||
        AWSApiEndpointConfigApiGateway$(
          apiGateway: AWSApiGatewayEndpointConfig(:final endpoint)
        ) ||
        AWSApiEndpointConfigRest$(
          rest: AWSRestEndpointConfig(:final endpoint)
        ) =>
          endpoint,
        _ => throw ArgumentError('Invalid endpoint config: $this'),
      };
}

extension on AWSApiAuthorizationMode {
  APIAuthorizationType get authorizationType => switch (this) {
        AWSApiAuthorizationModeNone$ _ => APIAuthorizationType.none,
        AWSApiAuthorizationModeApiKey$ _ => APIAuthorizationType.apiKey,
        AWSApiAuthorizationModeIam$ _ => APIAuthorizationType.iam,
        AWSApiAuthorizationModeUserPools$ _ => APIAuthorizationType.userPools,
        AWSApiAuthorizationModeOidc$ _ => APIAuthorizationType.oidc,
        AWSApiAuthorizationModeFunction$ _ => APIAuthorizationType.function,
        _ => throw ArgumentError('Invalid authorization type: $this'),
      };
}
