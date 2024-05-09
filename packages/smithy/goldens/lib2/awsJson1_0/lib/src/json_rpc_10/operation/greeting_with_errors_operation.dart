// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_0_v2.json_rpc_10.operation.greeting_with_errors_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:aws_json1_0_v2/src/json_rpc_10/common/endpoint_resolver.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/common/serializers.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/complex_error.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/foo_error.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/invalid_greeting.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<
    GreetingWithErrorsInput,
    GreetingWithErrorsInput,
    GreetingWithErrorsOutput,
    GreetingWithErrorsOutput> {
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
      _i1.HttpProtocol<GreetingWithErrorsInput, GreetingWithErrorsInput,
          GreetingWithErrorsOutput, GreetingWithErrorsOutput>> protocols = [
    _i2.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'JsonRpc10.GreetingWithErrors',
            ),
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
  _i1.HttpRequest buildRequest(GreetingWithErrorsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });

  @override
  int successCode([GreetingWithErrorsOutput? output]) => 200;

  @override
  GreetingWithErrorsOutput buildOutput(
    GreetingWithErrorsOutput payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      GreetingWithErrorsOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ComplexError, ComplexError>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json10',
            shape: 'ComplexError',
          ),
          _i1.ErrorKind.client,
          ComplexError,
          builder: ComplexError.fromResponse,
        ),
        _i1.SmithyError<FooError, FooError>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json10',
            shape: 'FooError',
          ),
          _i1.ErrorKind.server,
          FooError,
          builder: FooError.fromResponse,
        ),
        _i1.SmithyError<InvalidGreeting, InvalidGreeting>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json10',
            shape: 'InvalidGreeting',
          ),
          _i1.ErrorKind.client,
          InvalidGreeting,
          builder: InvalidGreeting.fromResponse,
        ),
      ];

  @override
  String get runtimeTypeName => 'GreetingWithErrors';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<GreetingWithErrorsOutput> run(
    GreetingWithErrorsInput input, {
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
