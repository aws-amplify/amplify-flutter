// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.operation.list_stored_queries_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/list_stored_queries_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i10;

/// Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region. The default is 100.
class ListStoredQueriesOperation extends _i1.PaginatedHttpOperation<
    _i2.ListStoredQueriesRequest,
    _i2.ListStoredQueriesRequest,
    _i3.ListStoredQueriesResponse,
    _i3.ListStoredQueriesResponse,
    String,
    int,
    _i3.ListStoredQueriesResponse> {
  /// Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region. The default is 100.
  ListStoredQueriesOperation({
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
          _i2.ListStoredQueriesRequest,
          _i2.ListStoredQueriesRequest,
          _i3.ListStoredQueriesResponse,
          _i3.ListStoredQueriesResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.ListStoredQueries',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
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
  _i1.HttpRequest buildRequest(_i2.ListStoredQueriesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListStoredQueriesResponse? output]) => 200;
  @override
  _i3.ListStoredQueriesResponse buildOutput(
    _i3.ListStoredQueriesResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ListStoredQueriesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidNextTokenException,
          builder: _i9.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i10.ValidationException,
          builder: _i10.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ListStoredQueries';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListStoredQueriesResponse> run(
    _i2.ListStoredQueriesRequest input, {
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

  @override
  String? getToken(_i3.ListStoredQueriesResponse output) => output.nextToken;
  @override
  _i3.ListStoredQueriesResponse getItems(
          _i3.ListStoredQueriesResponse output) =>
      output;
  @override
  _i2.ListStoredQueriesRequest rebuildInput(
    _i2.ListStoredQueriesRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        if (pageSize != null) {
          b.maxResults = pageSize;
        }
      });
}
