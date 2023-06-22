// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.operation.list_tables_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tables_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/list_tables_output.dart'
    as _i3;

/// Returns an array of table names associated with the current account and endpoint. The output from `ListTables` is paginated, with each page returning a maximum of 100 table names.
class ListTablesOperation extends _i1.PaginatedHttpOperation<
    _i2.ListTablesInput,
    _i2.ListTablesInput,
    _i3.ListTablesOutput,
    _i3.ListTablesOutput,
    String,
    int,
    _i4.BuiltList<String>> {
  /// Returns an array of table names associated with the current account and endpoint. The output from `ListTables` is paginated, with each page returning a maximum of 100 table names.
  ListTablesOperation({
    required String region,
    Uri? baseUri,
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ListTablesInput, _i2.ListTablesInput,
          _i3.ListTablesOutput, _i3.ListTablesOutput>> protocols = [
    _i6.AwsJson1_0Protocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.ListTables',
            ),
            _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.dynamoDb,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i6.WithSdkInvocationId(),
            const _i6.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i6.AWSEndpoint _awsEndpoint = _i9.endpointResolver.resolve(
    _i9.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListTablesInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListTablesOutput? output]) => 200;
  @override
  _i3.ListTablesOutput buildOutput(
    _i3.ListTablesOutput payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i3.ListTablesOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i10.InternalServerError, _i10.InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i10.InternalServerError,
          builder: _i10.InternalServerError.fromResponse,
        ),
        _i1.SmithyError<_i11.InvalidEndpointException,
            _i11.InvalidEndpointException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidEndpointException,
          statusCode: 421,
          builder: _i11.InvalidEndpointException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ListTables';
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListTablesOutput> run(
    _i2.ListTablesInput input, {
    _i8.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.ListTablesOutput output) =>
      output.lastEvaluatedTableName;
  @override
  _i4.BuiltList<String> getItems(_i3.ListTablesOutput output) =>
      output.tableNames ?? _i4.BuiltList();
  @override
  _i2.ListTablesInput rebuildInput(
    _i2.ListTablesInput input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.exclusiveStartTableName = token;
        if (pageSize != null) {
          b.limit = pageSize;
        }
      });
}
