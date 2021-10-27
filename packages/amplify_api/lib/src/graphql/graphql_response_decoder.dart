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
        throw ApiException(
            'Decoding of the response type provided is currently unsupported',
            recoverySuggestion: "Please provide a Model Type or type 'String'");
      }
    }
    // From here, it appears this is a response that must be parsed into a non-string object.

    if (request.decodePath == null) {
      throw ApiException('No decodePath found',
          recoverySuggestion: 'Include decodePath when creating a request');
    }

    // Even if the data string is not null, it may be a null value shallow
    // nested in a small JSON object in the `decodePath`. Its structure varies by
    // platform when null. Unpack the JSON object and null check the result along
    // the way. If null at any point, return null response.
    Map<String, dynamic>? dataJson = json.decode(data);
    if (dataJson == null) {
      return GraphQLResponse(data: null, errors: errors);
    }
    request.decodePath!.split('.').forEach((element) {
      if (!dataJson!.containsKey(element)) {
        throw ApiException(
            'decodePath did not match the structure of the JSON response',
            recoverySuggestion:
                'Include decodePath when creating a request that includes a modelType.');
      }
      dataJson = dataJson![element];
    });
    if (dataJson == null) {
      return GraphQLResponse(data: null, errors: errors);
    }

    // Found a JSON object to represent the model, parse it using model's fromJSON.
    T decodedData;
    if (modelType is PaginatedModelType) {
      Map<String, dynamic>? filter = request.variables['filter'];
      int? limit = request.variables['limit'];
      decodedData =
          modelType.fromJson(dataJson!, limit: limit, filter: filter) as T;
    } else {
      decodedData = modelType.fromJson(dataJson!) as T;
    }
    return GraphQLResponse<T>(data: decodedData, errors: errors);
  }
}
