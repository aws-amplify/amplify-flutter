// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.describe_limits_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_limits_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i10;

/// Returns the current provisioned-capacity quotas for your Amazon Web Services account in a Region, both for the Region as a whole and for any one DynamoDB table that you create there.
///
/// When you establish an Amazon Web Services account, the account has initial quotas on the maximum read capacity units and write capacity units that you can provision across all of your DynamoDB tables in a given Region. Also, there are per-table quotas that apply when you create a table there. For more information, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) page in the _Amazon DynamoDB Developer Guide_.
///
/// Although you can increase these quotas by filing a case at [Amazon Web Services Support Center](https://console.aws.amazon.com/support/home#/), obtaining the increase is not instantaneous. The `DescribeLimits` action lets you write code to compare the capacity you are currently using to those quotas imposed by your account so that you have enough time to apply for an increase before you hit a quota.
///
/// For example, you could use one of the Amazon Web Services SDKs to do the following:
///
/// 1.  Call `DescribeLimits` for a particular Region to obtain your current account quotas on provisioned capacity there.
///
/// 2.  Create a variable to hold the aggregate read capacity units provisioned for all your tables in that Region, and one to hold the aggregate write capacity units. Zero them both.
///
/// 3.  Call `ListTables` to obtain a list of all your DynamoDB tables.
///
/// 4.  For each table name listed by `ListTables`, do the following:
///
///     *   Call `DescribeTable` with the table name.
///
///     *   Use the data returned by `DescribeTable` to add the read capacity units and write capacity units provisioned for the table itself to your variables.
///
///     *   If the table has one or more global secondary indexes (GSIs), loop over these GSIs and add their provisioned capacity values to your variables as well.
///
/// 5.  Report the account quotas for that Region returned by `DescribeLimits`, along with the total current provisioned capacity levels you have calculated.
///
///
/// This will let you see whether you are getting close to your account-level quotas.
///
/// The per-table quotas apply only when you are creating a new table. They restrict the sum of the provisioned capacity of the new table itself and all its global secondary indexes.
///
/// For existing tables and their GSIs, DynamoDB doesn't let you increase provisioned capacity extremely rapidly, but the only quota that applies is that the aggregate provisioned capacity over all your tables and GSIs cannot exceed either of the per-account quotas.
///
/// `DescribeLimits` should only be called periodically. You can expect throttling errors if you call it more than once in a minute.
///
/// The `DescribeLimits` Request element has no content.
class DescribeLimitsOperation extends _i1.HttpOperation<
    _i2.DescribeLimitsInput,
    _i2.DescribeLimitsInput,
    _i3.DescribeLimitsOutput,
    _i3.DescribeLimitsOutput> {
  /// Returns the current provisioned-capacity quotas for your Amazon Web Services account in a Region, both for the Region as a whole and for any one DynamoDB table that you create there.
  ///
  /// When you establish an Amazon Web Services account, the account has initial quotas on the maximum read capacity units and write capacity units that you can provision across all of your DynamoDB tables in a given Region. Also, there are per-table quotas that apply when you create a table there. For more information, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) page in the _Amazon DynamoDB Developer Guide_.
  ///
  /// Although you can increase these quotas by filing a case at [Amazon Web Services Support Center](https://console.aws.amazon.com/support/home#/), obtaining the increase is not instantaneous. The `DescribeLimits` action lets you write code to compare the capacity you are currently using to those quotas imposed by your account so that you have enough time to apply for an increase before you hit a quota.
  ///
  /// For example, you could use one of the Amazon Web Services SDKs to do the following:
  ///
  /// 1.  Call `DescribeLimits` for a particular Region to obtain your current account quotas on provisioned capacity there.
  ///
  /// 2.  Create a variable to hold the aggregate read capacity units provisioned for all your tables in that Region, and one to hold the aggregate write capacity units. Zero them both.
  ///
  /// 3.  Call `ListTables` to obtain a list of all your DynamoDB tables.
  ///
  /// 4.  For each table name listed by `ListTables`, do the following:
  ///
  ///     *   Call `DescribeTable` with the table name.
  ///
  ///     *   Use the data returned by `DescribeTable` to add the read capacity units and write capacity units provisioned for the table itself to your variables.
  ///
  ///     *   If the table has one or more global secondary indexes (GSIs), loop over these GSIs and add their provisioned capacity values to your variables as well.
  ///
  /// 5.  Report the account quotas for that Region returned by `DescribeLimits`, along with the total current provisioned capacity levels you have calculated.
  ///
  ///
  /// This will let you see whether you are getting close to your account-level quotas.
  ///
  /// The per-table quotas apply only when you are creating a new table. They restrict the sum of the provisioned capacity of the new table itself and all its global secondary indexes.
  ///
  /// For existing tables and their GSIs, DynamoDB doesn't let you increase provisioned capacity extremely rapidly, but the only quota that applies is that the aggregate provisioned capacity over all your tables and GSIs cannot exceed either of the per-account quotas.
  ///
  /// `DescribeLimits` should only be called periodically. You can expect throttling errors if you call it more than once in a minute.
  ///
  /// The `DescribeLimits` Request element has no content.
  DescribeLimitsOperation({
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
      _i1.HttpProtocol<_i2.DescribeLimitsInput, _i2.DescribeLimitsInput,
          _i3.DescribeLimitsOutput, _i3.DescribeLimitsOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.DescribeLimits',
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
  _i1.HttpRequest buildRequest(_i2.DescribeLimitsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeLimitsOutput? output]) => 200;
  @override
  _i3.DescribeLimitsOutput buildOutput(
    _i3.DescribeLimitsOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeLimitsOutput.fromResponse(
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
      ];
  @override
  String get runtimeTypeName => 'DescribeLimits';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeLimitsOutput> run(
    _i2.DescribeLimitsInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
