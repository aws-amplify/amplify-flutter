// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.update_global_table_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_output.dart';

/// Adds or removes replicas in the specified global table. The global table must already exist to be able to use this operation. Any replica to be added must be empty, have the same name as the global table, have the same key schema, have DynamoDB Streams enabled, and have the same provisioned and maximum write capacity units.
///
/// This operation only applies to [Version 2017.11.29 (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables. We recommend using [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than 2017.11.29 (Legacy). To determine which version you are using, see [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html). To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see [Updating global tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
///
/// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables. If you are using global tables [Version 2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) you can use [DescribeTable](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_DescribeTable.html) instead.
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
    UpdateGlobalTableInput,
    UpdateGlobalTableInput,
    UpdateGlobalTableOutput,
    UpdateGlobalTableOutput> {
  /// Adds or removes replicas in the specified global table. The global table must already exist to be able to use this operation. Any replica to be added must be empty, have the same name as the global table, have the same key schema, have DynamoDB Streams enabled, and have the same provisioned and maximum write capacity units.
  ///
  /// This operation only applies to [Version 2017.11.29 (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables. We recommend using [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than 2017.11.29 (Legacy). To determine which version you are using, see [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html). To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see [Updating global tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
  ///
  /// This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html) of global tables. If you are using global tables [Version 2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) you can use [DescribeTable](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_DescribeTable.html) instead.
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
      _i1.HttpProtocol<UpdateGlobalTableInput, UpdateGlobalTableInput,
          UpdateGlobalTableOutput, UpdateGlobalTableOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.UpdateGlobalTable',
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
  _i1.HttpRequest buildRequest(UpdateGlobalTableInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([UpdateGlobalTableOutput? output]) => 200;
  @override
  UpdateGlobalTableOutput buildOutput(
    UpdateGlobalTableOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      UpdateGlobalTableOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<GlobalTableNotFoundException,
            GlobalTableNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'GlobalTableNotFoundException',
          ),
          _i1.ErrorKind.client,
          GlobalTableNotFoundException,
          builder: GlobalTableNotFoundException.fromResponse,
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
        _i1.SmithyError<ReplicaAlreadyExistsException,
            ReplicaAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ReplicaAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          ReplicaAlreadyExistsException,
          builder: ReplicaAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError<ReplicaNotFoundException, ReplicaNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ReplicaNotFoundException',
          ),
          _i1.ErrorKind.client,
          ReplicaNotFoundException,
          builder: ReplicaNotFoundException.fromResponse,
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
  String get runtimeTypeName => 'UpdateGlobalTable';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<UpdateGlobalTableOutput> run(
    UpdateGlobalTableInput input, {
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
