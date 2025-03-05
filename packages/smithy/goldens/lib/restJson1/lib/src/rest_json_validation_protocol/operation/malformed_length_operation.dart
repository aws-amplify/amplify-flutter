// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas,unnecessary_library_name

library rest_json1_v1.rest_json_validation_protocol.operation.malformed_length_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:rest_json1_v1/src/rest_json_validation_protocol/common/endpoint_resolver.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/common/serializers.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/malformed_length_input.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/validation_exception.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

class MalformedLengthOperation
    extends
        _i1.HttpOperation<
          MalformedLengthInput,
          MalformedLengthInput,
          _i1.Unit,
          _i1.Unit
        > {
  MalformedLengthOperation({
    required String region,
    Uri? baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  }) : _region = region,
       _baseUri = baseUri,
       _requestInterceptors = requestInterceptors,
       _responseInterceptors = responseInterceptors;

  @override
  late final List<
    _i1.HttpProtocol<
      MalformedLengthInput,
      MalformedLengthInput,
      _i1.Unit,
      _i1.Unit
    >
  >
  protocols = [
    _i2.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors:
          <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.2'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    ),
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
  _i1.HttpRequest buildRequest(MalformedLengthInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/MalformedLength';
      });

  @override
  int successCode([_i1.Unit? output]) => 200;

  @override
  _i1.Unit buildOutput(_i1.Unit payload, _i3.AWSBaseHttpResponse response) =>
      payload;

  @override
  List<_i1.SmithyError> get errorTypes => const [
    _i1.SmithyError<ValidationException, ValidationException>(
      _i1.ShapeId(namespace: 'smithy.framework', shape: 'ValidationException'),
      _i1.ErrorKind.client,
      ValidationException,
      builder: ValidationException.fromResponse,
    ),
  ];

  @override
  String get runtimeTypeName => 'MalformedLength';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<_i1.Unit> run(
    MalformedLengthInput input, {
    _i3.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i4.runZoned(
      () => super.run(input, client: client, useProtocol: useProtocol),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i3.AWSHeaders.sdkInvocationId: _i3.uuid(secure: true)},
      },
    );
  }
}
