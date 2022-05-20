//
// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

@internal
class EndpointConfig with AWSEquatable<EndpointConfig> {
  const EndpointConfig(this.name, this.config);

  final String name;
  final AWSApiConfig config;

  @override
  List<Object?> get props => [name, config];

  /// Gets the host with environment path prefix from Amplify config and combines
  /// with [path] and [queryParameters] to return a full [Uri].
  Uri getUri(String path, Map<String, dynamic>? queryParameters) {
    final parsed = Uri.parse(config.endpoint);
    return parsed.replace(pathSegments: [
      ...parsed.pathSegments,
      path,
    ], queryParameters: queryParameters);
  }
}

@internal
extension AWSApiPluginConfigHelpers on AWSApiPluginConfig {
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
