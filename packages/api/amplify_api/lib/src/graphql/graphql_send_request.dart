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

import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../util.dart';
import 'graphql_response_decoder.dart';

@internal
Future<GraphQLResponse<T>> GraphQLSendRequest<T>(
    {required GraphQLRequest<T> request,
    required http.Client client,
    required Uri uri}) async {
  final body = {'variables': request.variables, 'query': request.document};
  final graphQLResponse = await client.post(uri, body: json.encode(body));

  final responseBody = json.decode(graphQLResponse.body);
  if (responseBody is Map<String, dynamic>) {
    final responseData = json.encode(responseBody['data']);

    List<GraphQLResponseError> errors =
        deserializeGraphQLResponseErrors(responseBody);

    return GraphQLResponseDecoder.instance
        .decode<T>(request: request, data: responseData, errors: errors);
  }

  // TEMP
  throw Exception('Bad types');
}
