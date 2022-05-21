/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'utils.dart';

const _nextToken = 'nextToken';

class GraphQLResponseDecoder {
  // Singleton methods/properties
  // usage: GraphQLResponseDecoder.instance;
  GraphQLResponseDecoder._();

  static final GraphQLResponseDecoder _instance = GraphQLResponseDecoder._();

  static GraphQLResponseDecoder get instance => _instance;

  GraphQLResponse<T> decode<T>(
      {required GraphQLRequest request,
      String? data,
      required List<GraphQLResponseError> errors}) {
    if (data == null) {
      return GraphQLResponse(data: null, errors: errors);
    }
    // If no modelType fallback to default (likely String).
    final modelType = request.modelType;
    if (modelType == null) {
      if (T == String || T == dynamic) {
        return GraphQLResponse(
            data: data as T, errors: errors); // <T> is implied
      } else {
        throw const ApiException(
          'Decoding of the response type provided is currently unsupported',
          recoverySuggestion: "Please provide a Model Type or type 'String'",
        );
      }
    }
    // From here, it appears this is a response that must be parsed into a non-string object.

    if (request.decodePath == null) {
      throw const ApiException(
        'No decodePath found',
        recoverySuggestion: 'Include decodePath when creating a request',
      );
    }

    // Even if the data string is not null, it may be a null value shallow
    // nested in a small JSON object in the `decodePath`. Its structure varies by
    // platform when null. Unpack the JSON object and null check the result along
    // the way. If null at any point, return null response.
    Map<String, dynamic>? dataJson = json.decode(data) as Map<String, dynamic>?;
    if (dataJson == null) {
      return GraphQLResponse(data: null, errors: errors);
    }
    request.decodePath!.split('.').forEach((element) {
      if (!dataJson!.containsKey(element)) {
        throw const ApiException(
          'decodePath did not match the structure of the JSON response',
          recoverySuggestion: 'Include decodePath when creating a request '
              'that includes a modelType.',
        );
      }
      dataJson = (dataJson![element] as Map?)?.cast();
    });
    if (dataJson == null) {
      return GraphQLResponse(data: null, errors: errors);
    }

    // Found a JSON object to represent the model, parse it using model's fromJSON.
    T decodedData;
    final modelSchema = getModelSchemaByModelName(modelType.modelName(), null);
    dataJson = transformAppSyncJsonToModelJson(dataJson!, modelSchema,
        isPaginated: modelType is PaginatedModelType);
    if (modelType is PaginatedModelType) {
      Map<String, dynamic>? filter =
          request.variables['filter'] as Map<String, dynamic>?;
      int? limit = request.variables['limit'] as int?;

      String? resultNextToken = dataJson![_nextToken] as String?;
      dynamic requestForNextResult;
      // If result has nextToken property, prepare a request for the next page of results.
      if (resultNextToken != null) {
        final variablesWithNextToken = <String, dynamic>{
          ...request.variables,
          _nextToken: resultNextToken
        };
        requestForNextResult = GraphQLRequest<T>(
            document: request.document,
            decodePath: request.decodePath,
            variables: variablesWithNextToken,
            modelType: request.modelType);
      }
      decodedData = modelType.fromJson(
        dataJson!,
        limit: limit,
        filter: filter,
        requestForNextResult:
            requestForNextResult as GraphQLRequest<PaginatedResult<Model>>?,
      ) as T;
    } else {
      decodedData = modelType.fromJson(dataJson!) as T;
    }
    return GraphQLResponse<T>(data: decodedData, errors: errors);
  }
}
