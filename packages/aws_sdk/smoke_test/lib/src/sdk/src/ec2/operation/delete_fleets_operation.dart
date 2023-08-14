// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.delete_fleets_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_result.dart';

/// Deletes the specified EC2 Fleets.
///
/// After you delete an EC2 Fleet, it launches no new instances.
///
/// You must also specify whether a deleted EC2 Fleet should terminate its instances. If you choose to terminate the instances, the EC2 Fleet enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the instances continue to run until they are interrupted or you terminate them manually.
///
/// For `instant` fleets, EC2 Fleet must terminate the instances when the fleet is deleted. A deleted `instant` fleet with running instances is not supported.
///
/// **Restrictions**
///
/// *   You can delete up to 25 `instant` fleets in a single request. If you exceed this number, no `instant` fleets are deleted and an error is returned. There is no restriction on the number of fleets of type `maintain` or `request` that can be deleted in a single request.
///
/// *   Up to 1000 instances can be terminated in a single request to delete `instant` fleets.
///
///
/// For more information, see [Delete an EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet) in the _Amazon EC2 User Guide_.
class DeleteFleetsOperation extends _i1.HttpOperation<DeleteFleetsRequest,
    DeleteFleetsRequest, DeleteFleetsResult, DeleteFleetsResult> {
  /// Deletes the specified EC2 Fleets.
  ///
  /// After you delete an EC2 Fleet, it launches no new instances.
  ///
  /// You must also specify whether a deleted EC2 Fleet should terminate its instances. If you choose to terminate the instances, the EC2 Fleet enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the instances continue to run until they are interrupted or you terminate them manually.
  ///
  /// For `instant` fleets, EC2 Fleet must terminate the instances when the fleet is deleted. A deleted `instant` fleet with running instances is not supported.
  ///
  /// **Restrictions**
  ///
  /// *   You can delete up to 25 `instant` fleets in a single request. If you exceed this number, no `instant` fleets are deleted and an error is returned. There is no restriction on the number of fleets of type `maintain` or `request` that can be deleted in a single request.
  ///
  /// *   Up to 1000 instances can be terminated in a single request to delete `instant` fleets.
  ///
  ///
  /// For more information, see [Delete an EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet) in the _Amazon EC2 User Guide_.
  DeleteFleetsOperation({
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
      _i1.HttpProtocol<DeleteFleetsRequest, DeleteFleetsRequest,
          DeleteFleetsResult, DeleteFleetsResult>> protocols = [
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
      action: 'DeleteFleets',
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
  _i1.HttpRequest buildRequest(DeleteFleetsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DeleteFleetsResult? output]) => 200;
  @override
  DeleteFleetsResult buildOutput(
    DeleteFleetsResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      DeleteFleetsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DeleteFleets';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DeleteFleetsResult> run(
    DeleteFleetsRequest input, {
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
