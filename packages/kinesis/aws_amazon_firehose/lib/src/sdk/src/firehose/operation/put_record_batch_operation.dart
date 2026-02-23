// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_amazon_firehose.firehose.operation.put_record_batch_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_amazon_firehose/src/sdk/src/firehose/common/endpoint_resolver.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/common/serializers.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/invalid_argument_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/invalid_kms_resource_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/invalid_source_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_input.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_output.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/resource_not_found_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/service_unavailable_exception.dart';
import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Writes multiple data records into a Firehose stream in a single call, which can achieve higher throughput per producer than when writing single records. To write single data records into a Firehose stream, use PutRecord. Applications using these operations are referred to as producers.
///
/// Firehose accumulates and publishes a particular metric for a customer account in one minute intervals. It is possible that the bursts of incoming bytes/records ingested to a Firehose stream last only for a few seconds. Due to this, the actual spikes in the traffic might not be fully visible in the customer's 1 minute CloudWatch metrics.
///
/// For information about service quota, see [Amazon Firehose Quota](https://docs.aws.amazon.com/firehose/latest/dev/limits.html).
///
/// Each PutRecordBatch request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before base64 encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed.
///
/// You must specify the name of the Firehose stream and the data record when using PutRecord. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it could be a segment from a log file, geographic location data, website clickstream data, and so on.
///
/// For multi record de-aggregation, you can not put more than 500 records even if the data blob length is less than 1000 KiB. If you include more than 500 records, the request succeeds but the record de-aggregation doesn't work as expected and transformation lambda is invoked with the complete base64 encoded data blob instead of de-aggregated base64 decoded records.
///
/// Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\\n`) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.
///
/// The PutRecordBatch response includes a count of failed records, `FailedPutCount`, and an array of responses, `RequestResponses`. Even if the PutRecordBatch call succeeds, the value of `FailedPutCount` may be greater than 0, indicating that there are records for which the operation didn't succeed. Each entry in the `RequestResponses` array provides additional information about the processed record. It directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. `RequestResponses` includes both successfully and unsuccessfully processed records. Firehose tries to process all records in each PutRecordBatch request. A single record failure does not stop the processing of subsequent records.
///
/// A successfully processed record includes a `RecordId` value, which is unique for the record. An unsuccessfully processed record includes `ErrorCode` and `ErrorMessage` values. `ErrorCode` reflects the type of error, and is one of the following values: `ServiceUnavailableException` or `InternalFailure`. `ErrorMessage` provides more detailed information about the error.
///
/// If there is an internal server error or a timeout, the write might have completed or it might have failed. If `FailedPutCount` is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination.
///
/// If PutRecordBatch throws `ServiceUnavailableException`, the API is automatically reinvoked (retried) 3 times. If the exception persists, it is possible that the throughput limits have been exceeded for the Firehose stream.
///
/// Re-invoking the Put API operations (for example, PutRecord and PutRecordBatch) can result in data duplicates. For larger data assets, allow for a longer time out before retrying Put API operations.
///
/// Data records sent to Firehose are stored for 24 hours from the time they are added to a Firehose stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.
///
/// Don't concatenate two or more base64 strings to form the data fields of your records. Instead, concatenate the raw data, then perform base64 encoding.
class PutRecordBatchOperation
    extends
        _i1.HttpOperation<
          PutRecordBatchInput,
          PutRecordBatchInput,
          PutRecordBatchOutput,
          PutRecordBatchOutput
        > {
  /// Writes multiple data records into a Firehose stream in a single call, which can achieve higher throughput per producer than when writing single records. To write single data records into a Firehose stream, use PutRecord. Applications using these operations are referred to as producers.
  ///
  /// Firehose accumulates and publishes a particular metric for a customer account in one minute intervals. It is possible that the bursts of incoming bytes/records ingested to a Firehose stream last only for a few seconds. Due to this, the actual spikes in the traffic might not be fully visible in the customer's 1 minute CloudWatch metrics.
  ///
  /// For information about service quota, see [Amazon Firehose Quota](https://docs.aws.amazon.com/firehose/latest/dev/limits.html).
  ///
  /// Each PutRecordBatch request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before base64 encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed.
  ///
  /// You must specify the name of the Firehose stream and the data record when using PutRecord. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it could be a segment from a log file, geographic location data, website clickstream data, and so on.
  ///
  /// For multi record de-aggregation, you can not put more than 500 records even if the data blob length is less than 1000 KiB. If you include more than 500 records, the request succeeds but the record de-aggregation doesn't work as expected and transformation lambda is invoked with the complete base64 encoded data blob instead of de-aggregated base64 decoded records.
  ///
  /// Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\\n`) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.
  ///
  /// The PutRecordBatch response includes a count of failed records, `FailedPutCount`, and an array of responses, `RequestResponses`. Even if the PutRecordBatch call succeeds, the value of `FailedPutCount` may be greater than 0, indicating that there are records for which the operation didn't succeed. Each entry in the `RequestResponses` array provides additional information about the processed record. It directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. `RequestResponses` includes both successfully and unsuccessfully processed records. Firehose tries to process all records in each PutRecordBatch request. A single record failure does not stop the processing of subsequent records.
  ///
  /// A successfully processed record includes a `RecordId` value, which is unique for the record. An unsuccessfully processed record includes `ErrorCode` and `ErrorMessage` values. `ErrorCode` reflects the type of error, and is one of the following values: `ServiceUnavailableException` or `InternalFailure`. `ErrorMessage` provides more detailed information about the error.
  ///
  /// If there is an internal server error or a timeout, the write might have completed or it might have failed. If `FailedPutCount` is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination.
  ///
  /// If PutRecordBatch throws `ServiceUnavailableException`, the API is automatically reinvoked (retried) 3 times. If the exception persists, it is possible that the throughput limits have been exceeded for the Firehose stream.
  ///
  /// Re-invoking the Put API operations (for example, PutRecord and PutRecordBatch) can result in data duplicates. For larger data assets, allow for a longer time out before retrying Put API operations.
  ///
  /// Data records sent to Firehose are stored for 24 hours from the time they are added to a Firehose stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.
  ///
  /// Don't concatenate two or more base64 strings to form the data fields of your records. Instead, concatenate the raw data, then perform base64 encoding.
  PutRecordBatchOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  }) : _region = region,
       _baseUri = baseUri,
       _credentialsProvider = credentialsProvider,
       _requestInterceptors = requestInterceptors,
       _responseInterceptors = responseInterceptors;

  @override
  late final List<
    _i1.HttpProtocol<
      PutRecordBatchInput,
      PutRecordBatchInput,
      PutRecordBatchOutput,
      PutRecordBatchOutput
    >
  >
  protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors:
          <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'Firehose_20150804.PutRecordBatch',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.firehose,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.2'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    ),
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
  _i1.HttpRequest buildRequest(PutRecordBatchInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });

  @override
  int successCode([PutRecordBatchOutput? output]) => 200;

  @override
  PutRecordBatchOutput buildOutput(
    PutRecordBatchOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) => PutRecordBatchOutput.fromResponse(payload, response);

  @override
  List<_i1.SmithyError> get errorTypes => const [
    _i1.SmithyError<InvalidArgumentException, InvalidArgumentException>(
      _i1.ShapeId(
        namespace: 'com.amazonaws.firehose',
        shape: 'InvalidArgumentException',
      ),
      _i1.ErrorKind.client,
      InvalidArgumentException,
      builder: InvalidArgumentException.fromResponse,
    ),
    _i1.SmithyError<InvalidKmsResourceException, InvalidKmsResourceException>(
      _i1.ShapeId(
        namespace: 'com.amazonaws.firehose',
        shape: 'InvalidKMSResourceException',
      ),
      _i1.ErrorKind.client,
      InvalidKmsResourceException,
      builder: InvalidKmsResourceException.fromResponse,
    ),
    _i1.SmithyError<InvalidSourceException, InvalidSourceException>(
      _i1.ShapeId(
        namespace: 'com.amazonaws.firehose',
        shape: 'InvalidSourceException',
      ),
      _i1.ErrorKind.client,
      InvalidSourceException,
      builder: InvalidSourceException.fromResponse,
    ),
    _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
      _i1.ShapeId(
        namespace: 'com.amazonaws.firehose',
        shape: 'ResourceNotFoundException',
      ),
      _i1.ErrorKind.client,
      ResourceNotFoundException,
      builder: ResourceNotFoundException.fromResponse,
    ),
    _i1.SmithyError<ServiceUnavailableException, ServiceUnavailableException>(
      _i1.ShapeId(
        namespace: 'com.amazonaws.firehose',
        shape: 'ServiceUnavailableException',
      ),
      _i1.ErrorKind.server,
      ServiceUnavailableException,
      statusCode: 503,
      builder: ServiceUnavailableException.fromResponse,
    ),
  ];

  @override
  String get runtimeTypeName => 'PutRecordBatch';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<PutRecordBatchOutput> run(
    PutRecordBatchInput input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(input, client: client, useProtocol: useProtocol),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
