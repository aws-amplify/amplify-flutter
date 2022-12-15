// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_0_v1.json_rpc_10.operation.greeting_with_errors_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_json1_0_v1/src/json_rpc_10/common/endpoint_resolver.dart'
    as _i6;
import 'package:aws_json1_0_v1/src/json_rpc_10/common/serializers.dart' as _i5;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/complex_error.dart' as _i8;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/foo_error.dart' as _i9;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_input.dart'
    as _i2;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_output.dart'
    as _i3;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/invalid_greeting.dart'
    as _i10;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<
    _i2.GreetingWithErrorsInput,
    _i2.GreetingWithErrorsInput,
    _i3.GreetingWithErrorsOutput,
    _i3.GreetingWithErrorsOutput> {
  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
  GreetingWithErrorsOperation({
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
      _i1.HttpProtocol<
          _i2.GreetingWithErrorsInput,
          _i2.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsOutput,
          _i3.GreetingWithErrorsOutput>> protocols = [
    _i4.AwsJson1_0Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'JsonRpc10.GreetingWithErrors',
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.GreetingWithErrorsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GreetingWithErrorsOutput? output]) => 200;
  @override
  _i3.GreetingWithErrorsOutput buildOutput(
    _i3.GreetingWithErrorsOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GreetingWithErrorsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json10',
            shape: 'ComplexError',
          ),
          _i1.ErrorKind.client,
          _i8.ComplexError,
          builder: _i8.ComplexError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json10',
            shape: 'FooError',
          ),
          _i1.ErrorKind.server,
          _i9.FooError,
          builder: _i9.FooError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json10',
            shape: 'InvalidGreeting',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidGreeting,
          builder: _i10.InvalidGreeting.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GreetingWithErrors';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GreetingWithErrorsOutput> run(
    _i2.GreetingWithErrorsInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
