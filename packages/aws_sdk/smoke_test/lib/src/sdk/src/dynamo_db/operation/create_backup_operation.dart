// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.create_backup_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_unavailable_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart';

/// Creates a backup for an existing table.
///
/// Each time you create an on-demand backup, the entire table data is backed up. There is no limit to the number of on-demand backups that can be taken.
///
/// When you create an on-demand backup, a time marker of the request is cataloged, and the backup is created asynchronously, by applying all changes until the time of the request to the last full table snapshot. Backup requests are processed instantaneously and become available for restore within minutes.
///
/// You can call `CreateBackup` at a maximum rate of 50 times per second.
///
/// All backups in DynamoDB work without consuming any provisioned throughput on the table.
///
/// If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to contain all data committed to the table up to 14:24:00, and data committed after 14:26:00 will not be. The backup might contain data modifications made between 14:24:00 and 14:26:00. On-demand backup does not support causal consistency.
///
/// Along with data, the following are also included on the backups:
///
/// *   Global secondary indexes (GSIs)
///
/// *   Local secondary indexes (LSIs)
///
/// *   Streams
///
/// *   Provisioned read and write capacity
class CreateBackupOperation extends _i1.HttpOperation<CreateBackupInput,
    CreateBackupInput, CreateBackupOutput, CreateBackupOutput> {
  /// Creates a backup for an existing table.
  ///
  /// Each time you create an on-demand backup, the entire table data is backed up. There is no limit to the number of on-demand backups that can be taken.
  ///
  /// When you create an on-demand backup, a time marker of the request is cataloged, and the backup is created asynchronously, by applying all changes until the time of the request to the last full table snapshot. Backup requests are processed instantaneously and become available for restore within minutes.
  ///
  /// You can call `CreateBackup` at a maximum rate of 50 times per second.
  ///
  /// All backups in DynamoDB work without consuming any provisioned throughput on the table.
  ///
  /// If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to contain all data committed to the table up to 14:24:00, and data committed after 14:26:00 will not be. The backup might contain data modifications made between 14:24:00 and 14:26:00. On-demand backup does not support causal consistency.
  ///
  /// Along with data, the following are also included on the backups:
  ///
  /// *   Global secondary indexes (GSIs)
  ///
  /// *   Local secondary indexes (LSIs)
  ///
  /// *   Streams
  ///
  /// *   Provisioned read and write capacity
  CreateBackupOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<CreateBackupInput, CreateBackupInput, CreateBackupOutput,
          CreateBackupOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.CreateBackup',
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
  _i1.HttpRequest buildRequest(CreateBackupInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateBackupOutput? output]) => 200;
  @override
  CreateBackupOutput buildOutput(
    CreateBackupOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateBackupOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<BackupInUseException, BackupInUseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'BackupInUseException',
          ),
          _i1.ErrorKind.client,
          BackupInUseException,
          builder: BackupInUseException.fromResponse,
        ),
        _i1.SmithyError<ContinuousBackupsUnavailableException,
            ContinuousBackupsUnavailableException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ContinuousBackupsUnavailableException',
          ),
          _i1.ErrorKind.client,
          ContinuousBackupsUnavailableException,
          builder: ContinuousBackupsUnavailableException.fromResponse,
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
        _i1.SmithyError<TableInUseException, TableInUseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableInUseException',
          ),
          _i1.ErrorKind.client,
          TableInUseException,
          builder: TableInUseException.fromResponse,
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
  String get runtimeTypeName => 'CreateBackup';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateBackupOutput> run(
    CreateBackupInput input, {
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
