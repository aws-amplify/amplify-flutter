// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

const _slash = '/';

/// Allows formatting the URL from the config with new paths/query params.
@internal

// TODO(nikahsn): refactor EndpointConfig to not use AWSApiConfig type
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
    final parsed = Uri.parse(config.endpoint);

    final pathSegments =
        path != null ? [...parsed.pathSegments, ..._getSegments(path)] : null;

    return parsed.replace(
      pathSegments: pathSegments,
      queryParameters: queryParameters,
    );
  }

  /// Splits the path into segments to avoid URI-encoding slashes in path.
  List<String> _getSegments(String path) {
    // Remove leading slashes which are suggested in public documentation.
    // https://docs.amplify.aws/lib/restapi/getting-started/q/platform/flutter/#make-a-post-request
    if (path.startsWith(_slash)) {
      path = path.substring(1);
    }
    return path.split(_slash);
  }
}
