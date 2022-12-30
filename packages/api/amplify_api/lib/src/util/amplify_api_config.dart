// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
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
  final AWSApiConfig config;

  @override
  List<Object?> get props => [name, config];

  /// Gets the host with environment path prefix from Amplify config and combines
  /// with [path] and [queryParameters] to return a full [Uri].
  Uri getUri({String? path, Map<String, dynamic>? queryParameters}) {
    path = path ?? '';
    final parsed = Uri.parse(config.endpoint);
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
extension AWSApiPluginConfigHelpers on AWSApiPluginConfig {
  /// Finds the first endpoint matching the type and apiName.
  EndpointConfig getEndpoint({
    required EndpointType type,
    String? apiName,
  }) {
    final typeConfigs =
        entries.where((config) => config.value.endpointType == type);
    if (apiName != null) {
      final config = typeConfigs.firstWhere(
        (config) => config.key == apiName,
        orElse: () => throw ApiException(
          'No API endpoint found matching apiName $apiName.',
        ),
      );
      return EndpointConfig(config.key, config.value);
    }
    final onlyConfig = typeConfigs.singleOrNull;
    if (onlyConfig == null) {
      throw const ApiException(
        'Multiple API endpoints defined. Pass apiName parameter to specify '
        'which one to use.',
      );
    }
    return EndpointConfig(onlyConfig.key, onlyConfig.value);
  }
}
