// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.get_resource_config_history_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i17;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_time_range_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_discovered_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i16;

/// Returns a list of `ConfigurationItems` for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years (2557 days), Config returns the `ConfigurationItems` for the specified retention period.
///
/// The response is paginated. By default, Config returns a limit of 10 configuration items per page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
///
/// Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified `limit`. In such cases, you can make another call, using the `nextToken`.
class GetResourceConfigHistoryOperation extends _i1.PaginatedHttpOperation<
    _i2.GetResourceConfigHistoryRequest,
    _i2.GetResourceConfigHistoryRequest,
    _i3.GetResourceConfigHistoryResponse,
    _i3.GetResourceConfigHistoryResponse,
    String,
    int,
    _i4.BuiltList<_i5.ConfigurationItem>> {
  /// Returns a list of `ConfigurationItems` for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years (2557 days), Config returns the `ConfigurationItems` for the specified retention period.
  ///
  /// The response is paginated. By default, Config returns a limit of 10 configuration items per page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
  ///
  /// Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified `limit`. In such cases, you can make another call, using the `nextToken`.
  GetResourceConfigHistoryOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GetResourceConfigHistoryRequest,
          _i2.GetResourceConfigHistoryRequest,
          _i3.GetResourceConfigHistoryResponse,
          _i3.GetResourceConfigHistoryResponse>> protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.GetResourceConfigHistory',
        ),
        _i7.WithSigV4(
          region: _region,
          service: _i9.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i7.WithSdkInvocationId(),
        const _i7.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetResourceConfigHistoryRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetResourceConfigHistoryResponse? output]) => 200;
  @override
  _i3.GetResourceConfigHistoryResponse buildOutput(
    _i3.GetResourceConfigHistoryResponse payload,
    _i9.AWSStreamedHttpResponse response,
  ) =>
      _i3.GetResourceConfigHistoryResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidLimitException,
          builder: _i11.InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidNextTokenException,
          builder: _i12.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidTimeRangeException',
          ),
          _i1.ErrorKind.client,
          _i13.InvalidTimeRangeException,
          builder: _i13.InvalidTimeRangeException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          _i14.NoAvailableConfigurationRecorderException,
          builder: _i14.NoAvailableConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceNotDiscoveredException',
          ),
          _i1.ErrorKind.client,
          _i15.ResourceNotDiscoveredException,
          builder: _i15.ResourceNotDiscoveredException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i16.ValidationException,
          builder: _i16.ValidationException.fromResponse,
        ),
      ];
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i17.Future<_i3.GetResourceConfigHistoryResponse> run(
    _i2.GetResourceConfigHistoryRequest input, {
    _i1.HttpClient? client,
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
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.GetResourceConfigHistoryResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.ConfigurationItem> getItems(
          _i3.GetResourceConfigHistoryResponse output) =>
      output.configurationItems ?? _i4.BuiltList();
  @override
  _i2.GetResourceConfigHistoryRequest rebuildInput(
    _i2.GetResourceConfigHistoryRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        if (pageSize != null) {
          b.limit = pageSize;
        }
      });
}
