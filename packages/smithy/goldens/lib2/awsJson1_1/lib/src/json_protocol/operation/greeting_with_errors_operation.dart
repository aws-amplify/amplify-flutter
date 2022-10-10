// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.operation.greeting_with_errors_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/common/endpoint_resolver.dart'
    as _i7;
import 'package:aws_json1_1_v2/src/json_protocol/common/serializers.dart'
    as _i5;
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_error.dart'
    as _i8;
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_error.dart' as _i9;
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i2;
import 'package:aws_json1_1_v2/src/json_protocol/model/invalid_greeting.dart'
    as _i10;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
class GreetingWithErrorsOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.GreetingWithErrorsOutput, _i2.GreetingWithErrorsOutput> {
  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
  GreetingWithErrorsOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingWithErrorsOutput,
          _i2.GreetingWithErrorsOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'JsonProtocol.GreetingWithErrors',
        ),
        _i4.WithSigV4(
          region: _region,
          service: _i6.AWSService.iam,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

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
    _i6.AWSStreamedHttpResponse response,
  ) =>
      _i2.GreetingWithErrorsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json',
            shape: 'ComplexError',
          ),
          _i1.ErrorKind.client,
          _i8.ComplexError,
          builder: _i8.ComplexError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json',
            shape: 'FooError',
          ),
          _i1.ErrorKind.server,
          _i9.FooError,
          builder: _i9.FooError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json',
            shape: 'InvalidGreeting',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidGreeting,
          builder: _i10.InvalidGreeting.fromResponse,
        ),
      ];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i11.Future<_i2.GreetingWithErrorsOutput> run(
    _i1.Unit input, {
    _i1.HttpClient? client,
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
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}
