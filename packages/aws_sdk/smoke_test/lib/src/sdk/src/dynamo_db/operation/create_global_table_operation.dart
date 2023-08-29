// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.create_global_table_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_global_table_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart';

/// Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided Regions.
///
/// This operation only applies to [Version 2017.11.29 (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables. We recommend using [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than 2017.11.29 (Legacy). To determine which version you are using, see [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html). To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see [Updating global tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
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
    CreateGlobalTableInput,
    CreateGlobalTableInput,
    CreateGlobalTableOutput,
    CreateGlobalTableOutput> {
  /// Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided Regions.
  ///
  /// This operation only applies to [Version 2017.11.29 (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables. We recommend using [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than 2017.11.29 (Legacy). To determine which version you are using, see [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html). To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see [Updating global tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
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
      _i1.HttpProtocol<CreateGlobalTableInput, CreateGlobalTableInput,
          CreateGlobalTableOutput, CreateGlobalTableOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.CreateGlobalTable',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.dynamoDb,
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
  _i1.HttpRequest buildRequest(CreateGlobalTableInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateGlobalTableOutput? output]) => 200;
  @override
  CreateGlobalTableOutput buildOutput(
    CreateGlobalTableOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateGlobalTableOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<GlobalTableAlreadyExistsException,
            GlobalTableAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'GlobalTableAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          GlobalTableAlreadyExistsException,
          builder: GlobalTableAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError<InternalServerError, InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          InternalServerError,
          builder: InternalServerError.fromResponse,
        ),
        _i1.SmithyError<InvalidEndpointException, InvalidEndpointException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          InvalidEndpointException,
          statusCode: 421,
          builder: InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<TableNotFoundException, TableNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableNotFoundException',
          ),
          _i1.ErrorKind.client,
          TableNotFoundException,
          builder: TableNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateGlobalTable';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateGlobalTableOutput> run(
    CreateGlobalTableInput input, {
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
