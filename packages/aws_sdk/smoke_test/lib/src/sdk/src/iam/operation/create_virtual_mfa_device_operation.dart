// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.create_virtual_mfa_device_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/concurrent_modification_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/create_virtual_mfa_device_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/entity_already_exists_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i13;

/// Creates a new virtual MFA device for the Amazon Web Services account. After creating the virtual MFA, use EnableMFADevice to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, see [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the _IAM User Guide_.
///
/// For information about the maximum number of MFA devices you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
///
/// The seed information contained in the QR code and the Base32 string should be treated like any other secret access information. In other words, protect the seed information as you would your Amazon Web Services access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.
class CreateVirtualMfaDeviceOperation extends _i1.HttpOperation<
    _i2.CreateVirtualMfaDeviceRequest,
    _i2.CreateVirtualMfaDeviceRequest,
    _i3.CreateVirtualMfaDeviceResponse,
    _i3.CreateVirtualMfaDeviceResponse> {
  /// Creates a new virtual MFA device for the Amazon Web Services account. After creating the virtual MFA, use EnableMFADevice to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, see [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the _IAM User Guide_.
  ///
  /// For information about the maximum number of MFA devices you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  ///
  /// The seed information contained in the QR code and the Base32 string should be treated like any other secret access information. In other words, protect the seed information as you would your Amazon Web Services access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.
  CreateVirtualMfaDeviceOperation({
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
          _i2.CreateVirtualMfaDeviceRequest,
          _i2.CreateVirtualMfaDeviceRequest,
          _i3.CreateVirtualMfaDeviceResponse,
          _i3.CreateVirtualMfaDeviceResponse>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'CreateVirtualMFADevice',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'ConcurrentModificationException',
          code: 'ConcurrentModification',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'EntityAlreadyExistsException',
          code: 'EntityAlreadyExists',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'InvalidInputException',
          code: 'InvalidInput',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceeded',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
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
  _i1.HttpRequest buildRequest(_i2.CreateVirtualMfaDeviceRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.CreateVirtualMfaDeviceResponse? output]) => 200;
  @override
  _i3.CreateVirtualMfaDeviceResponse buildOutput(
    _i3.CreateVirtualMfaDeviceResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateVirtualMfaDeviceResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.ConcurrentModificationException,
            _i9.ConcurrentModificationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ConcurrentModificationException',
          ),
          _i1.ErrorKind.client,
          _i9.ConcurrentModificationException,
          statusCode: 409,
          builder: _i9.ConcurrentModificationException.fromResponse,
        ),
        _i1.SmithyError<_i10.EntityAlreadyExistsException,
            _i10.EntityAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'EntityAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i10.EntityAlreadyExistsException,
          statusCode: 409,
          builder: _i10.EntityAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError<_i11.InvalidInputException, _i11.InvalidInputException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidInputException,
          statusCode: 400,
          builder: _i11.InvalidInputException.fromResponse,
        ),
        _i1.SmithyError<_i12.LimitExceededException,
            _i12.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i12.LimitExceededException,
          statusCode: 409,
          builder: _i12.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<_i13.ServiceFailureException,
            _i13.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i13.ServiceFailureException,
          statusCode: 500,
          builder: _i13.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateVirtualMFADevice';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.CreateVirtualMfaDeviceResponse> run(
    _i2.CreateVirtualMfaDeviceRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
