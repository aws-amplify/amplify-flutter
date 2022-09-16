// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Sets the 'Content-Type' of headers to match the [HttpPayload] body.
@internal
Map<String, String>? addContentTypeToHeaders(
  Map<String, String>? headers,
  HttpPayload? body,
) {
  final contentType = body?.contentType;
  if (contentType == null) {
    return headers;
  }
  // Create new map to avoid modifying input headers which may be unmodifiable.
  final modifiedHeaders = Map<String, String>.of(headers ?? {});
  modifiedHeaders.putIfAbsent(AWSHeaders.contentType, () => contentType);
  return modifiedHeaders;
}

/// Grabs errors from GraphQL Response. Is used in method channel and Dart first code.
/// TODO(Equartey): Move to Dart first code when method channel GraphQL implementation is removed.
@internal
List<GraphQLResponseError>? deserializeGraphQLResponseErrors(
  Map<String, dynamic> response,
) {
  final errors = response['errors'] as List?;
  if (errors == null || errors.isEmpty) {
    return null;
  }
  return errors
      .cast<Map>()
      .map((message) => GraphQLResponseError.fromJson(
            message.cast<String, dynamic>(),
          ))
      .toList();
}
