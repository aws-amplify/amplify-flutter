// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.operation.greeting_with_errors_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_query_v1/src/query_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/common/serializers.dart' as _i4;
import 'package:aws_query_v1/src/query_protocol/model/complex_error.dart'
    as _i7;
import 'package:aws_query_v1/src/query_protocol/model/custom_code_error.dart'
    as _i8;
import 'package:aws_query_v1/src/query_protocol/model/greeting_with_errors_output.dart'
    as _i2;
import 'package:aws_query_v1/src/query_protocol/model/invalid_greeting.dart'
    as _i9;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error.
class GreetingWithErrorsOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.GreetingWithErrorsOutput, _i2.GreetingWithErrorsOutput> {
  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error.
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
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingWithErrorsOutput,
          _i2.GreetingWithErrorsOutput>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GreetingWithErrors',
      version: '2020-01-08',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'CustomCodeError',
          code: 'Customized',
          httpResponseCode: 402,
        )
      ],
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i2.GreetingWithErrorsOutput? output]) => 200;
  @override
  _i2.GreetingWithErrorsOutput buildOutput(
    _i2.GreetingWithErrorsOutput payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      _i2.GreetingWithErrorsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i7.ComplexError, _i7.ComplexError>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.query',
            shape: 'ComplexError',
          ),
          _i1.ErrorKind.client,
          _i7.ComplexError,
          builder: _i7.ComplexError.fromResponse,
        ),
        _i1.SmithyError<_i8.CustomCodeError, _i8.CustomCodeError>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.query',
            shape: 'CustomCodeError',
          ),
          _i1.ErrorKind.client,
          _i8.CustomCodeError,
          builder: _i8.CustomCodeError.fromResponse,
        ),
        _i1.SmithyError<_i9.InvalidGreeting, _i9.InvalidGreeting>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.query',
            shape: 'InvalidGreeting',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidGreeting,
          builder: _i9.InvalidGreeting.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GreetingWithErrors';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i2.GreetingWithErrorsOutput> run(
    _i1.Unit input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
