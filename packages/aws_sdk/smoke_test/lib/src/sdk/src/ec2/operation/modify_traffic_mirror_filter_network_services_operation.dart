// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.modify_traffic_mirror_filter_network_services_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_network_services_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_network_services_result.dart';

/// Allows or restricts mirroring network services.
///
/// By default, Amazon DNS network services are not eligible for Traffic Mirror. Use `AddNetworkServices` to add network services to a Traffic Mirror filter. When a network service is added to the Traffic Mirror filter, all traffic related to that network service will be mirrored. When you no longer want to mirror network services, use `RemoveNetworkServices` to remove the network services from the Traffic Mirror filter.
class ModifyTrafficMirrorFilterNetworkServicesOperation extends _i1
    .HttpOperation<
        ModifyTrafficMirrorFilterNetworkServicesRequest,
        ModifyTrafficMirrorFilterNetworkServicesRequest,
        ModifyTrafficMirrorFilterNetworkServicesResult,
        ModifyTrafficMirrorFilterNetworkServicesResult> {
  /// Allows or restricts mirroring network services.
  ///
  /// By default, Amazon DNS network services are not eligible for Traffic Mirror. Use `AddNetworkServices` to add network services to a Traffic Mirror filter. When a network service is added to the Traffic Mirror filter, all traffic related to that network service will be mirrored. When you no longer want to mirror network services, use `RemoveNetworkServices` to remove the network services from the Traffic Mirror filter.
  ModifyTrafficMirrorFilterNetworkServicesOperation({
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
      _i1.HttpProtocol<
          ModifyTrafficMirrorFilterNetworkServicesRequest,
          ModifyTrafficMirrorFilterNetworkServicesRequest,
          ModifyTrafficMirrorFilterNetworkServicesResult,
          ModifyTrafficMirrorFilterNetworkServicesResult>> protocols = [
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
      action: 'ModifyTrafficMirrorFilterNetworkServices',
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
  _i1.HttpRequest buildRequest(
          ModifyTrafficMirrorFilterNetworkServicesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ModifyTrafficMirrorFilterNetworkServicesResult? output]) =>
      200;
  @override
  ModifyTrafficMirrorFilterNetworkServicesResult buildOutput(
    ModifyTrafficMirrorFilterNetworkServicesResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ModifyTrafficMirrorFilterNetworkServicesResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ModifyTrafficMirrorFilterNetworkServices';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ModifyTrafficMirrorFilterNetworkServicesResult> run(
    ModifyTrafficMirrorFilterNetworkServicesRequest input, {
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
