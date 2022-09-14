// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.api_gateway.api_gateway_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:rest_json1_v1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i6;
import 'package:rest_json1_v1/src/api_gateway/model/rest_api.dart' as _i5;
import 'package:rest_json1_v1/src/api_gateway/operation/get_rest_apis_operation.dart'
    as _i7;
import 'package:smithy/smithy.dart' as _i3;

class ApiGatewayClient {
  const ApiGatewayClient(
      {required String region,
      Uri? baseUri,
      required _i1.AWSCredentialsProvider credentialsProvider})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final String _region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider _credentialsProvider;

  _i2.Future<_i3.PaginatedResult<_i4.BuiltList<_i5.RestApi>, int>> getRestApis(
      _i6.GetRestApisRequest input,
      {_i3.HttpClient? client}) {
    return _i7.GetRestApisOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .runPaginated(input, client: client);
  }
}
