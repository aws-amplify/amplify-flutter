// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.operation.ignore_query_params_in_response_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:rest_json1_v2/src/rest_json_protocol/common/endpoint_resolver.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/ignore_query_params_in_response_output.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// This example ensures that query string bound request parameters are serialized in the body of responses if the structure is used in both the request and response.
class IgnoreQueryParamsInResponseOperation extends _i1.HttpOperation<
    _i1.Unit,
    _i1.Unit,
    IgnoreQueryParamsInResponseOutput,
    IgnoreQueryParamsInResponseOutput> {
  /// This example ensures that query string bound request parameters are serialized in the body of responses if the structure is used in both the request and response.
  IgnoreQueryParamsInResponseOperation({
    required String region,
    Uri? baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, IgnoreQueryParamsInResponseOutput,
          IgnoreQueryParamsInResponseOutput>> protocols = [
    _i2.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i2.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/IgnoreQueryParamsInResponse';
      });

  @override
  int successCode([IgnoreQueryParamsInResponseOutput? output]) => 200;

  @override
  IgnoreQueryParamsInResponseOutput buildOutput(
    IgnoreQueryParamsInResponseOutput payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      IgnoreQueryParamsInResponseOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'IgnoreQueryParamsInResponse';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<IgnoreQueryParamsInResponseOutput> run(
    _i1.Unit input, {
    _i3.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i4.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i3.AWSHeaders.sdkInvocationId: _i3.uuid(secure: true)},
      },
    );
  }
}
