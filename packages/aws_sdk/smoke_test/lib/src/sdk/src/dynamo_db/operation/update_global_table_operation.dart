// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.update_global_table_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_not_found_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_already_exists_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_not_found_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_output.dart'
    as _i3;

/// Adds or removes replicas in the specified global table. The global table must already exist to be able to use this operation. Any replica to be added must be empty, have the same name as the global table, have the same key schema, have DynamoDB Streams enabled, and have the same provisioned and maximum write capacity units.
///
/// Although you can use `UpdateGlobalTable` to add replicas and remove replicas in a single request, for simplicity we recommend that you issue separate requests for adding or removing replicas.
///
/// If global secondary indexes are specified, then the following conditions must also be met:
///
/// *   The global secondary indexes must have the same name.
///
/// *   The global secondary indexes must have the same hash key and sort key (if present).
///
/// *   The global secondary indexes must have the same provisioned and maximum write capacity units.
class UpdateGlobalTableOperation extends _i1.HttpOperation<
    _i2.UpdateGlobalTableInput,
    _i2.UpdateGlobalTableInput,
    _i3.UpdateGlobalTableOutput,
    _i3.UpdateGlobalTableOutput> {
  /// Adds or removes replicas in the specified global table. The global table must already exist to be able to use this operation. Any replica to be added must be empty, have the same name as the global table, have the same key schema, have DynamoDB Streams enabled, and have the same provisioned and maximum write capacity units.
  ///
  /// Although you can use `UpdateGlobalTable` to add replicas and remove replicas in a single request, for simplicity we recommend that you issue separate requests for adding or removing replicas.
  ///
  /// If global secondary indexes are specified, then the following conditions must also be met:
  ///
  /// *   The global secondary indexes must have the same name.
  ///
  /// *   The global secondary indexes must have the same hash key and sort key (if present).
  ///
  /// *   The global secondary indexes must have the same provisioned and maximum write capacity units.
  UpdateGlobalTableOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.UpdateGlobalTableInput,
          _i2.UpdateGlobalTableInput,
          _i3.UpdateGlobalTableOutput,
          _i3.UpdateGlobalTableOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.UpdateGlobalTable',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.dynamoDb,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.UpdateGlobalTableInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.UpdateGlobalTableOutput? output]) => 200;
  @override
  _i3.UpdateGlobalTableOutput buildOutput(
    _i3.UpdateGlobalTableOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.UpdateGlobalTableOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'GlobalTableNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i9.GlobalTableNotFoundException,
          builder: _i9.GlobalTableNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i10.InternalServerError,
          builder: _i10.InternalServerError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidEndpointException,
          statusCode: 421,
          builder: _i11.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ReplicaAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i12.ReplicaAlreadyExistsException,
          builder: _i12.ReplicaAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ReplicaNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.ReplicaNotFoundException,
          builder: _i13.ReplicaNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i14.TableNotFoundException,
          builder: _i14.TableNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateGlobalTable';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.UpdateGlobalTableOutput> run(
    _i2.UpdateGlobalTableInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i15.runZoned(
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
