// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.list_account_aliases_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/model/list_account_aliases_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_account_aliases_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i10;

/// Lists the account alias associated with the Amazon Web Services account (Note: you can have only one). For information about using an Amazon Web Services account alias, see [Creating, deleting, and listing an Amazon Web Services account alias](https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html) in the _Amazon Web Services Sign-In User Guide_.
class ListAccountAliasesOperation extends _i1.PaginatedHttpOperation<
    _i2.ListAccountAliasesRequest,
    _i2.ListAccountAliasesRequest,
    _i3.ListAccountAliasesResponse,
    _i3.ListAccountAliasesResponse,
    String,
    int,
    _i4.BuiltList<String>> {
  /// Lists the account alias associated with the Amazon Web Services account (Note: you can have only one). For information about using an Amazon Web Services account alias, see [Creating, deleting, and listing an Amazon Web Services account alias](https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html) in the _Amazon Web Services Sign-In User Guide_.
  ListAccountAliasesOperation({
    required String region,
    Uri? baseUri,
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
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
          _i2.ListAccountAliasesRequest,
          _i2.ListAccountAliasesRequest,
          _i3.ListAccountAliasesResponse,
          _i3.ListAccountAliasesResponse>> protocols = [
    _i6.AwsQueryProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i6.WithSdkInvocationId(),
            const _i6.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListAccountAliases',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i6.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        )
      ],
    )
  ];

  late final _i6.AWSEndpoint _awsEndpoint = _i9.endpointResolver.resolve(
    _i9.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListAccountAliasesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListAccountAliasesResponse? output]) => 200;
  @override
  _i3.ListAccountAliasesResponse buildOutput(
    _i3.ListAccountAliasesResponse payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i3.ListAccountAliasesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i10.ServiceFailureException,
            _i10.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i10.ServiceFailureException,
          statusCode: 500,
          builder: _i10.ServiceFailureException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListAccountAliases';
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListAccountAliasesResponse> run(
    _i2.ListAccountAliasesRequest input, {
    _i8.AWSHttpClient? client,
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
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.ListAccountAliasesResponse output) => output.marker;
  @override
  _i4.BuiltList<String> getItems(_i3.ListAccountAliasesResponse output) =>
      output.accountAliases;
  @override
  _i2.ListAccountAliasesRequest rebuildInput(
    _i2.ListAccountAliasesRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.marker = token;
        if (pageSize != null) {
          b.maxItems = pageSize;
        }
      });
}
