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
      if (T == String) {
        return GraphQLResponse(
            data: data as T, errors: errors); // <T> is implied
      } else {
        throw ApiException(
            'Decoding of the response type provided is currently unsupported',
            recoverySuggestion: "Please provide a Model Type or type 'String'");
      }
    }

    if (request.decodePath == null) {
      throw ApiException('No decodePath found',
          recoverySuggestion: 'Include decodePath when creating a request');
    }

    Map<String, dynamic>? dataJson = json.decode(data);
    if (dataJson == null) {
      throw ApiException(
          'Unable to decode json response, data received was null');
    }

    request.decodePath!.split(".").forEach((element) {
      if (dataJson![element] == null) {
        throw ApiException(
            'decodePath did not match the structure of the JSON response',
            recoverySuggestion:
                'Include decodePath when creating a request that includes a modelType.');
      }
      dataJson = dataJson![element];
    });

    T decodedData = request.modelType!.fromJson(dataJson!) as T;

    return GraphQLResponse<T>(data: decodedData, errors: errors);
  }
}
