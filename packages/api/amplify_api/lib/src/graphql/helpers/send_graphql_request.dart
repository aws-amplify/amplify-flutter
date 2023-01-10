// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/src/graphql/helpers/graphql_response_decoder.dart';
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
