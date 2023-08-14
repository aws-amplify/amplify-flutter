// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.get_instance_uefi_data_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_result.dart';

/// A binary representation of the UEFI variable store. Only non-volatile variables are stored. This is a base64 encoded and zlib compressed binary value that must be properly encoded.
///
/// When you use [register-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html) to create an AMI, you can create an exact copy of your variable store by passing the UEFI data in the `UefiData` parameter. You can modify the UEFI data by using the [python-uefivars tool](https://github.com/awslabs/python-uefivars) on GitHub. You can use the tool to convert the UEFI data into a human-readable format (JSON), which you can inspect and modify, and then convert back into the binary format to use with register-image.
///
/// For more information, see [UEFI Secure Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html) in the _Amazon EC2 User Guide_.
class GetInstanceUefiDataOperation extends _i1.HttpOperation<
    GetInstanceUefiDataRequest,
    GetInstanceUefiDataRequest,
    GetInstanceUefiDataResult,
    GetInstanceUefiDataResult> {
  /// A binary representation of the UEFI variable store. Only non-volatile variables are stored. This is a base64 encoded and zlib compressed binary value that must be properly encoded.
  ///
  /// When you use [register-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html) to create an AMI, you can create an exact copy of your variable store by passing the UEFI data in the `UefiData` parameter. You can modify the UEFI data by using the [python-uefivars tool](https://github.com/awslabs/python-uefivars) on GitHub. You can use the tool to convert the UEFI data into a human-readable format (JSON), which you can inspect and modify, and then convert back into the binary format to use with register-image.
  ///
  /// For more information, see [UEFI Secure Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html) in the _Amazon EC2 User Guide_.
  GetInstanceUefiDataOperation({
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
      _i1.HttpProtocol<GetInstanceUefiDataRequest, GetInstanceUefiDataRequest,
          GetInstanceUefiDataResult, GetInstanceUefiDataResult>> protocols = [
    _i3.Ec2QueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GetInstanceUefiData',
      version: '2016-11-15',
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
  _i1.HttpRequest buildRequest(GetInstanceUefiDataRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([GetInstanceUefiDataResult? output]) => 200;
  @override
  GetInstanceUefiDataResult buildOutput(
    GetInstanceUefiDataResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetInstanceUefiDataResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetInstanceUefiData';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<GetInstanceUefiDataResult> run(
    GetInstanceUefiDataRequest input, {
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
