// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.json_protocol.operation.kitchen_sink_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_json1_1_v2/src/json_protocol/common/endpoint_resolver.dart';
import 'package:aws_json1_1_v2/src/json_protocol/common/serializers.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/error_with_members.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/error_without_members.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class KitchenSinkOperation extends _i1
    .HttpOperation<KitchenSink, KitchenSink, KitchenSink, KitchenSink> {
  KitchenSinkOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
          _i1.HttpProtocol<KitchenSink, KitchenSink, KitchenSink, KitchenSink>>
      protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'JsonProtocol.KitchenSinkOperation',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(KitchenSink input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([KitchenSink? output]) => 200;
  @override
  KitchenSink buildOutput(
    KitchenSink payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      KitchenSink.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ErrorWithMembers, ErrorWithMembers>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json',
            shape: 'ErrorWithMembers',
          ),
          _i1.ErrorKind.client,
          ErrorWithMembers,
          builder: ErrorWithMembers.fromResponse,
        ),
        _i1.SmithyError<ErrorWithoutMembers, ErrorWithoutMembers>(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.json',
            shape: 'ErrorWithoutMembers',
          ),
          _i1.ErrorKind.server,
          ErrorWithoutMembers,
          builder: ErrorWithoutMembers.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'KitchenSinkOperation';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<KitchenSink> run(
    KitchenSink input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
