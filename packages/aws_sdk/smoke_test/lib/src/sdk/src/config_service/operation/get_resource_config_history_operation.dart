// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.get_resource_config_history_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_item.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_config_history_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_time_range_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_discovered_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart';

/// Returns a list of `ConfigurationItems` for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years (2557 days), Config returns the `ConfigurationItems` for the specified retention period.
///
/// The response is paginated. By default, Config returns a limit of 10 configuration items per page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
///
/// Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified `limit`. In such cases, you can make another call, using the `nextToken`.
class GetResourceConfigHistoryOperation extends _i1.PaginatedHttpOperation<
    GetResourceConfigHistoryRequest,
    GetResourceConfigHistoryRequest,
    GetResourceConfigHistoryResponse,
    GetResourceConfigHistoryResponse,
    String,
    int,
    _i2.BuiltList<ConfigurationItem>> {
  /// Returns a list of `ConfigurationItems` for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years (2557 days), Config returns the `ConfigurationItems` for the specified retention period.
  ///
  /// The response is paginated. By default, Config returns a limit of 10 configuration items per page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
  ///
  /// Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified `limit`. In such cases, you can make another call, using the `nextToken`.
  GetResourceConfigHistoryOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
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
          GetResourceConfigHistoryRequest,
          GetResourceConfigHistoryRequest,
          GetResourceConfigHistoryResponse,
          GetResourceConfigHistoryResponse>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.GetResourceConfigHistory',
            ),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(GetResourceConfigHistoryRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([GetResourceConfigHistoryResponse? output]) => 200;
  @override
  GetResourceConfigHistoryResponse buildOutput(
    GetResourceConfigHistoryResponse payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      GetResourceConfigHistoryResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidLimitException, InvalidLimitException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          InvalidLimitException,
          builder: InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError<InvalidNextTokenException, InvalidNextTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          InvalidNextTokenException,
          builder: InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError<InvalidTimeRangeException, InvalidTimeRangeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidTimeRangeException',
          ),
          _i1.ErrorKind.client,
          InvalidTimeRangeException,
          builder: InvalidTimeRangeException.fromResponse,
        ),
        _i1.SmithyError<NoAvailableConfigurationRecorderException,
            NoAvailableConfigurationRecorderException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          NoAvailableConfigurationRecorderException,
          builder: NoAvailableConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotDiscoveredException,
            ResourceNotDiscoveredException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceNotDiscoveredException',
          ),
          _i1.ErrorKind.client,
          ResourceNotDiscoveredException,
          builder: ResourceNotDiscoveredException.fromResponse,
        ),
        _i1.SmithyError<ValidationException, ValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          ValidationException,
          builder: ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetResourceConfigHistory';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<GetResourceConfigHistoryResponse> run(
    GetResourceConfigHistoryRequest input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(GetResourceConfigHistoryResponse output) => output.nextToken;
  @override
  _i2.BuiltList<ConfigurationItem> getItems(
          GetResourceConfigHistoryResponse output) =>
      output.configurationItems ?? _i2.BuiltList();
  @override
  GetResourceConfigHistoryRequest rebuildInput(
    GetResourceConfigHistoryRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.limit = pageSize;
      });
}
