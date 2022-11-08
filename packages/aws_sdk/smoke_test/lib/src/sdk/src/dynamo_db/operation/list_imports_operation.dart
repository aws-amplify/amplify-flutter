// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.list_imports_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_imports_output.dart'
    as _i3;

/// Lists completed imports within the past 90 days.
class ListImportsOperation extends _i1.PaginatedHttpOperation<
    _i2.ListImportsInput,
    _i2.ListImportsInput,
    _i3.ListImportsOutput,
    _i3.ListImportsOutput,
    String,
    int,
    _i3.ListImportsOutput> {
  /// Lists completed imports within the past 90 days.
  ListImportsOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ListImportsInput, _i2.ListImportsInput,
          _i3.ListImportsOutput, _i3.ListImportsOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'DynamoDB_20120810.ListImports',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.dynamoDb,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.ListImportsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListImportsOutput? output]) => 200;
  @override
  _i3.ListImportsOutput buildOutput(
    _i3.ListImportsOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ListImportsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i9.LimitExceededException,
          builder: _i9.LimitExceededException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListImports';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListImportsOutput> run(
    _i2.ListImportsInput input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.ListImportsOutput output) => output.nextToken;
  @override
  _i3.ListImportsOutput getItems(_i3.ListImportsOutput output) => output;
  @override
  _i2.ListImportsInput rebuildInput(
    _i2.ListImportsInput input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        if (pageSize != null) {
          b.pageSize = pageSize;
        }
      });
}
