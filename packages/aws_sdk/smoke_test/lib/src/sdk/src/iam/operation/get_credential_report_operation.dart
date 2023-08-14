// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.operation.get_credential_report_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_expired_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_not_present_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/credential_report_not_ready_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/get_credential_report_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart';

/// Retrieves a credential report for the Amazon Web Services account. For more information about the credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the _IAM User Guide_.
class GetCredentialReportOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    GetCredentialReportResponse, GetCredentialReportResponse> {
  /// Retrieves a credential report for the Amazon Web Services account. For more information about the credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the _IAM User Guide_.
  GetCredentialReportOperation({
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
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, GetCredentialReportResponse,
          GetCredentialReportResponse>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GetCredentialReport',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'CredentialReportExpiredException',
          code: 'ReportExpired',
          httpResponseCode: 410,
        ),
        _i3.AwsQueryError(
          shape: 'CredentialReportNotPresentException',
          code: 'ReportNotPresent',
          httpResponseCode: 410,
        ),
        _i3.AwsQueryError(
          shape: 'CredentialReportNotReadyException',
          code: 'ReportInProgress',
          httpResponseCode: 404,
        ),
        _i3.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
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
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([GetCredentialReportResponse? output]) => 200;
  @override
  GetCredentialReportResponse buildOutput(
    GetCredentialReportResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetCredentialReportResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<CredentialReportExpiredException,
            CredentialReportExpiredException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'CredentialReportExpiredException',
          ),
          _i1.ErrorKind.client,
          CredentialReportExpiredException,
          statusCode: 410,
          builder: CredentialReportExpiredException.fromResponse,
        ),
        _i1.SmithyError<CredentialReportNotPresentException,
            CredentialReportNotPresentException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'CredentialReportNotPresentException',
          ),
          _i1.ErrorKind.client,
          CredentialReportNotPresentException,
          statusCode: 410,
          builder: CredentialReportNotPresentException.fromResponse,
        ),
        _i1.SmithyError<CredentialReportNotReadyException,
            CredentialReportNotReadyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'CredentialReportNotReadyException',
          ),
          _i1.ErrorKind.client,
          CredentialReportNotReadyException,
          statusCode: 404,
          builder: CredentialReportNotReadyException.fromResponse,
        ),
        _i1.SmithyError<ServiceFailureException, ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          ServiceFailureException,
          statusCode: 500,
          builder: ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetCredentialReport';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<GetCredentialReportResponse> run(
    _i1.Unit input, {
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
