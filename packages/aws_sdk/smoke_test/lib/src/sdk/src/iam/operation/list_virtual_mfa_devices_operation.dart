// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.operation.list_virtual_mfa_devices_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/list_virtual_mfa_devices_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_virtual_mfa_devices_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/virtual_mfa_device.dart'
    as _i5;

/// Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be `Assigned`, `Unassigned`, or `Any`.
///
/// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view tag information for a virtual MFA device, see ListMFADeviceTags.
///
/// You can paginate the results using the `MaxItems` and `Marker` parameters.
class ListVirtualMfaDevicesOperation extends _i1.PaginatedHttpOperation<
    _i2.ListVirtualMfaDevicesRequest,
    _i2.ListVirtualMfaDevicesRequest,
    _i3.ListVirtualMfaDevicesResponse,
    _i3.ListVirtualMfaDevicesResponse,
    String,
    int,
    _i4.BuiltList<_i5.VirtualMfaDevice>> {
  /// Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be `Assigned`, `Unassigned`, or `Any`.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view tag information for a virtual MFA device, see ListMFADeviceTags.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  ListVirtualMfaDevicesOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
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
          _i2.ListVirtualMfaDevicesRequest,
          _i2.ListVirtualMfaDevicesRequest,
          _i3.ListVirtualMfaDevicesResponse,
          _i3.ListVirtualMfaDevicesResponse>> protocols = [
    _i7.AwsQueryProtocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListVirtualMFADevices',
      version: '2010-05-08',
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListVirtualMfaDevicesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListVirtualMfaDevicesResponse? output]) => 200;
  @override
  _i3.ListVirtualMfaDevicesResponse buildOutput(
    _i3.ListVirtualMfaDevicesResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.ListVirtualMfaDevicesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ListVirtualMFADevices';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListVirtualMfaDevicesResponse> run(
    _i2.ListVirtualMfaDevicesRequest input, {
    _i9.AWSHttpClient? client,
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
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.ListVirtualMfaDevicesResponse output) => output.marker;
  @override
  _i4.BuiltList<_i5.VirtualMfaDevice> getItems(
          _i3.ListVirtualMfaDevicesResponse output) =>
      output.virtualMfaDevices;
  @override
  _i2.ListVirtualMfaDevicesRequest rebuildInput(
    _i2.ListVirtualMfaDevicesRequest input,
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
