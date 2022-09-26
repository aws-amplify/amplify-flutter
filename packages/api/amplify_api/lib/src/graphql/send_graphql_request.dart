/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:convert';

import 'package:amplify_api/src/graphql/graphql_response_decoder.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Converts the [GraphQLRequest] to an HTTP POST request and sends with ///[client].
@internal
GraphQLOperation<T> sendGraphQLRequest<T>({
  required GraphQLRequest<T> request,
  required AWSHttpClient client,
  required Uri uri,
}) {
  final body = {'variables': request.variables, 'query': request.document};
  final graphQLOperation = client.send(
    AWSStreamedHttpRequest.post(
      uri,
      body: HttpPayload.json(body),
      headers: request.headers,
    ),
  );

  return GraphQLOperation(
    graphQLOperation.operation.then(
      (response) async {
        final responseJson = await response.decodeBody();
        final responseBody = json.decode(responseJson);

        if (responseBody is! Map<String, dynamic>) {
          throw ApiException(
            'unable to parse GraphQLResponse from server response which was '
            'not a JSON object: $responseJson',
          );
        }

        return GraphQLResponseDecoder.instance.decode<T>(
          request: request,
          response: responseBody,
        );
      },
      onError: (error, stackTrace) {
        Error.throwWithStackTrace(
          ApiException(
            'unable to send GraphQLRequest to client.',
            underlyingException: error,
          ),
          stackTrace,
        );
      },
    ),
  );
}
