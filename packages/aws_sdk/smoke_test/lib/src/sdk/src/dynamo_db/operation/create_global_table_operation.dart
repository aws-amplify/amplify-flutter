// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.create_global_table_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_already_exists_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart'
    as _i13;

/// Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided Regions.
///
/// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables.
///
/// If you want to add a new replica table to a global table, each of the following conditions must be true:
///
/// *   The table must have the same primary key as all of the other replicas.
///
/// *   The table must have the same name as all of the other replicas.
///
/// *   The table must have DynamoDB Streams enabled, with the stream containing both the new and the old images of the item.
///
/// *   None of the replica tables in the global table can contain any data.
///
///
/// If global secondary indexes are specified, then the following conditions must also be met:
///
/// *   The global secondary indexes must have the same name.
///
/// *   The global secondary indexes must have the same hash key and sort key (if present).
///
///
/// If local secondary indexes are specified, then the following conditions must also be met:
///
/// *   The local secondary indexes must have the same name.
///
/// *   The local secondary indexes must have the same hash key and sort key (if present).
///
///
/// Write capacity settings should be set consistently across your replica tables and secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the write capacity settings for all of your global tables replicas and indexes.
///
/// If you prefer to manage write capacity settings manually, you should provision equal replicated write capacity units to your replica tables. You should also provision equal replicated write capacity units to matching secondary indexes across your global table.
class CreateGlobalTableOperation extends _i1.HttpOperation<
    _i2.CreateGlobalTableInput,
    _i2.CreateGlobalTableInput,
    _i3.CreateGlobalTableOutput,
    _i3.CreateGlobalTableOutput> {
  /// Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided Regions.
  ///
  /// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables.
  ///
  /// If you want to add a new replica table to a global table, each of the following conditions must be true:
  ///
  /// *   The table must have the same primary key as all of the other replicas.
  ///
  /// *   The table must have the same name as all of the other replicas.
  ///
  /// *   The table must have DynamoDB Streams enabled, with the stream containing both the new and the old images of the item.
  ///
  /// *   None of the replica tables in the global table can contain any data.
  ///
  ///
  /// If global secondary indexes are specified, then the following conditions must also be met:
  ///
  /// *   The global secondary indexes must have the same name.
  ///
  /// *   The global secondary indexes must have the same hash key and sort key (if present).
  ///
  ///
  /// If local secondary indexes are specified, then the following conditions must also be met:
  ///
  /// *   The local secondary indexes must have the same name.
  ///
  /// *   The local secondary indexes must have the same hash key and sort key (if present).
  ///
  ///
  /// Write capacity settings should be set consistently across your replica tables and secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the write capacity settings for all of your global tables replicas and indexes.
  ///
  /// If you prefer to manage write capacity settings manually, you should provision equal replicated write capacity units to your replica tables. You should also provision equal replicated write capacity units to matching secondary indexes across your global table.
  CreateGlobalTableOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.CreateGlobalTableInput,
          _i2.CreateGlobalTableInput,
          _i3.CreateGlobalTableOutput,
          _i3.CreateGlobalTableOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'DynamoDB_20120810.CreateGlobalTable',
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
  _i1.HttpRequest buildRequest(_i2.CreateGlobalTableInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.CreateGlobalTableOutput? output]) => 200;
  @override
  _i3.CreateGlobalTableOutput buildOutput(
    _i3.CreateGlobalTableOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateGlobalTableOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'GlobalTableAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i9.GlobalTableAlreadyExistsException,
          builder: _i9.GlobalTableAlreadyExistsException.fromResponse,
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
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i12.LimitExceededException,
          builder: _i12.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.TableNotFoundException,
          builder: _i13.TableNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateGlobalTable';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.CreateGlobalTableOutput> run(
    _i2.CreateGlobalTableInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
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
