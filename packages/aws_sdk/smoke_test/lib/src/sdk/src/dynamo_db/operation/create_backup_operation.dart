// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.create_backup_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_in_use_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_unavailable_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_backup_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_in_use_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart'
    as _i15;

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
class CreateBackupOperation extends _i1.HttpOperation<_i2.CreateBackupInput,
    _i2.CreateBackupInput, _i3.CreateBackupOutput, _i3.CreateBackupOutput> {
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
      _i1.HttpProtocol<_i2.CreateBackupInput, _i2.CreateBackupInput,
          _i3.CreateBackupOutput, _i3.CreateBackupOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.CreateBackup',
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
  _i1.HttpRequest buildRequest(_i2.CreateBackupInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.CreateBackupOutput? output]) => 200;
  @override
  _i3.CreateBackupOutput buildOutput(
    _i3.CreateBackupOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateBackupOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'BackupInUseException',
          ),
          _i1.ErrorKind.client,
          _i9.BackupInUseException,
          builder: _i9.BackupInUseException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ContinuousBackupsUnavailableException',
          ),
          _i1.ErrorKind.client,
          _i10.ContinuousBackupsUnavailableException,
          builder: _i10.ContinuousBackupsUnavailableException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i11.InternalServerError,
          builder: _i11.InternalServerError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidEndpointException,
          statusCode: 421,
          builder: _i12.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i13.LimitExceededException,
          builder: _i13.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableInUseException',
          ),
          _i1.ErrorKind.client,
          _i14.TableInUseException,
          builder: _i14.TableInUseException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i15.TableNotFoundException,
          builder: _i15.TableNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateBackup';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.CreateBackupOutput> run(
    _i2.CreateBackupInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i16.runZoned(
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
