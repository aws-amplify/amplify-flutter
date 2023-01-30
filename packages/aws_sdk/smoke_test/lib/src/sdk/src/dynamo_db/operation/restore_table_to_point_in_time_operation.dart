// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.restore_table_to_point_in_time_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i17;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_restore_time_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/point_in_time_recovery_unavailable_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_table_to_point_in_time_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_already_exists_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_in_use_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_not_found_exception.dart'
    as _i16;

/// Restores the specified table to the specified point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can restore your table to any point in time during the last 35 days. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.
///
/// When you restore using point in time recovery, DynamoDB restores your table data to the state based on the selected date and time (day:hour:minute:second) to a new table.
///
/// Along with data, the following are also included on the new restored table using point in time recovery:
///
/// *   Global secondary indexes (GSIs)
///
/// *   Local secondary indexes (LSIs)
///
/// *   Provisioned read and write capacity
///
/// *   Encryption settings
///
///     All these settings come from the current settings of the source table at the time of restore.
///
///
/// You must manually set up the following on the restored table:
///
/// *   Auto scaling policies
///
/// *   IAM policies
///
/// *   Amazon CloudWatch metrics and alarms
///
/// *   Tags
///
/// *   Stream settings
///
/// *   Time to Live (TTL) settings
///
/// *   Point in time recovery settings
class RestoreTableToPointInTimeOperation extends _i1.HttpOperation<
    _i2.RestoreTableToPointInTimeInput,
    _i2.RestoreTableToPointInTimeInput,
    _i3.RestoreTableToPointInTimeOutput,
    _i3.RestoreTableToPointInTimeOutput> {
  /// Restores the specified table to the specified point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can restore your table to any point in time during the last 35 days. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.
  ///
  /// When you restore using point in time recovery, DynamoDB restores your table data to the state based on the selected date and time (day:hour:minute:second) to a new table.
  ///
  /// Along with data, the following are also included on the new restored table using point in time recovery:
  ///
  /// *   Global secondary indexes (GSIs)
  ///
  /// *   Local secondary indexes (LSIs)
  ///
  /// *   Provisioned read and write capacity
  ///
  /// *   Encryption settings
  ///
  ///     All these settings come from the current settings of the source table at the time of restore.
  ///
  ///
  /// You must manually set up the following on the restored table:
  ///
  /// *   Auto scaling policies
  ///
  /// *   IAM policies
  ///
  /// *   Amazon CloudWatch metrics and alarms
  ///
  /// *   Tags
  ///
  /// *   Stream settings
  ///
  /// *   Time to Live (TTL) settings
  ///
  /// *   Point in time recovery settings
  RestoreTableToPointInTimeOperation({
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
          _i2.RestoreTableToPointInTimeInput,
          _i2.RestoreTableToPointInTimeInput,
          _i3.RestoreTableToPointInTimeOutput,
          _i3.RestoreTableToPointInTimeOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.RestoreTableToPointInTime',
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
  _i1.HttpRequest buildRequest(_i2.RestoreTableToPointInTimeInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.RestoreTableToPointInTimeOutput? output]) => 200;
  @override
  _i3.RestoreTableToPointInTimeOutput buildOutput(
    _i3.RestoreTableToPointInTimeOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.RestoreTableToPointInTimeOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i9.InternalServerError,
          builder: _i9.InternalServerError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidEndpointException,
          statusCode: 421,
          builder: _i10.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidRestoreTimeException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidRestoreTimeException,
          builder: _i11.InvalidRestoreTimeException.fromResponse,
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
            shape: 'PointInTimeRecoveryUnavailableException',
          ),
          _i1.ErrorKind.client,
          _i13.PointInTimeRecoveryUnavailableException,
          builder: _i13.PointInTimeRecoveryUnavailableException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i14.TableAlreadyExistsException,
          builder: _i14.TableAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableInUseException',
          ),
          _i1.ErrorKind.client,
          _i15.TableInUseException,
          builder: _i15.TableInUseException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TableNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i16.TableNotFoundException,
          builder: _i16.TableNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'RestoreTableToPointInTime';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.RestoreTableToPointInTimeOutput> run(
    _i2.RestoreTableToPointInTimeInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i17.runZoned(
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
