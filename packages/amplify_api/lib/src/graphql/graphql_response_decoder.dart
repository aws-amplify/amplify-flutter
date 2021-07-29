import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';

class GraphQLResponseDecoder {
  // Singleton methods/properties
  // usage: GraphQLResponseDecoder.instance;
  GraphQLResponseDecoder._();

  static final GraphQLResponseDecoder _instance = GraphQLResponseDecoder._();

  static GraphQLResponseDecoder get instance => _instance;

  GraphQLResponse<T> decode<T>(
      {required GraphQLRequest request,
      required String data,
      required List<GraphQLResponseError> errors}) {
    // if no ModelType fallback to default
    if (request.modelType == null) {
      return GraphQLResponse<T>(data: data as T, errors: errors);
    }

    if (request.decodePath == null) {
      throw ApiException('No decodePath found',
          recoverySuggestion: 'Include decodePath when creating a request');
    }

    Map<String, dynamic> dataJson = json.decode(data);
    request.decodePath!.split(".").forEach((element) {
      dataJson = dataJson[element];
    });

    T decodedData = request.modelType!.fromJson(dataJson) as T;

    return GraphQLResponse<T>(data: decodedData, errors: errors);
  }
}
